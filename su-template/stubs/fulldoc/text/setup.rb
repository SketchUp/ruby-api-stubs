require 'fileutils'
require 'pathname'
require 'set'
require 'stringio'

include Helpers::ModuleHelper

def init
  generate_stubs
end


# NOTE: Remember to run objects outputted through `run_verifier` first in order
# to filter out items that should be excluded by command line arguments.

def namespace_objects
  run_verifier(Registry.all(:class, :module))
end


def generate_autoload
  generate_sketchup_autoload
end

def generate_sketchup_autoload
  base = Pathname.new(autoload_stubs_path)
  autoload_file = File.join(autoload_stubs_path, 'sketchup.rb')
  File.open(autoload_file, 'w') { |file|
    pattern = File.join(sketchup_stubs_path, '**/*.rb')
    Dir.glob(pattern) { |filename|
      pathname = Pathname.new(filename)
      relative = pathname.relative_path_from(base)
      file.puts "require '#{relative.to_s}'"
    }
  }
end

def generate_stubs
  puts "Generating stubs..."
  generate_module_stubs(Registry.root)
  namespace_objects.each do |object|
    generate_module_stubs(object)
  end
  generate_autoload
end

def print_section(io, title, content)
  return if content.strip.empty?
  io.puts
  io.puts "  # #{title}"
  io.puts
  io.puts content
end

def generate_module_stubs(object)
  filename = stub_filename(object)
  ensure_exist(File.dirname(filename))
  StubFile.open(filename, 'w') { |file|
    file.puts file_header(object)
    file.puts
    file.puts namespace_definition(object)
    print_section(file, 'Extends', generate_mixins(object, :class))
    print_section(file, 'Includes', generate_mixins(object, :instance))
    print_section(file, 'Constants', generate_constants_grouped(object))
    print_section(file, 'Class Methods', generate_class_methods(object))
    print_section(file, 'Instance Methods', generate_instance_methods(object))
    file.puts
    file.puts file_footer(object)
  }
  #trim_trailing_white_space(filename)
end

def file_header(object)
  header = StringIO.new
  header.puts "# Copyright:: Copyright #{Time.now.year} Trimble Inc."
  header.puts "# License:: The MIT License (MIT)"
  #header.puts "# Generated:: #{Time.now.strftime('%F %R')}"
  header.string
end

def file_footer(object)
  return if object.root?
  footer = StringIO.new
  footer.puts 'end'
  footer.string
end

def namespace_definition(object)
  return if object.root?
  definition = "#{object.type} #{object.path}"
  if object.type == :class && object.superclass.name != :Object
    definition << " < #{object.superclass.path}"
  end
  output = StringIO.new
  output.puts generate_docstring(object)
  output.puts definition
  output.string
end

def output_path
  options.serializer.options[:basepath] || File.join(Dir.pwd, 'stubs')
end

def stubs_path
  ensure_exist(output_path)
end

def autoload_stubs_path
  ensure_exist(File.join(stubs_path, 'autoload'))
end

def sketchup_stubs_path
  ensure_exist(File.join(stubs_path, 'SketchUp'))
end

def stub_filename(object)
  basename = object.path.gsub('::', '/')
  basename = '_top_level' if basename.empty?
  File.join(sketchup_stubs_path, "#{basename}.rb")
end

CAMELCASE_CONSTANT = /^([A-Z]+[a-z]+)/

def group_constant(constant)
  constant_name = constant.name.to_s
  MANUAL_CONSTANT_GROUPS.each { |rule|
    if rule[:constants]
      return rule[:group] if rule[:constants].include?(constant_name)
    else
      return rule[:group] if rule[:regex].match(constant_name)
    end
  }
  if constant_name.include?('_')
    constant_name.split('_').first
  else
    constant_name[CAMELCASE_CONSTANT] || constant_name
  end
end

# Sorts and groups constants for easier reading.
def generate_constants_grouped(object)
  constants = run_verifier(object.constants(object_options))
  # The constants are not sorted before chunking. This is because `chunk` groups
  # consecutive items - and we want to chunk them based their relationship
  # with each other. This ensure that constants that doesn't follow the normal
  # pattern of PREFIX_SOME_NAME will still be grouped next to each other.
  groups = constants.chunk { |constant|
    group_constant(constant)
  }
  grouped_output = groups.map { |group, group_constants|
    output = StringIO.new
    # Each group itself is sorted in order to more easily scan the list.
    sorted = group_constants.sort { |a, b|
      a.name <=> b.name
    }
    sorted.each { |constant|
      output.puts "  #{constant.name} = nil # Stub value."
    }
    output.string
  }
  # Finally each group is also sorted, again to ease scanning for a particular
  # name. We simply use the first character of each group.
  grouped_output.sort { |a, b|
    a.lstrip[0] <=> b.lstrip[0]
  }.join("\n")
end

# Sort constants without grouping.
def generate_constants(object)
  output = StringIO.new
  constants = run_verifier(object.constants(object_options)).sort { |a, b|
    a.name <=> b.name
  }
  constants.each { |constant|
    output.puts "  #{constant.name} = nil # Stub value."
  }
  output.string
end

def generate_mixins(object, scope)
  output = StringIO.new
  mixin_type = (scope == :class) ? 'extend' : 'include'
  mixins = run_verifier(object.mixins(scope)).sort { |a, b|
    a.path <=> b.path
  }
  mixins.each { |mixin|
    output.puts "  #{mixin_type} #{mixin.path}"
  }
  output.string
end

def generate_class_methods(object)
  generate_methods(object, :class, 'self.')
end

def generate_instance_methods(object)
  generate_methods(object, :instance)
end

def generate_methods(object, scope, prefix = '')
  methods = sort_methods(object, scope)
  signatures = methods.map { |method|
    output = StringIO.new
    # Cannot use `methods.signature` here as it would return the C/C++ function
    # signature. Must generate one from the YARD data.
    signature = generate_method_signature(method)
    # NOTE: We must call `generate_docstring` after `generate_method_signature`
    # because `generate_method_signature` will also clean up docstrings with
    # a single @overload tag.
    output.puts generate_docstring(method, 1)
    output.puts "  def #{prefix}#{signature}"
    output.puts "  end"
    output.string
  }
  signatures.join("\n")
end

# NOTE: This may modify the docstring of the object.
def generate_method_signature(object)
  signature = "#{object.name}"
  # If there is a single overload then use that as the parameter list. Many of
  # the SketchUp Ruby API methods will have this as it was safer to add an
  # @overload tag instead of renaming the function argument names.
  overloads = object.docstring.tags(:overload)
  if overloads.size == 1
    overload = overloads.first
    parameters = overload.parameters
    # Move the tags from the @overload tag to the root of the docstring. No need
    # for a single overload tag - it's unexpected when reading the source.
    object.docstring.add_tag(*overload.tags)
    object.docstring.delete_tags(:overload)
  else
    parameters = object.parameters
  end
  # Compile the signature for the arguments and default values.
  params = parameters.map { |param|
    param.last.nil? ? param.first : param.join(' = ')
  }.join(', ')
  signature << "(#{params})" unless params.empty?
  signature
end

def generate_docstring(object, indent_step = 0)
  output = StringIO.new
  indent = '  ' * indent_step
  docstring = object.docstring
  docstring.delete_tags(:par) # Remove obsolete @par tags.
  docstring.to_raw.lines.each { |line|
    # Naive check for tags with no indent - if it is we insert an extra line
    # in order to get some space for easier reader. Doing it this way in order
    # to avoid hacking YARD too much.
    output.puts "#{indent}#" if line.start_with?('@')
    # This is the original docstring line.
    output.puts "#{indent}# #{line}"
  }
  output.string
end

def sort_methods(object, scope)
  methods = run_verifier(object.meths(object_options))
  objects = methods.select { |method|
    method.scope == scope
  }
  objects.sort { |a, b|
    a.name <=> b.name
  }
end

def object_options
  {
    :inherited => false,
    :included => false
  }
end


def ensure_exist(path)
  unless File.directory?(path)
    FileUtils.mkdir_p(path)
  end
  path
end


class StubFile < File

  def puts(*args)
    case args.size
    when 0
      super
    when 1
      super trim_trailing_white_space(args[0].to_s)
    else
      raise NotImplementedError
    end
  end

  private

  TRAILING_WHITE_SPACE = /([\t ]+)$/
  def trim_trailing_white_space(string)
    string.gsub(TRAILING_WHITE_SPACE, '')
  end

end


MANUAL_CONSTANT_GROUPS = [
  # UI.messagebox return values.
  {
    constants: %w{IDABORT IDCANCEL IDIGNORE IDNO IDOK IDRETRY IDYES},
    group: 'ID_MESSAGEBOX'
  },
  # Axes
  {
    constants: %w{X_AXIS Y_AXIS Z_AXIS},
    group: 'AXES'
  },
  # Axes 2D
  {
    constants: %w{X_AXIS_2D Y_AXIS_2D},
    group: 'AXES2D'
  },
  # Transformation
  {
    constants: %w{IDENTITY IDENTITY_2D},
    group: 'IDENTITY'
  },
  # Geom::PolygonMesh
  {
    constants: %w{
      AUTO_SOFTEN HIDE_BASED_ON_INDEX NO_SMOOTH_OR_HIDE SMOOTH_SOFT_EDGES
      SOFTEN_BASED_ON_INDEX},
    group: 'SOFTEN'
  },
  # Sketchup::Importer
  # The other constants start with Import, this was odd one out.
  {
    constants: %w{ImporterNotFound},
    group: 'Import'
  },
  # Sketchup::Http
  {
    constants: %w{DELETE GET HEAD OPTIONS PATCH POST PUT},
    group: 'HTTP'
  },
  # Sketchup::Licensing
  {
    constants: %w{EXPIRED LICENSED NOT_LICENSED TRIAL TRIAL_EXPIRED},
    group: 'EX_LICENSE'
  },
  # Sketchup::Model
  {
    constants: %w{Make MakeTrial ProLicensed ProTrial},
    group: 'SU_LICENSE'
  },
  # Sketchup::RenderingOptions
  # Most ROP constants start with ROPSet, with a handful of exceptions.
  {
    regex: /^ROP/,
    group: 'ROP'
  },
]

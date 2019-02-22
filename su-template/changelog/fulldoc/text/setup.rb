require 'fileutils'
require 'set'
require 'stringio'

include Helpers::ModuleHelper

def init
  generate_changelog
end


def all_objects
  run_verifier(Registry.all())
end

def namespace_objects
  run_verifier(Registry.all(:class, :module))
end


def output_path
  options.serializer.options[:basepath] || Dir.pwd
end


def changelog_filename
  'Changelog SU201x.log'
end

def generate_changelog
  #p (methods - Object.instance_methods).sort
  #p ARGV
  puts "Generating #{changelog_filename}..."
  output = StringIO.new
  new_objects = all_objects.sort { |a, b| a.path <=> b.path }
  new_objects.each do |object|
    #object.meths.each { |method|
      #methods << "#{method.namespace}##{method.name}"
    #}
    output.puts "Added #{object.type} #{object.path}"
  end
  changelog_path = File.join(output_path, changelog_filename)
  File.write(changelog_path, output.string)
end

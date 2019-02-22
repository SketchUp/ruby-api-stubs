require 'fileutils'
require 'set'

include Helpers::ModuleHelper

MANIFEST_FILENAME = 'coverage.manifest'.freeze

def init
  generate_manifest
end


def namespace_objects
  run_verifier(Registry.all(:class, :module))
end


def output_path
  options.serializer.options[:basepath] || Dir.pwd
end


def generate_manifest
  puts "Generating #{MANIFEST_FILENAME}..."
  methods = Set.new
  namespace_objects.each do |object|
    run_verifier(object.meths).each { |method|
      # TODO(thomthom): Currently the manifest doesn't distinguish between
      # class and instance methods. This should be addressed, but we need to
      # update TestUp to handle this first.
      methods << "#{method.namespace}.#{method.name}"
    }
  end
  manifest = methods.sort.join("\n")
  manifest_path = File.join(output_path, MANIFEST_FILENAME)
  puts manifest_path
  File.write(manifest_path, manifest)
end

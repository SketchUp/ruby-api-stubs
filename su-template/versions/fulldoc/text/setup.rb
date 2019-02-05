require 'set'

include Helpers::ModuleHelper

MANIFEST_FILENAME = 'coverage.manifest'.freeze

def init
  find_all_versions
end


def all_objects
  run_verifier(Registry.all)
end


def find_all_versions
  versions = Set.new
  all_objects.each { |object|
    version_tag = object.tag(:version)
    versions << version_tag.text if version_tag
  }
  puts versions.sort.join("\n")
  exit # Avoid the YARD summary
end

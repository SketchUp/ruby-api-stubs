# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::Skp} module is used to read metadata from external SketchUp
# files without loading the whole file.
#
# @version SketchUp 2021.0
module Sketchup::Skp

  # Class Methods

  # The {.read_guid} method is used to read the GUID, globally unique identifier,
  # for an external model.
  #
  # In SketchUp, GUIDs are used to test if {Sketchup::ComponentDefinition}s and
  # {Sketchup::Model}s match (a component being an embedded model).
  # When you insert a component to a model, its GUID is compared to existing
  # component definitions in that model, and if there is a match the existing
  # component definition is re-used rather than a duplicate being added.
  # When a component definition is modified or a model is saved, their GUIDs are
  # renewed.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   definition = definitions.find { |definition| !definition.internal? }
  #   # true if component matches its external file.
  #   definition.guid == Sketchup::Skp.read_guid(definition.path)
  #
  # @param [String] filepath
  #
  # @raise [ArgumentError] if the file is missing or is not a SketchUp model.
  #
  # @return [String]
  #
  # @version SketchUp 2021.0
  def self.read_guid(filepath)
  end

end

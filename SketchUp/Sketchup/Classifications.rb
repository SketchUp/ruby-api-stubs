# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Classifications class is a container/manager for all classifications in
# a model.
#
# @version SketchUp 2015
class Sketchup::Classifications

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to get a classification schema by name or index.
  #
  # @example
  #   # Get schema by name:
  #   schema = Sketchup.active_model.classifications["IFC 2x3"]
  #
  #   # Get schema by index:
  #   schema = Sketchup.active_model.classifications[1]
  #
  # @param index_or_name
  #   The index or name of the ClassificationSchema object.
  #
  # @return schema - a ClassificationSchema object if
  #   successful, otherwise nil.
  #
  # @version SketchUp 2015
  def [](index_or_name)
  end

  # The each method is used to iterate through loaded classification schemas.
  #
  # @example
  #   Sketchup.active_model.classifications.each { |schema|
  #     puts schema.name
  #   }
  #
  # @return nil
  #
  # @version SketchUp 2015
  #
  # @yield [schema] A variable that will hold each ClassificationSchema
  #   object as they are found.
  def each
  end

  # The keys method is used to get a list of keys in the Classifications class,
  # which are the same as the names of the schemas.
  #
  # @example
  #   schema_names = Sketchup.active_model.classifications.keys
  #
  # @return keys - Array of string keys
  #
  # @version SketchUp 2015
  def keys
  end

  # The {#length} method returns the number of loaded classification schemas.
  #
  # @example
  #   Sketchup.active_model.classifications.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2015
  def length
  end

  # The load_schema method is used to load a classification schema into a
  # model.
  #
  # @example
  #   c = Sketchup.active_model.classifications
  #   file = Sketchup.find_support_file('IFC 4.skc', 'Classifications')
  #   status = c.load_schema(file) if !file.nil?
  #
  # @param file
  #   Full path to the schema file
  #
  # @return True if successful.
  #
  # @version SketchUp 2015
  def load_schema(file)
  end

  # The {#size} method returns the number of loaded classification schemas.
  #
  # @example
  #   Sketchup.active_model.classifications.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2015
  def size
  end

  # The unload_schema method is used to unload a classification schema that was
  # previously loaded into a model.
  #
  # @example
  #   c = Sketchup.active_model.classifications
  #   status = c.unload_schema('IFC 2x3')
  #
  # @param schema_name
  #   Name of the schema to unload
  #
  # @return True if successful.
  #
  # @version SketchUp 2015
  def unload_schema(schema_name)
  end

end

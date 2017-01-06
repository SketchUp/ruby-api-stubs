# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The ClassificationSchema class represent schemas loaded in the model.
#
# @version SketchUp 2015
class Sketchup::ClassificationSchema

  # Includes

  include Comparable

  # Instance Methods

  # The <=> method is used to compare two ClassificationSchema objects for
  # sorting. The comparison is done based on the schema name.
  #
  # @example
  #   schema1 = Sketchup.active_model.classifications["IFC 2x3"]
  #   schema2 = Sketchup.active_model.classifications["gbXML"]
  #   # Returns -1
  #   result = schema1 <=> schema2
  #   # Returns an array of sorted schemas.
  #   schemas = Sketchup.active_model.classifications.to_a.sort
  #
  # @param schema2
  #   The second schema in the comparison.
  #
  # @return Integer - -1 if schema1 is less then schema2. 1 if
  #   schema1 is greater than schema2, 0 if the schemas
  #   are equal.
  #
  # @version SketchUp 2015
  def <=>(schema2)
  end

  # The name method returns the name of the schema.
  #
  # @example
  #   Sketchup.active_model.classifications.each { |schema|
  #     puts schema.name
  #   }
  #
  # @return String - containing the schema name.
  #
  # @version SketchUp 2015
  def name
  end

  # The namespace method returns the namespace of the schema.
  #
  # @example
  #   Sketchup.active_model.classifications.each { |schema|
  #     puts schema.namespace
  #   }
  #
  # @return String - containing the schema namespace.
  #
  # @version SketchUp 2015
  def namespace
  end

end

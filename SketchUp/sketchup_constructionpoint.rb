# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A construction point represents a point in the model that can be used to aid
# in other modeling operations. For example, you may put a construction point
# at the center of a circle to make it easier to locate that point for
# performing other operations.
#
# @version SketchUp 6.0
class Sketchup::ConstructionPoint < Sketchup::Drawingelement

  # Instance Methods

  # The position method is used to retrieve a Point3d used to create a
  # construction point.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(10,0,0)
  #   constpoint = entities.add_cpoint point1
  #   # Returns 10,0,0
  #   position = constpoint.position
  #
  # @return point - the Point3d object used to create the
  #   ConstructionPoint
  #
  # @version SketchUp 6.0
  def position
  end

end

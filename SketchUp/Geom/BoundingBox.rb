# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Bounding boxes are three-dimensional boxes (eight corners), aligned with the
# global axes, that surround entities within your model. There is a default
# bounding box for any new model that will surround all entities,
# including all groups and components. Additionally, there are
# bounding boxes for Drawingelement objects, including components and groups.
# Bounding boxes are only large enough to exactly bound the entities within
# your model, group, or component.
#
# You can also create arbitrary BoundingBox objects by calling BoundingBox.new.
#
# @example
#   # You can get the bounding box on a model.
#   model = Sketchup.active_model
#   model_bb = model.bounds
#
#   # Or you can get the bounding box on any Drawingelement object.
#   first_entity = model.entities[0]
#   first_entity_bb = first_entity.bounds
#
#   # Or you can create an empty bounding box of your own.
#   boundingbox = Geom::BoundingBox.new
#
# @note that the bounding box returned for face-me components is the center of
#   its entire range of motion. This behavior changed in SketchUp 7.1. In 7.0
#   and earlier, the .bounds method would return the bounds around the
#   face-me component's current, visible center.
#
# @version SketchUp 6.0
class Geom::BoundingBox

  # Instance Methods

  # The add method is used to add a point, vertex, or other bounding boxes to the
  # bounding box. The size of the bounding box will increase as necessary to
  # accommodate the new items.
  #
  # Adding one point to an empty bounding box does not increase the size of the
  # bounding box. You must add at least two points before methods such as
  # BoundingBox.diagonal will return a size greater than zero.
  #
  # @example
  #   model = Sketchup.active_model
  #   boundingbox = model.bounds
  #   point1 = Geom::Point3d.new(100, 200, 300)
  #   point2 = Geom::Point3d.new(200, 400, 200)
  #   boundingbox.add(point1, point2)
  #
  # @overload add(point_or_bb)
  #
  #   @param [Geom::Point3d, Geom::BoundingBox, Sketchup::Vertex] point_or_bb
  #
  # @overload add(points_or_bb)
  #
  #   @param [Array<Geom::Point3d, Geom::BoundingBox, Sketchup::Vertex>]
  #     points_or_bb
  #
  # @return [Geom::BoundingBox]
  #
  # @version SketchUp 6.0
  def add(*args)
  end

  # The center method is used to retrieve the Point3d object at the center of
  # the bounding box.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return a point Point3d(150, 300, -150).
  #   point = boundingbox.center
  #
  # @return [Geom::Point3d] the Point3d at the center of the bounding box
  #   if successful
  #
  # @version SketchUp 6.0
  def center
  end

  # The clear method is used to clear a bounding box.
  #
  # A cleared BoundingBox does not have a size greater than zero until you add
  # at least two points or another bounding box.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #
  #   # This will return false.
  #   boundingbox.empty?
  #
  #   boundingbox.clear
  #   # This will return true.
  #   boundingbox.empty?
  #
  # @return [Geom::BoundingBox] the BoundingBox object which was cleared
  #
  # @version SketchUp 6.0
  def clear
  end

  # This method is used to determine if a bounding box contains a specific
  # Point3d or BoundingBox object.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return false.
  #   boundingbox.contains?([300, 100, 400])
  #   # This will return true.
  #   boundingbox.contains?([150, 300, -200])
  #
  # @param [Geom::Point3d, Geom::BoundingBox] point_or_bb
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def contains?(point_or_bb)
  end

  # The corner method is used to retrieve a point object at a specified corner
  # of the bounding box.
  #
  # There are 8 corners to a bounding box, identified by the numbers 0 through 7.
  # Points are returned in the currently set units (inches, by default). These
  # are which index refers to which corner:
  #
  #   - 0 = [0, 0, 0] (left front bottom)
  #   - 1 = [1, 0, 0] (right front bottom)
  #   - 2 = [0, 1, 0] (left back bottom)
  #   - 3 = [1, 1, 0] (right back bottom)
  #   - 4 = [0, 0, 1] (left front top)
  #   - 5 = [1, 0, 1] (right front top)
  #   - 6 = [0, 1, 1] (left back top)
  #   - 7 = [1, 1, 1] (right back top)
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return Point3d(100, 200, -400).
  #   boundingbox.corner(0)
  #   # This will return Point3d(100, 200, -400).
  #   boundingbox.corner(6)
  #
  # @param [Integer] corner_index
  #   A number (from 0 to 7) representing point at the
  #   corner you want to retrieve.
  #
  # @return [Geom::Point3d] a Point3d object if successful
  #
  # @version SketchUp 6.0
  def corner(corner_index)
  end

  # The depth method is used to retrieve the depth of the bounding box.
  #
  # The depth is returned in the currently set units (inches, by default).
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return a Length of 500.0.
  #   length = boundingbox.depth
  #
  # @return [Length] the depth of the bounding box if successful
  #
  # @version SketchUp 6.0
  def depth
  end

  # The diagonal method is used to get the length of the diagonal of the
  # bounding box.
  #
  # The diagonal is returned in the currently set units (inches, by default).
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return a point a Length of ~547.72.
  #   length = boundingbox.diagonal
  #
  # @return [Length] the size of the diagonal for the bounding
  #   box if successful
  #
  # @version SketchUp 6.0
  def diagonal
  end

  # The empty? method is used to determine if a bounding box is empty (such as
  # if the bounds have not been set.) This returns the opposite of the valid?
  # method.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return false.
  #   boundingbox.empty?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def empty?
  end

  # The height method is used to retrieve the height of the bounding box.
  #
  # The height is returned in the currently set units (inches, by default).
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return a Length of 200.0.
  #   length = boundingbox.height
  #
  # @return [Length] the height of the bounding box
  #
  # @version SketchUp 6.0
  def height
  end

  # The new method is used to create a new, empty, bounding box.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #
  # @return [Geom::BoundingBox] a BoundingBox object if successful
  #
  # @version SketchUp 6.0
  def initialize
  end

  # The intersect method is used to retrieve a bounding box that is the result
  # of intersecting one bounding box with another.
  #
  # @example
  #   boundingbox1 = Geom::BoundingBox.new
  #   boundingbox1.add([100, 200, -400], [200, 400, 300])
  #   boundingbox2 = Geom::BoundingBox.new
  #   boundingbox2.add([150, 350, 100], [200, 400, 500])
  #   # The returned boundingbox is a result of the intersection of the two.
  #   boundingbox = boundingbox1.intersect(boundingbox2)
  #
  # @note Prior to SU2015 this method would return incorrect result in some
  #   cases. For correct result in these versions you must first check if the
  #   boundingboxes actually overlap - then call this to get the resulting
  #   boundingbox.
  #
  # @param [Geom::BoundingBox] boundingbox
  #   A second boundbox which might intersect boundingbox1.
  #
  # @return [Geom::BoundingBox] the resulting BoundingBox object if
  #   successful, an empty BoundingBox object if unsuccessful.
  #
  # @version SketchUp 6.0
  def intersect(boundingbox)
  end

  # The max method is used to retrieve the Point3d object where x, y and z are
  # maximum in the bounding box.
  #
  # If you attempt to call the max method on an empty bounding box, you will
  # receive a very large negative number.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [700, 900, 800], [200, 400, 100])
  #   # This will return a point Point3d(700, 900, 800).
  #   point = boundingbox.max
  #
  # @return [Geom::Point3d] a Point3d object representing the point where
  #   x, y, and z are the maximum in the bounding box.
  #
  # @version SketchUp 6.0
  def max
  end

  # The min method is used to retrieve the Point3d where x, y and z are minimum
  # in the bounding box.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [700, 900, 800], [200, 400, 100])
  #   # This will return a point Point3d(100, 200, -400).
  #   point = boundingbox.min
  #
  # @return [Geom::Point3d] a Point3d object representing the point where
  #   x, y, and z are the maximum in the bounding box.
  #
  # @version SketchUp 6.0
  def min
  end

  # The valid method is used to determine if a bounding box is valid (contains
  # points).
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return true.
  #   boundingbox.valid?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def valid?
  end

  # The width method is used to retrieve the width of the bounding box.
  #
  # The width is returned in the currently set units (inches, by default).
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([100, 200, -400], [200, 400, 100])
  #   # This will return a Length of 100.0.
  #   length = boundingbox.width
  #
  # @return [Length] the width of the bounding box
  #
  # @version SketchUp 6.0
  def width
  end

end

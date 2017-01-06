# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The PickHelper class is used to pick entities that reside under the current
# cursor location. PickHelper and InputPoint are similar, but InputPoint also
# uses inferencing. You can retrieve a PickHelper object using the pick_helper
# method on a View object.
#
# Entities that are picked (found under the
# cursor when a mouse or keyboard event occurs), are called Pick Records and
# are placed in an indexed list.
#
# @version SketchUp 6.0
class Sketchup::PickHelper

  # Constants

  PICK_CROSSING = nil # Stub value.
  PICK_INSIDE = nil # Stub value.

  # Instance Methods

  # The all_picked method is used to get an array of entities from the
  # active entities from all the pick paths. Duplicates might occur if
  # there are multiple pick paths for entities that ends in a group or
  # component.
  #
  # For example, if the pick hits at the border of an edge and face
  # inside a group there will be two pick paths - one for the face and
  # one for the edge. Since this method returns entities from the active
  # entities it would return an array with the group two times.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   entities = ph.all_picked
  #
  # @return elements - the array of elements in the pick.
  #
  # @version SketchUp 6.0
  def all_picked
  end

  # The best_picked method is used to retrieve the "best" entity picked (entity
  # that you would have picked if you were using the select tool).
  #
  # Returns nil if nothing was picked. You must have called do_pick
  # before calling this method.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   best_entity = ph.best_picked
  #
  # @return entity - the best picked entity
  #
  # @version SketchUp 6.0
  def best_picked
  end

  # Used to pick a set of entities from a model from a BoundingBox. The pick
  # criteria can be for completely-contained or partially-contained entities,
  # similar to how the Selection tool works.
  #
  # @example
  #   boundingbox = Geom::BoundingBox.new
  #   boundingbox.add([1, 1, 1], [100, 100, 100])
  #   ph = Sketchup.active_model.active_view.pick_helper
  #
  #   # Rotate the box 45' around the z-axis
  #   angle = 45
  #   transformation = Geom::Transformation.new(ORIGIN, Z_AXIS, angle)
  #
  #   num_picked = ph.boundingbox_pick(boundingbox, Sketchup::PickHelper::PICK_CROSSING, transformation)
  #   if num_picked > 0
  #     Sketchup.active_model.selection.add(ph.all_picked)
  #   end
  #
  # @param bounding_box
  #   BoundingBox object defining the volume to use for picking
  #
  # @param pick_type
  #   PICK_INSIDE to select entities completely contained or
  #   PICK_CROSSING to select entities partially contained.
  #
  # @param [optional] transformation
  #   Transformation that will be applied to the
  #   volume defined by the BoundingBox that allows for a
  #   rotation.
  #
  # @return The number of Entity objects picked
  #
  # @version SketchUp 2016
  def boundingbox_pick(bounding_box, pick_type, transformation = IDENTITY)
  end

  # The count method is used to count the number of entities picked (number of
  # pick records)
  #
  # @example
  #   number = pickhelper.count
  #
  # @return number - the number of entities picked
  #
  # @version SketchUp 6.0
  def count
  end

  # The depth_at method retrieves the depth of one of the currently picked
  # entities in the list of pick records.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   # Iterate all pick-routes:
  #   pickhelper.count.times { |pick_path_index|
  #     puts pickhelper.depth_at(pick_path_index)
  #   }
  #
  # @param index
  #   A number from 0 to number of items picked minus one.
  #
  # @return integer - the depth of the entity if successful
  #
  # @version SketchUp 6.0
  def depth_at(index)
  end

  # The do_pick method is used to perform the initial pick. This method is
  # generally called before any other methods in the PickHelper class.
  #
  # Returns the number of entities picked. The x and y values are the screen
  # coordinates of the point at which would want to do a pick.
  #
  # @example
  #   ph = view.pick_helpernum = ph.do_pick(x, y)
  #
  # @param x
  #   X screen coordinate for the pick.
  #
  # @param y
  #   Y screen coordinate for the pick.
  #
  # @param aperture
  #   The size of the pick-aperture.
  #
  # @return Integer - The number of Entity objects picked
  #
  # @version SketchUp 6.0
  def do_pick(x, y, aperture = 0)
  end

  # The element_at method is used to retrieve a specific entity in the list of
  # picked elements. This element will be from the active entities.
  #
  # Use count() to get the number of possible pick paths.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   # Iterate all pick-routes:
  #   pickhelper.count.times { |pick_path_index|
  #     puts pickhelper.element_at(pick_path_index)
  #   }
  #   # You would iterate the same elements in all_picked.
  #
  # @param index
  #   A number from 0 to number of items picked minus one.
  #
  # @return entity - the entity at the index position in the list
  #   of picked entities.
  #
  # @version SketchUp 6.0
  def element_at(index)
  end

  # The init method is used to initialize the PickHelper for testing points.
  #
  # You do not normally need to call this method, but you can use this if you
  # want to call test_point or pick_segment on a lot of points.
  #
  # If the optional aperture is given, it is given in pixels.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.init(x, y, 5)
  #   # Find all points picked by the screen click.
  #   selected = points.select { |point|
  #     ph.test_point(point)
  #   }
  #
  # @param x
  #   X screen coordinate for the pick.
  #
  # @param y
  #   Y screen coordinate for the pick.
  #
  # @param [optional] aperture
  #   aperture in pixels.
  #
  # @return p - the (receiver) PickHelper Object
  #
  # @version SketchUp 6.0
  def init(x, y, aperture = 0)
  end

  # The leaf_at method retrieves the deepest thing in a pick path.
  #
  # For example, if you have a face that is within a component that is within
  # another component, leaf_at returns the face.
  #
  # Use count() to get the number of possible pick paths.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   # Iterate all pick-routes:
  #   pickhelper.count.times { |pick_path_index|
  #     p pickhelper.leaf_at(pick_path_index)
  #   }
  #
  # @param index
  #   A number from 0 to number of items picked minus one.
  #
  # @return entity - the leaf entity
  #
  # @version SketchUp 6.0
  def leaf_at(index)
  end

  # The path_at method is used to retrieve the entire path for an entity in the
  # pick list (as an array).
  #
  # If one of the pick paths end in a face nested in a group nested in a
  # component this method will return an array of these entities. The Group
  # will be first and the face will be last.
  #
  # The first item in the array will be from the active entities and the last
  # item will be a drawing element that is not a group, component or image.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   # Iterate all pick-routes:
  #   pickhelper.count.times { |pick_path_index|
  #     p pickhelper.path_at(pick_path_index)
  #   }
  #
  # @param index
  #   A number from 0 to number of items picked minus one.
  #
  # @return array - an array of entities including the leaf
  #
  # @version SketchUp 6.0
  def path_at(index)
  end

  # The pick_segment method is used to pick a segment of a polyline curve that
  # is defined by an array of points.
  #
  # If you click on a point in a polyline curve, the index of
  # the point in the curve is returned (starting at 0). If you click on a
  # segment in the polyline curve, the index of the segment is returned.
  # Segments start at index -1 (for the segment connecting the first two points)
  # and increase by a factor of -1 (for example, the segment connecting second
  # and third point is -2).
  #
  # There is no need to invoke do_pick for this and the results are unrelated.
  #
  # @example
  #   point1 = Geom::Point3d.new(0 ,0, 0)
  #   point2 = Geom::Point3d.new(10, 0, 0)
  #   segment = [point1, point2]
  #   ph = view.pick_helper
  #   # If testing many points this is the fastest way to test.
  #   ph.init(x, y)
  #   picked = ph.pick_segment(segment)
  #   # This do not require init(
  #   picked = ph.pick_segment(segment, x, y)
  #
  # @param array_or_list
  #   A series of Point3d objects in the polyline as a list
  #   of parameters or an array containing Point3d objects.
  #
  # @param [optional] x
  #   screen mouse position in pixels.
  #
  # @param [optional but requires x and y] aperture
  #   aperture in pixels.
  #
  # @param [optional(required if x given)] y
  #   screen mouse position
  #   in pixels.
  #
  # @return index - an index of the point in the array if you
  #   clicked on a point or an index of a segment if you
  #   clicked on a segment (if successful)
  #
  # @version SketchUp 6.0
  def pick_segment(array_or_list, x, y, aperture = 0)
  end

  # The picked_edge method is used to retrieve the "best" Edge picked.
  #
  # Returns nil if there were no edges picked. You must have called do_pick
  # before calling this method.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   edge = ph.picked_edge
  #
  # @return edge - an Edge object if successful
  #
  # @version SketchUp 6.0
  def picked_edge
  end

  # The picked_element method retrieves the best drawing element, that is not an
  # edge or a face, picked.
  #
  # Returns nil if nothing was picked. You must have called do_pick
  # before calling this method.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   entity = ph.picked_element
  #
  # @param index
  #
  # @return element - a drawing element that is not an edge or face
  #   if successful
  #
  # @version SketchUp 6.0
  def picked_element(index)
  end

  # The picked_face method is used to retrieve the best face picked.
  #
  # Returns nil if there were no faces picked. You must have called do_pick
  # before calling this method.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   face = ph.picked_face
  #
  # @return face - a Face object if successful
  #
  # @version SketchUp 6.0
  def picked_face
  end

  # The test_point method is used to test a point to see if it would be selected
  # using the default or given pick aperture.
  #
  # In the first form, you must have initialized the PickHelper using the init
  # method. This is more efficient if you want to test a lot of points using the
  # same screen point.
  #
  # In the second and third forms, it initializes the
  # PickHelper using a screen point and an optional pick aperture that you pass
  # in as the 2nd-4th arguments.
  #
  # There is no need to invoke do_pick for this and the results are unrelated.
  #
  # @example
  #   ph = view.pick_helper
  #   # If testing many points this is the fastest way to test.
  #   ph.init(x, y)
  #   picked = ph.test_point(point)
  #   # These do not require init()
  #   picked = ph.test_point(point, x, y)
  #   picked = ph.test_point(point, x, y, aperture)
  #
  # @param point
  #   Screen point.
  #
  # @param [optional] x
  #   x position of pick.
  #
  # @param [optional] aperture
  #   aperture in pixels.
  #
  # @param [optional] y
  #   y position of pick.
  #
  # @return would_be_selected - true or false
  #
  # @version SketchUp 6.0
  def test_point(point, x, y, aperture = 0)
  end

  # The transformation_at method is used to get a transformation at a specific
  # pick path index in the pick helper.
  #
  # The transformation combines the transformation of all groups, components and
  # images in the pick path. This transformation can be used to transform the
  # coordinates of the leaf entity into the coordinates of the active entities.
  #
  # @example
  #   ph = view.pick_helper
  #   ph.do_pick(x, y)
  #   # Iterate all pick-routes:
  #   pickhelper.count.times { |pick_path_index|
  #     puts pickhelper.transformation_at(pick_path_index)
  #   }
  #
  # @param index
  #   The index where the transformation should be retrieved.
  #
  # @return transformation - the transformation found
  #
  # @version SketchUp 6.0
  def transformation_at(index)
  end

  # The view method is used to get the view associated with the PickHelper.
  #
  # @example
  #   view = pickhelper.view
  #
  # @return view - the associated view
  #
  # @version SketchUp 6.0
  def view
  end

  # Used to pick a set of entities from a model based on a screen coordinate
  # rectangular area defined by two points. The pick criteria can be for
  # completely-contained or partially-contained entities, similar to how
  # the Selection tool works. The z value of the points passed in are ignored.
  #
  # @example
  #   ph = Sketchup.active_model.active_view.pick_helper
  #   start_point = Geom::Point3d.new(100, 100, 0)
  #   end_point = Geom::Point3d.new(500, 500, 0)
  #   num_picked = ph.window_pick(start_point, end_point, Sketchup::PickHelper::PICK_CROSSING)
  #
  # @param start_point
  #   First screen coordinate point.
  #
  # @param end_point
  #   Second screen coordinate point.
  #
  # @param pick_type
  #   PICK_INSIDE to select entities completely contained or
  #   PICK_CROSSING to select entities partially contained.
  #
  # @return The number of Entity objects picked
  #
  # @version SketchUp 2016
  def window_pick(start_point, end_point, pick_type)
  end

end

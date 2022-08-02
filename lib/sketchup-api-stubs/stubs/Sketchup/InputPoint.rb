# Copyright:: Copyright 2022 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::InputPoint} class is used to pick 3d points and/or entities
# that reside under the current cursor location, similar to native Line tool
# and other drawing tools. Unlike {Sketchup::PickHelper},
# {Sketchup::InputPoint} uses inference, i.e. "snaps" to vertices and other
# entities when the cursor is close to them.
#
# Only {Sketchup::Tool}s react to cursor location and most of these methods are
# only useful in the context of a tool. For example, if you want to determine
# the 3d point you just moved the cursor over, you would use
# {#pick} from within your {Sketchup::Tool#onMouseMove} method.
# {Sketchup::InputPoints} are best picked from mouse move, as you want them to
# draw them to the view.
#
# For an example, see
# {Tool
# Example}[https://github.com/SketchUp/sketchup-ruby-api-tutorials/tree/main/examples/02_custom_tool].
#
# To lock inference similar to native SketchUp tools, see
# {View#lock_inference}.
#
# @version SketchUp 6.0
class Sketchup::InputPoint

  # Instance Methods

  # The == method is used to determine if two input points are the same.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = Sketchup::InputPoint.new
  #   ip2 = view.inputpoint x,y
  #   # Copy the contents of inputpoint2 into inputpoint1
  #   ip1.copy! ip2
  #   # Returns true
  #   status = ip1 == ip2
  #
  # @param inputpoint2
  #   The second input point in the comparison.
  #
  # @return status - true if the InputPoint objects are the same
  #   object. False if the objects are not the same.
  #
  # @version SketchUp 6.0
  def ==(inputpoint2)
  end

  # The clear method is used to clear the input point.
  #
  # This sets it to an empty state. After calling this, valid? will return
  # false.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   # Returns true
  #   ip = ip1.clear
  #
  # @return inputpoint - the cleared (empty) input point if this
  #   successful
  #
  # @version SketchUp 6.0
  def clear
  end

  # The copy! method is used to copy the data from a second input point into
  # this input point.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = Sketchup::InputPoint.new
  #   ip2 = view.inputpoint x,y
  #   # Copy the contents of inputpoint2 into inputpoint1
  #   ip = ip1.copy! ip2
  #
  # @param inputpoint
  #   The second input point.
  #
  # @return inputpoint - the new input point that received the copy
  #   if successful
  #
  # @version SketchUp 6.0
  def copy!(inputpoint)
  end

  # The degrees_of_freedom method retrieves the number of degrees of freedom
  # there are for an input point.
  #
  # If you are just getting a point in space, then the degrees_of_freedom will
  # be 3 - meaning that there is nothing about the point that would constrain
  # its position.
  #
  # If you are on a face, then the degrees_of_freedom will be 2
  # meaning that you can only move on the plane of the face.
  #
  # If you are on an Edge or an axis, then the degrees_of_freedom will be 1
  # meaning that you can only move in the direction of the edge or axis.
  #
  # If you get an end point of an Edge, or an intersection point, then the
  # degrees_of_freedom will be 0.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   dof = ip1.degrees_of_freedom
  #
  # @return degrees_of_freedom - see comments.
  #
  # @version SketchUp 6.0
  def degrees_of_freedom
  end

  # The depth method retrieves the depth of an inference if it is coming from a
  # component.
  #
  # If the InputPoint is not getting a position from inside a component, this
  # method will return 0. Otherwise it returns the depth of the entity in a
  # nested component that is providing the position.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   d = ip1.depth
  #
  # @return depth - a number representing the depth of the
  #   inputpoint (inside groups and components) if successful
  #
  # @version SketchUp 6.0
  def depth
  end

  # The display? method is used to determine if the input point has anything to
  # draw.
  #
  # If the method returns true, then the draw method will draw something.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   status = ip1.display
  #
  # @return [Boolean] status - true if the draw method will draw something,
  #   false if the draw method has nothing to draw
  #
  # @version SketchUp 6.0
  def display?
  end

  # The draw method is used to draw the input point.
  #
  # This is useful for showing an InputPoint from within the draw method of a
  # tool that you have implemented in Ruby. Additional examples are available in
  # the Plugins/examples directory.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   ip = ip1.draw view
  #
  # @param view
  #   The current view.
  #
  # @return view
  #
  # @version SketchUp 6.0
  def draw(view)
  end

  # The edge method is used to retrieve the edge if the input point is getting
  # its position from a point on an Edge.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   e = ip1.edge
  #
  # @return edge - an Edge object if successful, or nil if
  #   unsuccessful
  #
  # @version SketchUp 6.0
  def edge
  end

  # The face method retrieves the face at or behind the input point. This can be
  # used to determine a plane, similar to what native Rotate tool does.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   f = ip1.face
  #
  # @note The InputPoint doesn't necessarily lie on the face, but can be e.g. on
  #   an edge in front of the face.
  #
  # @return [Sketchup::Face, nil]
  #
  # @version SketchUp 6.0
  def face
  end

  # The new method is used to create a new InputPoint object.
  #
  # @example
  #   ip1 = Sketchup::InputPoint.new
  #
  #   # Or you can construct it at an arbitrary location.
  #   starting_point = Geom::Point3d.new(100, 200, 300)
  #   ip2 = Sketchup::InputPoint.new(starting_point)
  #
  # @note Prior to SketchUp 2019 it was not possible to
  #   sub-class {Sketchup::InputPoint} due to a bug in how SketchUp initialized
  #   the class.
  #
  # @overload initialize()
  #
  #   @return [Sketchup::InputPoint]
  #
  # @overload initialize(pt_or_vertex)
  #
  #   @param pt_or_vertex  [Geom::Point3d, Sketchup::Vertex] An optional Point3d
  #                        or Vertex where the new InputPoint should be created.
  #   @return              [Sketchup::InputPoint]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The {#instance_path} method retrieves the instance path for the picked point.
  #
  # The returned instance_path is a copy of what the input point is holding on to
  # at the moment you access it. Your copy will not update if you make new picks
  # with the input point.
  #
  # If there has been no valid pick it will return `nil`.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip = view.inputpoint(x, y)
  #   instance_path = ip.instance_path
  #
  # @return [Sketchup::InstancePath, nil]
  #
  # @version SketchUp 2017
  def instance_path
  end

  # The {#pick} method is used to get a input point at a specific screen
  # position.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   inputpoint = view.inputpoint(x, y)
  #   inputpoint2 = Sketchup::InputPoint.new(Geom::Point3d.new(100, 200, 300))
  #   inputpoint.pick(view, x, y)
  #   inputpoint.pick(view, x, y, inputpoint2)
  #
  # @overload pick(view, x, y)
  #
  #   The first form just uses the screen position to compute the InputPoint. It
  #   is used when you don't want the InputPoint to be dependent on another
  #   InputPoint.
  #   @param [Sketchup::View] view
  #   @param [Integer] x
  #   @param [Integer] y
  #
  # @overload pick(view, x, y, inputpoint)
  #
  #   The second form uses the screen position and another InputPoint. It will
  #   find additional inferences such as along one of the axis directions from the
  #   first point.
  #   @param [Sketchup::View] view
  #   @param [Integer] x
  #   @param [Integer] y
  #   @param [Sketchup::InputPoint] inputpoint
  #     A second input point used as a reference for the pick.
  #
  # @return [Boolean] +true+ if a valid input point was picked and it
  #   is different than it was before.
  #
  # @version SketchUp 6.0
  def pick(*args)
  end

  # The position method is used to get the 3D point from the input point.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   point = ip1.position
  #
  # @return point - a Point3d object position for the input point
  #   if successful
  #
  # @version SketchUp 6.0
  def position
  end

  # The tooltip method is used to retrieve the string that is the tool tip to
  # display for the input point.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   # Click on a face and you get "On Face"
  #   tip = ip1.tooltip
  #
  # @return tip - a string tooltip or an empty string (if the input
  #   point doesn't provide a tooltip).
  #
  # @version SketchUp 6.0
  def tooltip
  end

  # The transformation method retrieves the Transformation object for the input
  # point.
  #
  # If the InputPoint object is getting its position from something inside of a
  # component instance, this method returns the Transformation of the component
  # instance. Otherwise it returns the identity Transformation.
  #
  # Note that the position method on a input point always returns a point that is
  # transformed into model space. If you are using the edge, face or vertex
  # method on the InputPoint though, you will probably need to use the
  # transformation method to transform the data that you get back from the
  # selected entity.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   # In this case, returning the identity transformation
  #   tform = ip1.transformation
  #
  # @return transformation - the Transformation for the input point
  #   if successful
  #
  # @version SketchUp 6.0
  def transformation
  end

  # The valid? method is used to determine if an input point has valid data.
  #
  # You must have called the pick method to set the data before it is valid.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   status = ip1.valid?
  #
  # @return [Boolean] status - true if the input point has valid data, false
  #   if it does not have valid data.
  #
  # @version SketchUp 6.0
  def valid?
  end

  # The vertex method returns a Vertex associated with the InputPoint. If the
  # InputPoint is on the end of a line, then it will return the Vertex. If the
  # InputPoint does not select any vertices this method returns nil.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   x = 100
  #   y = 100
  #   ip1 = view.inputpoint x,y
  #   # Click on a face and you get "On Face"
  #   tip = ip1.vertex
  #
  # @return vertex - The associated vertex
  #
  # @version SketchUp 6.0
  def vertex
  end

end

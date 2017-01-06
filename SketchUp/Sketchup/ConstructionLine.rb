# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The ConstructionLine class contains methods for modifying construction
# lines.  Construction lines can be infinite in length, semi-infinite (i.e.
# infinite in one direction) or finite.
#
# @version SketchUp 6.0
class Sketchup::ConstructionLine < Sketchup::Drawingelement

  # Instance Methods

  # The direction method retrieves a 3D vector in the direction of the
  # construction line.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   vector = constline.direction
  #   if (vector)
  #     UI.messagebox(vector)
  #   else
  #     UI.messagebox("Failure")
  #   end
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def direction
  end

  # The direction= method is used to set the direction of the construction line
  # to a 3D vector.
  #
  # @example
  #   # Draw a construction line that points diagonally.
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   constline = entities.add_cline([10,10,10], [200,200,200])
  #
  #   # Create a new direction that is straight up, and redirect the line.
  #   new_direction = [0, 0, 1]
  #   constline.direction = new_direction
  #
  # @param vector
  #   The Vector3d whose direction will be used to set the
  #   direction of the construction line.
  #
  # @return vector - the new Vector3d object if successful
  #
  # @version SketchUp 6.0
  def direction=(vector)
  end

  # The end method retrieves the end point of a construction line in the form of
  # a 3D point.
  #
  # If the construction line is infinite at the end, this returns nil.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   endofline = constline.end
  #
  # @return point - a Point3d object representing the end of the
  #   construction line
  #
  # @version SketchUp 6.0
  def end
  end

  # The end= method is used to set the end point of the construction line. This
  # method will make the length finite at the end.
  #
  # Set the end to nil to make the construction line infinite at the end.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   point3 = Geom::Point3d.new(10,10,10)
  #   constline = entities.add_cline(point1, point2)
  #   UI.messagebox(constline.end)
  #   # Will display point2
  #
  # @overload end=(point)
  #
  #   @param [Geom::Point3d] point The Point3d object to set for the end point
  #     of the construction line.
  #   @return              point - a Point3d object if successful or nil
  #
  # @overload end=(nil)
  #
  #   @param [nil] nil Sets the end point to infinite.
  #   @return              point - a Point3d object if successful or nil
  #
  # @version SketchUp 6.0
  def end=(arg)
  end

  # The position method is used to retrieve a 3D point used to create a
  # construction line on an infinite construction line.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   vector = Geom::Vector3d.new(10,10,10)
  #   constline = entities.add_cline(point1, vector)
  #   # Returns point1 or 0,0,0
  #   position = constline.position
  #
  # @return point - the Point3d object used to create the line (if
  #   successful)
  #
  # @version SketchUp 6.0
  def position
  end

  # The position= method is used to set a 3D point that the construction passes
  # through
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   point3 = Geom::Point3d.new(0,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   position = constline.position = point3
  #
  # @param point
  #   The Point3d object for the construction line to pass
  #   through.
  #
  # @return point - the new Point3d object that the construction
  #   line will pass through (if successful)
  #
  # @version SketchUp 6.0
  def position=(point)
  end

  # The reverse! method is used to reverse the direction of the construction
  # line.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   status = constline.reverse!
  #
  # @return status
  #
  # @version SketchUp 6.0
  def reverse!
  end

  # The start method is used to retrieve the starting point of a construction
  # line.
  #
  # If the construction line is infinite at the start, this returns nil.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   startofline = constline.start
  #
  # @return point - the Poin3d object representing the starting
  #   point of the construction line (if successful)
  #
  # @version SketchUp 6.0
  def start
  end

  # The start= method is used to set the start point of a construction line
  # making the line's length finite at the start.
  #
  # Setting the start to nil will make the construction line infinite at the
  # start.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   point3 = Geom::Point3d.new(5,5,5)
  #   constline = entities.add_cline(point1, point2)
  #   startofline = constline.start = point3
  #
  # @overload start=(point)
  #
  #   @param [Geom::Point3d] point The Point3d object to set for the start point
  #     of the construction line.
  #   @return              point - a Point3d object if successful or nil
  #
  # @overload start=(nil)
  #
  #   @param [nil] nil Sets the start point to infinite.
  #   @return              point - a Point3d object if successful or nil
  #
  # @version SketchUp 6.0
  def start=(arg)
  end

  # The stipple method is used to retrieve the stipple pattern used to display
  # the construction line.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   UI.messagebox(constline.stipple)
  #
  # @return pattern - the stipple pattern being used
  #
  # @version SketchUp 6.0
  def stipple
  end

  # The stipple= method is used to set the stipple pattern used to display
  # the construction line. The stipple pattern is given as a string.
  # Valid strings are:
  # - <code>"."</code> (Dotted Line),
  # - <code>"-"</code> (Short Dashes Line),
  # - <code>"_"</code> (Long Dashes Line),
  # - <code>"-.-"</code> (Dash Dot Dash Line).
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline(point1, point2)
  #   constline.stipple = "-.-"
  #
  # @param pattern
  #   - the stipple pattern to use
  #
  # @version SketchUp 6.0
  def stipple=(pattern)
  end

end

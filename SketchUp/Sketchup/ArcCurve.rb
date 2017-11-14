# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# An ArcCurve is a Curve that makes up part of a circle. This is the
# underlying class for circles as well.
#
# You can think of ArcCurves as entities that were created with SketchUp's
# Arc or Circle drawing tools and Curves as entities that were created with
# the Freehand drawing tool.
#
# However, keep in mind that all Curves in SketchUp are really edges with
# some extra data attached to them. When you use the API to draw a Curve or
# ArcCurve, you are really drawing edges.
#
# ArcCurve is a subclass of Curve, so all of the methods that are available
# to Curves are also available to ArcCurves.
#
# @example
#   # Draw a circle on the ground plane around the origin.
#   center_point = Geom::Point3d.new(0,0,0)
#   normal_vector = Geom::Vector3d.new(0,0,1)
#   radius = 10
#
#   entities = Sketchup.active_model.entities
#   edgearray = entities.add_circle center_point, normal_vector, radius
#   first_edge = edgearray[0]
#   arccurve = first_edge.curve
#
# @version SketchUp 6.0
class Sketchup::ArcCurve < Sketchup::Curve

  # Instance Methods

  # The center method is used to retrieve the Point3d that is at the center of
  # the circular arc.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   point = arccurve.center
  #
  # @return point - a Point3d at the center of the arc if
  #   successful
  #
  # @version SketchUp 6.0
  def center
  end

  # The {#end_angle} method is used to retrieve the angle of the end of the arc
  # measured from the X axis in radians.
  #
  # @example
  #   # Create a 1/2 circle, normal to the Z axis
  #   start_a = 0.0
  #   end_a = 180.degrees
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edges = entities.add_arc(ORIGIN, X_AXIS, Z_AXIS, 5, start_a, end_a)
  #   arc_curve = edges.first.curve
  #   end_angle = arc_curve.end_angle
  #
  # @note A bug in SketchUp 2017 and older will report the end-angle for some
  #   circles as more than 360 degrees. In such case, subtract +2 * PI+ from
  #   the end angle value.
  #
  # @return [Float]
  #
  # @version SketchUp 6.0
  def end_angle
  end

  # The normal method retrieves a Vector3d that is perpendicular to the plane of
  # the arc.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   v = arccurve.normal
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def normal
  end

  # The plane method is used to retrieve the plane of the arc.
  #
  # Refer to the Geom module for instructions to create a plane.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   plane = arccurve.plane
  #
  # @return plane - the plane of the arc if successful
  #
  # @version SketchUp 6.0
  def plane
  end

  # The radius method is used to retrieve the radius of the arc.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   radius = arccurve.radius
  #
  # @return radius - the radius of the arc if successful
  #
  # @version SketchUp 6.0
  def radius
  end

  # The start_angle method is used to retrieve the angle of the start of the
  # arc, measured from the X axis in radians.
  #
  # @example
  #   # Create a 1/4 circle, radius of 5, normal to the Z axis
  #   center = Geom::Point3d.new 0, 0, -1
  #   normal = Geom::Vector3d.new 0,0,1
  #   xaxis = Geom::Vector3d.new 1,0,0
  #   start_a = Math::PI/2
  #   end_a = Math::PI
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_arc center, xaxis, normal, 5, start_a, end_a
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   start_angle = arccurve.start_angle
  #
  # @return angle - the angle of the start of the arc if successful
  #
  # @version SketchUp 6.0
  def start_angle
  end

  # The xaxis method is used to retrieve the X axis of the coordinate system for
  # the curve. Note that the length of the returned vector is equal to the radius
  # of the underlying curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   v = arccurve.xaxis
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def xaxis
  end

  # The yaxis method is used to retrieve the Y axis of the coordinate system for
  # the curve. Note that the length of the returned vector is equal to the radius
  # of the underlying curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   arccurve = edge.curve
  #   v = arccurve.yaxis
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def yaxis
  end

end

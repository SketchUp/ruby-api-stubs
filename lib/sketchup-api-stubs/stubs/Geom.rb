# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Geom module defines a number of Module methods that let you perform
# different geometric operations.
#
# The methods in this module take lines
# and planes as arguments. There is no special class for representing lines or
# planes. Arrays are used for both.
#
# A line can be represented as either an Array of a point and a
# vector, or as an Array of two points.
#   line1 = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
#   line2 = [Geom::Point3d.new(0, 0, 0), Geom::Point3d.new(0, 0, 100)]
#
# A plane can be represented as either an Array
# of a point and a vector, or as an Array of 4 numbers that give the
# coefficients of a plane equation.
#   plane1 = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
#   plane2 = [0, 0, 1, 0]
#
# There are several good books on 3D math if you are new to
# the concepts of a line, plane, and vector.
#
# @note Lines and Planes are infinite.
#
# @version SketchUp 6.0
module Geom

  # Class Methods

  # The {.closest_points} method is used to compute the closest points on two
  # lines.
  #
  # line.
  #
  # @example
  #   line1 = [Geom::Point3d.new(0, 2, 0), Geom::Vector3d.new(1, 0, 0)]
  #   line2 = [Geom::Point3d.new(3, 0, 0), Geom::Vector3d.new(0, 1, 0)]
  #   # This will return a point Point3d(3, 2, 0).
  #   points = Geom.closest_points(line1, line2)
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d)] line1
  #   The first line to
  #   intersect
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d)] line2
  #   The second line to
  #   intersect
  #
  # @return [Array(Geom::Point3d, Geom::Point3d)] An array of two points. The
  #   first point is on the first line and the second point is on the second
  #
  # @version SketchUp 6.0
  def self.closest_points(line1, line2)
  end

  # The {.fit_plane_to_points} method is used to compute a plane that is a best
  # fit to an array of points. If more than three points are given some of the
  # points may not be on the plane.
  #
  # The plane is returned as an {Array} of 4 numbers which are the
  # coefficients of the plane equation <code>Ax + By + Cz + D = 0</code>.
  #
  # @example
  #   point1 = Geom::Point3d.new(0, 0, 0)
  #   point2 = Geom::Point3d.new(10, 10, 10)
  #   point3 = Geom::Point3d.new(25, 25, 25)
  #   plane = Geom.fit_plane_to_points(point1, point2, point3)
  #
  # @overload fit_plane_to_points(point1, point2, point3, ...)
  #
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point2
  #   @param [Geom::Point3d] point3
  #   @return [Array(Geom::Point3d, Geom::Vector3d)] A plane
  #
  # @overload fit_plane_to_points(points)
  #
  #   @param [Array<Geom::Point3d>] points
  #   @return [Array(Geom::Point3d, Geom::Vector3d)] A plane
  #
  # @version SketchUp 6.0
  def self.fit_plane_to_points(*args)
  end

  # The {.intersect_line_line} computes the intersection of two lines.
  #
  # @example
  #   # Defines a line parallel to the Y axis, offset 20 units.
  #   line1 = [Geom::Point3d.new(20, 0, 0), Geom::Vector3d.new(0, 1, 0)]
  #   # Defines a line parallel to the X axis, offset 10 units.
  #   line2 = [Geom::Point3d.new(0, 10, 0), Geom::Point3d.new(20, 10, 0)]
  #   # This will return a point Point3d(20, 10, 0).
  #   point = Geom.intersect_line_line(line1, line2)
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d)] line1
  #   The first line to
  #   intersect.
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d)] line2
  #   The second line to
  #   intersect.
  #
  # @return [Geom::Point3d, nil] The intersection point. Returns +nil+ if they
  #   do not intersect.
  #
  # @see Geom
  #   The Geom module for alternative versions of defining a line.
  #
  # @version SketchUp 6.0
  def self.intersect_line_line(line1, line2)
  end

  # The {.intersect_line_plane} method is used to compute the intersection of a
  # line and a plane.
  #
  # @example
  #   # Defines a line parallel to the X axis, offset 20 units.
  #   line = [Geom::Point3d.new(-10, 20, 0), Geom::Vector3d.new(1, 0, 0)]
  #   # Defines a plane with it's normal parallel to the x axis.
  #   plane = [Geom::Point3d.new(10, 0 ,0), Geom::Vector3d.new(1, 0, 0)]
  #   # This will return a point Point3d(10, 20, 0).
  #   point = Geom.intersect_line_plane(line, plane)
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d)] line
  #
  # @param [Array(Geom::Point3d, Geom::Point3d)] plane
  #
  # @return [Geom::Point3d, nil] A Point3d object. Returns +nil+ if they do not
  #   intersect.
  #
  # @see Geom
  #   The Geom module for alternative versions of defining lines and
  #   planes.
  #
  # @version SketchUp 6.0
  def self.intersect_line_plane(line, plane)
  end

  # The {.intersect_plane_plane} method is used to compute the intersection of
  # two planes.
  #
  # @example
  #   # Defines a plane with it's normal parallel to the x axis.
  #   plane1 = [Geom::Point3d.new(10, 0 ,0), Geom::Vector3d.new(1, 0, 0)]
  #   # Defines a plane with it's normal parallel to the y axis.
  #   plane2 = [Geom::Point3d.new(0, 20 ,0), Geom::Vector3d.new(0, 1, 0)]
  #   # This will return a line [Point3d(10, 20, 0), Vector3d(0, 0, 1)].
  #   line = Geom.intersect_plane_plane(plane1, plane2)
  #
  # @param [Array(Geom::Point3d, Geom::Point3d)] plane1
  #   The first plane to
  #   intersect
  #
  # @param [Array(Geom::Point3d, Geom::Point3d)] plane2
  #   The second plane to
  #   intersect
  #
  # @return [Array(Geom::Point3d, Geom::Vector3d)] A line where the planes
  #   intersect if successful. Returns +nil+ if the planes do not intersect.
  #
  # @version SketchUp 6.0
  def self.intersect_plane_plane(plane1, plane2)
  end

  # The {.linear_combination} method is used to compute the linear combination of
  # points or vectors.
  #
  # A linear combination is a standard term for vector math. It is defined as
  # vector = weight1 * vector1 + weight2 * vector2.
  #
  # @example
  #   point1 = Geom::Point3d.new(1, 1, 1)
  #   point2 = Geom::Point3d.new(10, 10, 10)
  #   # Gets the point on the line segment connecting point1 and point2 that is
  #   # 3/4 the way from point1 to point2: Point3d(7.75, 7.75, 7.75).
  #   point = Geom.linear_combination(0.25, point1, 0.75, point2)
  #
  # @overload linear_combination(weight1, point1, weight2, point2)
  #
  #   @param [Float] weight1
  #   @param [Geom::Point3d] point1
  #   @param [Float] weight2
  #   @param [Geom::Point3d] point2
  #   @return [Geom::Point3d]
  #
  # @overload linear_combination(weight1, vector1, weight2, vector2)
  #
  #   @param [Float] weight1
  #   @param [Geom::Vector3d] vector1
  #   @param [Float] weight2
  #   @param [Geom::Vector3d] vector2
  #   @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def self.linear_combination(weight1, pt_or_vect1, weight2, pt_or_vect2)
  end

  # The {.point_in_polygon_2D} method is used to determine whether a point is
  # inside a polygon. The z component of both the point you're checking and
  # the points in the polygon are ignored, effectively making it a 2-d check.
  #
  # @example
  #   # Create a point that we want to check. (Note that the 3rd coordinate,
  #   # the z, is ignored for purposes of the check.)
  #   point = Geom::Point3d.new(5, 0, 10)
  #
  #   # Create a series of points of a triangle we want to check against.
  #   triangle = []
  #   triangle << Geom::Point3d.new(0, 0, 0)
  #   triangle << Geom::Point3d.new(10, 0, 0)
  #   triangle << Geom::Point3d.new(0, 10, 0)
  #
  #   # Test to see if our point is inside the triangle, counting hits on
  #   # the border as an intersection in this case.
  #   hits_on_border_count = true
  #   status = Geom.point_in_polygon_2D(point, triangle, hits_on_border_count)
  #
  # @param [Geom::Point3d] point
  #
  # @param [Array<Geom::Point3d>] polygon
  #   An array of points that represent the
  #   corners of the polygon you are checking against.
  #
  # @param [Boolean] check_border
  #   Pass true if a point on the border should be
  #   counted as inside the polygon.
  #
  # @return [Boolean] +true+ if the point is inside the polygon.
  #
  # @version SketchUp 6.0
  def self.point_in_polygon_2D(point, polygon, check_border)
  end

  # Tessellates a polygon, represented as a collection of 3D points. Can include
  # holes by providing collections of points describing the inner loops. This is
  # intended to be used for planar polygons.
  #
  # Useful to draw concave polygons using {Sketchup::View#draw} or
  # {Sketchup::View#draw2d}.
  #
  # It can also be useful for importers where the input format describes only the
  # loops for a polygon and you want to work with a collection of triangles.
  #
  # <b>Polygon with two holes, one empty and one filled:</b>
  #
  # <i>(See "Drawing a polygon with holes from a custom tool" example)</i>
  #
  # rdoc-image:images/geom-tesselation-polygon-with-holes.png
  #
  # @example Iterate over each triangle in the returned set
  #   polygon = [
  #     Geom::Point3d.new(0, 0, 0),
  #     Geom::Point3d.new(90, 0, 0),
  #     Geom::Point3d.new(60, 40, 0),
  #     Geom::Point3d.new(90, 90, 0),
  #     Geom::Point3d.new(30, 70, 0),
  #   ]
  #   triangles = Geom.tesselate(polygon)
  #   triangles.each_slice(3) { |triangle|
  #     # Work with each triangle set...
  #   }
  #   # Or get an array of triangles:
  #   triangles_set = triangles.each_slice(3).to_a
  #
  # @example Drawing a polygon with holes from a custom tool
  #   class ExampleTool
  #
  #     def initialize
  #       polygon = [
  #         Geom::Point3d.new(0, 0, 0),
  #         Geom::Point3d.new(90, 0, 0),
  #         Geom::Point3d.new(60, 40, 0),
  #         Geom::Point3d.new(90, 90, 0),
  #         Geom::Point3d.new(30, 70, 0),
  #       ] # Counter-clockwise order
  #       hole1 = [
  #         Geom::Point3d.new(20, 10, 0),
  #         Geom::Point3d.new(40, 10, 0),
  #         Geom::Point3d.new(45, 25, 0),
  #         Geom::Point3d.new(30, 20, 0),
  #         Geom::Point3d.new(25, 25, 0),
  #       ].reverse # Clockwise order - empty hole
  #       hole2 = [
  #         Geom::Point3d.new(30, 40, 0),
  #         Geom::Point3d.new(50, 40, 0),
  #         Geom::Point3d.new(50, 50, 0),
  #         Geom::Point3d.new(30, 50, 0),
  #       ].reverse # Counter-clockwise order - filled hole
  #       @triangles = Geom.tesselate(polygon, hole1, hole2)
  #     end
  #
  #     def activate
  #       Sketchup.active_model.active_view.invalidate
  #     end
  #
  #     def onMouseMove(flags, x, y, view)
  #       view.invalidate
  #     end
  #
  #     def getExtents
  #       bounds = Geom::BoundingBox.new
  #       bounds.add(@triangles)
  #       bounds
  #     end
  #
  #     def draw(view)
  #       view.drawing_color = Sketchup::Color.new(192, 0, 0)
  #       view.draw(GL_TRIANGLES, @triangles)
  #     end
  #
  #   end
  #
  #   Sketchup.active_model.select_tool(ExampleTool.new)
  #
  # @note The winding order of the polygons matter. The outer loop should be
  #   in counter-clockwise order. To cut an empty hole the inner loops should be
  #   in clockwise order, otherwise they will create a loop filled with
  #   triangles.
  #
  # @note The tesselation is using the same logic as SketchUp its rendering
  #   pipeline. But the exact result is an implementation detail which may change
  #   between versions. In particularly the results of degenerate polygons and
  #   non-planar  polygons is undefined  as part of the API contract. Such
  #   polygons are for example polygons where all points are colinear, polygons
  #   with duplicate points, non-planar polygons.
  #
  # @note If you want the triangles from an existing {Sketchup::Face} it's better
  #   to use {Sketchup::Face#mesh}.
  #
  # @param [Array<Geom::Point3d>] polygon_loop_points
  #
  # @param [Array<Array<Geom::Point3d>>] inner_loop_points
  #
  # @raise [ArgumentError] if any of the loops contain less than three points.
  #
  # @raise [RuntimeError] if the tesselator returned an error.
  #
  # @return [Array<Geom::Point3d>] an array of points with a stride of three
  #   representing a set of triangles.
  #
  # @see Sketchup::View#draw
  #
  # @see Sketchup::View#draw2d
  #
  # @version SketchUp 2020.0
  def self.tesselate(polygon_loop_points, *inner_loop_points)
  end

end

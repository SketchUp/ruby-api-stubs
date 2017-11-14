# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Point3d class allows you to work with a point in 3D space.
# The point is basically just a series of values representing x, y and z
# coordinates.
#
# The values are specified as [x,y,z]. For example [100,200,300].
# To create a point call Geom::Point3d.new, where the creation method
# can take a variety of arguments:
#
# In addition to the methods below, there are a series of geometry
# related methods that are on the Array class, since Point3d objects
# can also be represented as a 3-element Array. These Array-level methods are
# for operations such as determining if a point is on a line, on a plane, etc.
# See the Array class for details.
#
# @example
#   # No arguments, creates a point at the origin [0,0,0]
#   pt1 = Geom::Point3d.new
#
#   # Creates a point at x of 100, y of 200, z of 300.
#   pt2 = Geom::Point3d.new(100,200,300)
#
#   # You can also create a point directly by simply assigning the x, y and z
#   # values to a variable as an array:
#   pt3 = [100,200,300]
#
# @version SketchUp 6.0
class Geom::Point3d

  # Class Methods

  # The linear_combination method is used to create a new point as a linear
  # combination of two points. This method is generally used to get a point at
  # some percentage along a line connecting the two points.
  #
  # A linear combination is a standard term for vector math. It is defined as
  # point = weight1 * point1 + weight2 * point2.
  #
  # @example
  #   point1 = Geom::Point3d.new(1,1,1)
  #   point2 = Geom::Point3d.new(10,10,10)
  #   # Gets the point on the line segment connecting point1 and point2 that is
  #   # 3/4 the way from point1 to point2.
  #   point = Geom::Point3d.linear_combination(0.25, point1, 0.75, point2)
  #   if (point)
  #     UI.messagebox(point)
  #   else
  #     UI.messagebox("Failure")
  #   end
  #
  # @param [Float] weight1
  #   A weight or percentage.
  #
  # @param [Float] point2
  #   The end point of the line.
  #
  # @param [Float] weight2
  #   A weight or percentage.
  #
  # @param [Float] point1
  #   The start point on the line.
  #
  # @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def self.linear_combination(weight1, point1, weight2, point2)
  end

  # Instance Methods

  # The '+' operator is a fast way to add to the current x, y and z values of
  # a point, or to set the values of a point by adding to other points together.
  #
  # @example
  #   pt2 = pt + vec
  #   pt = pt + [10,10,10]
  #
  # @param [Geom::Point3d] point2
  #   A Point3d object.
  #
  # @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def +(point2)
  end

  # The '-' operator is a fast way to subtract from the current x, y and z values
  # of a point.
  #
  # @example
  #   pt2 = pt - vec
  #   pt = pt - [10,10,10]
  #
  # @param [Geom::Point3d] point2
  #   A Point3d object.
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def -(point2)
  end

  # The '<' operator is a fast way to determine if another point is closer to the
  # origin.
  #
  # @example
  #   pt1 = Geom::Point3d.new(10,10,10)
  #   pt2 = Geom::Point3d.new(20,20,20)
  #   result = pt1 < pt2
  #
  # @param [Geom::Point3d] point2
  #   A Point3d object.
  #
  # @return [Boolean] true if the point2 is closer to the origin.
  #
  # @version SketchUp 6.0
  def <(point2)
  end

  # The == method is used to compare two points for equality.
  #
  # This uses the standard SketchUp tolerance to determine if two points are the
  # same.
  #
  # Points can be compared to one another or to an array representing
  # x, y and z coordinates, as in the following examples:
  #
  # @example
  #   if( pt1 == pt2 )
  #     UI.messagebox('equal')
  #   end
  #
  #   # ... or ...
  #   if( pt1 == [100,200,300] ) ...
  #     UI.messagebox('equal')
  #   end
  #
  # @example
  #   point1 = Geom::Point3d.new(1,1,1)
  #   point2 = Geom::Point3d.new(10,10,10)
  #   status = point1 == point2
  #
  # @param [Geom::Point3d] point2
  #   A Point3d object.
  #
  # @return [Boolean] true if both points are equal; false if points are not
  #   equal
  #
  # @version SketchUp 6.0
  def ==(point2)
  end

  # The [] method is used to retrieve the value of the point at the specified
  # index.
  #
  # @example
  #   point = Geom::Point3d.new(1, 2, 3)
  #
  #   # retrieves the y value of 2
  #   yvalue = point[1]
  #
  # @param [Integer] index
  #   The index for a specific x, y, or z value within the
  #   Point3d.
  #
  # @return [Length] an x, y, or z value if successful
  #
  # @version SketchUp 6.0
  def [](index)
  end

  # The []= method is used to set the x, y, or z value of the point based on the
  # specific index of the value.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   yvalue = point[1] = 4
  #
  # @param [Integer] index
  #   The index for a specific x, y, or z value within the
  #   Point3d.
  #
  # @param [Numeric] new_value
  #   New x, y, or z value.
  #
  # @return [Numeric] the newly set x, y, or z value if successful
  #
  # @version SketchUp 6.0
  def []=(index, new_value)
  end

  # The clone method is used to create another point identical to the point
  # being cloned.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   newpoint = point.clone
  #
  # @return [Geom::Point3d] the cloned Point3d object
  #
  # @version SketchUp 6.0
  def clone
  end

  # The distance method is used to compute the distance from a point to another
  # point.
  #
  # @example
  #   point1 = Geom::Point3d.new(1,1,1)
  #   point2 = Geom::Point3d.new(10,10,10)
  #   distance = point1.distance(point2)
  #
  # @param [Geom::Point3d] point2
  #   The Point3d object to compute the distance to.
  #
  # @return [Length] the distance in current units
  #
  # @version SketchUp 6.0
  def distance(point2)
  end

  # The distance_to_line method is used to compute the distance from a point to
  # a line.
  #
  # See Geom module for how to specify a line.
  #
  # @example
  #   point1 = Geom::Point3d.new(1,1,1)
  #   line = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
  #   distance = point1.distance_to_line(line)
  #
  # @note This function returns a `Float` value, not a `Length`.
  #
  # @param line
  #   A line (see Geom for information on creating lines).
  #
  # @return [Float] the distance between a point and line in
  #   internal units if successful
  #
  # @version SketchUp 6.0
  def distance_to_line(line)
  end

  # The distance_to_plane method is used to compute the distance from the point
  # to a plane.
  #
  # See module Geom for how to specify a plane.
  #
  # @example
  #   distance = point.distance_to_plane(plane)
  #
  # @note This function returns a `Float` value, not a `Length`.
  #
  # @param plane
  #   A plane (see Geom for how to create a plane).
  #
  # @return [Float] a distance between a point and a plane in
  #   internal units if successful
  #
  # @version SketchUp 6.0
  def distance_to_plane(plane)
  end

  # The new method is used to create a new 3D point.
  #
  # @example
  #   # No arguments, creates a point at the origin [0,0,0]
  #   pt1 = Geom::Point3d.new
  #
  #   # Creates a point at x of 100, y of 200, z of 300.
  #   pt2 = Geom::Point3d.new(100,200,300)
  #
  #   # You can also create a point directly by simply assigning the x, y and z
  #   # values to a variable as an array:
  #   pt3 = [100,200,300]
  #
  # @overload initialize
  #
  #   @return [Geom::Point3d]
  #
  # @overload initialize(x, y, z = 0.0)
  #
  #   @param [Numeric] x  The location along the x axis.
  #   @param [Numeric] y  The location along the y axis.
  #   @param [Numeric] z  The location along the z axis.
  #   @return [Geom::Point3d]
  #
  # @overload initialize(point3d)
  #
  #   @param [Geom::Point3d] point3d
  #   @return [Geom::Point3d]
  #
  # @overload initialize(vertex)
  #
  #   @param [Sketchup::Vertex] vertex
  #   @return [Geom::Point3d]
  #
  # @overload initialize(array2d)
  #
  #   @param [Array(Numeric, Numeric)] array2d
  #   @return [Geom::Point3d]
  #
  # @overload initialize(input_point)
  #
  #   @param [Sketchup::InputPoint] input_point
  #   @return [Geom::Point3d]
  #
  # @overload initialize(array3d)
  #
  #   @param [Array(Numeric, Numeric, Numeric)] array3d
  #   @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The inspect method is used to format a 3D point as a string.
  #
  # You will not often use these function directly. Instead, they are called
  # automatically when an object is output using a print command like 'puts',
  # which writes to the Ruby console.
  #
  # @example
  #   point = Geom::Point3d.new(10,10,10)
  #   string = point.inspect
  #
  # @return [String] a string point representation
  #
  # @version SketchUp 6.0
  def inspect
  end

  # The offset method is used to offset a point by a vector and return a new
  # point. The length of the vector must not be zero.
  #
  # @example
  #   point1 = Geom::Point3d.new(10,10,10)
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   point2 = point1.offset(vector)
  #
  # @param [Geom::Vector3d] vector
  #   A Vector3d object to offset the point by.
  #
  # @param [Numeric] length
  #   the distance to offset. If not provided, the
  #   offset is my a distance equal to the vector length.
  #
  # @return [Geom::Point3d] - a new Point3d object
  #
  # @version SketchUp 6.0
  def offset(vector, length = vector.length)
  end

  # The offset! method is used to offset a point by a vector. The point itself
  # is modified.
  #
  # Unlike offset, the point itself is modified.
  #
  # @example
  #   point1 = Geom::Point3d.new(10,10,10)
  #   vector = Geom::Vector3d.new(0,0,1)
  #   point2 = point1.offset!(vector)
  #
  # @param [Geom::Vector3d] vector
  #   A Vector3d object to offset the point by.
  #
  # @param [Numeric] length
  #   the distance to offset. If not provided, the
  #   offset is my a distance equal to the vector length.
  #
  # @return [Geom::Point3d] a new Point3d object
  #
  # @version SketchUp 6.0
  def offset!(vector, length = vector.length)
  end

  # The on_line? method is used to determine if the point is on a line.
  #
  # See module Geom for the various ways to specify a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
  #   point = Geom::Point3d.new(10,10,10)
  #   status = point.on_line?(line)
  #
  # @param line
  #   A line (see Geom for how to create a line).
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def on_line?(line)
  end

  # The on_plane? method is used to determine if the point is on a plane.
  #
  # See module Geom for the various ways to specify a plane.
  #
  # @example
  #   plane = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
  #   point = Geom::Point3d.new(10,10,10)
  #   status = point.on_plane?(plane)
  #
  # @param plane
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def on_plane?(plane)
  end

  # The project_to_line method is used to retrieve the point on a line that is
  # closest to this point.
  #
  # The line may be defined by either a point and a vector or by two points.
  #
  # @example
  #   line = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
  #   point = Geom::Point3d.new(10,10,10)
  #   projected_point = point.project_to_line(line)
  #
  # @param line
  #   see Geom for how to specify a line
  #
  # @return [Geom::Point3d] the Point3d that is on a line closest to the
  #   point
  #
  # @version SketchUp 6.0
  def project_to_line(line)
  end

  # The project_to_plane method is used to retrieve the point on a plane that is
  # closest to the point.
  #
  # The plane may be defined by either a point on the plane and a vector
  # perpendicular to the plane or by the coeficients to the plane equation AX +
  # BY + CZ + D = 0. See Geom for details.
  #
  # @example
  #   plane = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
  #   point = Geom::Point3d.new(10,10,10)
  #   projected_point = point.project_to_plane(plane)
  #
  # @param plane
  #   A plane (see Geom for how to create a plane).
  #
  # @return [Geom::Point3d] the Point3d that is on a plane closest to the
  #   point
  #
  # @version SketchUp 6.0
  def project_to_plane(plane)
  end

  # The {#set!} method is used to set the values of the Point3d.
  #
  # @example
  #   point = Geom::Point3d.new(10,10,10)
  #   point = point.set!(100,200,300)
  #
  # @overload set!(x, y, z)
  #
  #   @param [Numeric] x The x value for the point.
  #   @param [Numeric] y The y value for the point.
  #   @param [Numeric] z The z value for the point.
  #   @return [Geom::Point3d] The newly set Point3d object
  #
  # @overload set!(point3d)
  #
  #   @param point3d [Geom::Point3d]
  #   @return [Geom::Point3d]
  #
  # @overload set!(array3d)
  #
  #   @param [Array(Numeric, Numeric, Numeric)] array3d
  #   @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def set!(*args)
  end

  # The to_a method is used to convert the point to an array of 3 numbers
  #
  # @example
  #   point = Geom::Point3d.new(10,20,30)
  #   array = point.to_a
  #
  #   pt = [100,200,300]
  #   # outputs [100.0,200.0,300.0]
  #   UI.messagebox(pt.to_a)
  #
  # @return [Array(Length, Length, Length)] an array of three numbers representing x,y,z of
  #   the Point3d
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The to_s method is used to retrieve a string representation of a point.
  #
  # @example
  #   point = Geom::Point3d.new(10,10,10)
  #   str = point.to_s
  #
  # @return [String] the string representation of the Point3d
  #
  # @version SketchUp 6.0
  def to_s
  end

  # Apply a Transformation to a point, returning a new point. The original
  # vector is unchanged by this method.
  #
  # @example
  #   transform = Geom::Transformation.new(point2)
  #   point2 = Geom::Point3d.new(100,200,300)
  #   point1 = Geom::Point3d.new(10,10,10)
  #   point3 = point1.transform(transform)
  #
  # @param [Geom::Transformation] transform
  #   A Transformation object.
  #
  # @return [Geom::Point3d] the newly transformed point
  #
  # @version SketchUp 6.0
  def transform(transform)
  end

  # Apply a Transformation to a point. The point itself is modified.
  #
  # @example
  #   transform = Geom::Transformation.new(point2)
  #   point2 = Geom::Point3d.new(100,200,300)
  #   point1 = Geom::Point3d.new(10,10,10)
  #   point1.transform!(transform)
  #
  # @param [Geom::Transformation] transform
  #   A Transformation object.
  #
  # @return [Geom::Point3d] the transformed point
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The vector_to team method retrieves the vector between points.
  #
  # @example
  #   point2 = Geom::Point3d.new(100,200,300)
  #   point1 = Geom::Point3d.new(10,10,10)
  #   vector = point1.vector_to(point2)
  #
  #   # Another example...
  #   pt1 = [1,1,0]
  #   pt2 = [3,1,0]
  #   pt1.vector_to(pt2) # returns the vector (2,0,0)
  #   pt1.vector_to(pt2) # is equivalent to (pt2 - pt1)
  #
  # @param [Geom::Point3d] point2
  #   A Point3d object.
  #
  # @return [Geom::Vector3d] a Vector object
  #
  # @version SketchUp 6.0
  def vector_to(point2)
  end

  # The x method retrieves the x value of the 3D point.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   x = point.x
  #
  # @return [Length] the x value
  #
  # @version SketchUp 6.0
  def x
  end

  # The x= method is used to set the x value of a 3D point.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   x = point.x = 2
  #
  # @param [Numeric] value
  #   The new x value.
  #
  # @return [Numeric] the newly set x value
  #
  # @version SketchUp 6.0
  def x=(value)
  end

  # The y method retrieves the y value of the 3D point.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   y = point.y
  #
  # @return [Length] the y value
  #
  # @version SketchUp 6.0
  def y
  end

  # The y= method is used to set the y value of a 3D point.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   y = point.y = 2
  #
  # @param [Numeric] value
  #   The new y value.
  #
  # @return [Numeric] the newly set y value
  #
  # @version SketchUp 6.0
  def y=(value)
  end

  # The z method retrieves the z value of the 3D point.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   z = point.x
  #
  # @return [Length] the z value
  #
  # @version SketchUp 6.0
  def z
  end

  # The z= method is used to set the z value of a 3D point.
  #
  # @example
  #   point = Geom::Point3d.new(1,2,3)
  #   z = point.z = 2
  #
  # @param [Numeric] value
  #   The new z value.
  #
  # @return [Numeric] the newly set z value
  #
  # @version SketchUp 6.0
  def z=(value)
  end

end

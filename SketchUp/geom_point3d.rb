# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

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
  #   point1 = Geom::Point3d.new 1,1,1
  #   point2 = Geom::Point3d.new 10,10,10
  #   # Gets the point on the line segment connecting point1 and point2 that is
  #   # 3/4 the way from point1 to point2.
  #   point = Geom::Point3d.linear_combination 0.25, point1, 0.75, point2
  #   if (point)
  #     UI.messagebox point
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param weight1
  #   A weight or percentage.
  #
  # @param point1
  #   The start point on the line.
  #
  # @param point2
  #   The end point of the line.
  #
  # @param weight2
  #   A weight or percentage.
  #
  # @return point - a Point3d object
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
  # @param point2
  #   A Point3d object.
  #
  # @return point - a Point3d object
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
  # @param point2
  #   A Point3d object.
  #
  # @return vector - a Vector object
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
  # @param point2
  #   A Point3d object.
  #
  # @return true if the point2 is closer to the origin.
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
  #   point1 = Geom::Point3d.new 1,1,1
  #   point2 = Geom::Point3d.new 10,10,10
  #   status = point1 == point2
  #
  # @param point2
  #   A Point3d object.
  #
  # @return status - true if both points are equal; false if points are not
  #   equal
  #
  # @version SketchUp 6.0
  def ==(point2)
  end

  # The [] method is used to retrieve the value of the point at the specified
  # index.
  #
  # @example 
  #   point = Geom::Point3d.new 1, 2, 3
  #   
  #   # retrieves the y value of 2
  #   yvalue = point[1]
  #
  # @param index
  #   The index for a specific x, y, or z value within the
  #   Point3d.
  #
  # @return value - an x, y, or z value if successful
  #
  # @version SketchUp 6.0
  def [](index)
  end

  # The []= method is used to set the x, y, or z value of the point based on the
  # specific index of the value.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   yvalue = point[1] = 4
  #
  # @param new_value
  #   New x, y, or z value.
  #
  # @return status - the newly set x, y, or z value if successful
  #
  # @version SketchUp 6.0
  def []=(new_value)
  end

  # The clone method is used to create another point identical to the point
  # being cloned.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   newpoint = point.clone
  #
  # @return point2 - the cloned Point3d object
  #
  # @version SketchUp 6.0
  def clone
  end

  # The distance method is used to compute the distance from a point to another
  # point.
  #
  # @example 
  #   point1 = Geom::Point3d.new 1,1,1
  #   point2 = Geom::Point3d.new 10,10,10
  #   distance = point1.distance point2
  #
  # @param point2
  #   The Point3d object to compute the distance to.
  #
  # @return distance - the distance in current units
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
  #   point1 = Geom::Point3d.new 1,1,1
  #   line = [Geom::Point3d.new(0,0,0), Geom::Vector3d.new(0,0,1)]
  #   distance = point1.distance_to_line line
  #
  # @param line
  #   A line (see Geom for information on creating lines).
  #
  # @return distance - the distance between a point and line in
  #   current units if successful
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
  #   distance = point.distance_to_plane plane
  #
  # @param plane
  #   A plane (see Geom for how to create a plane).
  #
  # @return distance - a distance between a point and a plane in
  #   current units if successful
  #
  # @version SketchUp 6.0
  def distance_to_plane(plane)
  end

  # The new method is used to create a new 3D point.
  # 
  # With no arguments, this creates a point at the origin (0,0,0). With two
  # values, it creates a point at (x,y,0).
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
  # @param x
  #   The location along the x axis.
  #
  # @param y
  #   The location along the y axis.
  #
  # @param z
  #   The location along the z axis.
  #
  # @return point - the newly created Point3d object
  #
  # @version SketchUp 6.0
  def initialize(x, y, z)
  end

  # The inspect method is used to format a 3D point as a string.
  # 
  # You will not often use these function directly. Instead, they are called
  # automatically when an object is output using a print command like 'puts',
  # which writes to the Ruby console.
  #
  # @example 
  #   point = Geom::Point3d.new 10,10,10
  #   string = point.inspect
  #
  # @return point - a string point representation
  #
  # @version SketchUp 6.0
  def inspect
  end

  # The offset method is used to offset a point by a vector and return a new
  # point. The length of the vector must not be zero.
  #
  # @example 
  #   point1 = Geom::Point3d.new(10,10,10)
  #   vector = Geom::Vector3d.new(0,0,1)
  #   point2 = point1.offset! vector
  #
  # @param vector
  #   A Vector3d object to offset the point by.
  #
  # @param length
  #   the distance to offset. If not provided, the
  #   offset is my a distance equal to the vector length.
  #
  # @return point2 - a new Point3d object
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
  #   point2 = point1.offset! vector
  #
  # @param vector
  #   A Vector3d object to offset the point by.
  #
  # @param length
  #   the distance to offset. If not provided, the
  #   offset is my a distance equal to the vector length.
  #
  # @return point2 - a new Point3d object
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
  #   point = Geom::Point3d.new 10,10,10
  #   status = point.on_line? line
  #
  # @param line
  #   A line (see Geom for how to create a line).
  #
  # @return status - true if the point is on the line; false if the
  #   point is not on the line
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
  #   point = Geom::Point3d.new 10,10,10
  #   status = point.on_plane? plane
  #
  # @param plane
  #
  # @return status - true if the point is on the plane; false if
  #   the point is not on the plane
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
  #   point = Geom::Point3d.new 10,10,10
  #   projected_point = point.project_to_line line
  #
  # @param line
  #   - see Geom for how to specify a line
  #
  # @return point - the Point3d that is on a line closest to the
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
  #   point = Geom::Point3d.new 10,10,10
  #   projected_point = point.project_to_plane plane
  #
  # @param plane
  #   A plane (see Geom for how to create a plane).
  #
  # @return point - the Point3d that is on a plane closest to the
  #   point
  #
  # @version SketchUp 6.0
  def project_to_plane(plane)
  end

  # The set! method is used to set the values of the Point3d.
  #
  # @example 
  #   point = Geom::Point3d.new 10,10,10
  #   point = point.set! 100,200,300
  #
  # @param x
  #   The location along the x axis .
  #
  # @param y
  #   The location along the y axis.
  #
  # @param z
  #   The location along the z axis.
  #
  # @return point - the newly created Point3d object
  #
  # @version SketchUp 6.0
  def set!(x, y, z)
  end

  # The to_a method is used to convert the point to an array of 3 numbers
  #
  # @example 
  #   point = Geom::Point3d.new 10,20,30
  #   array = point.to_a
  #   
  #   pt = [100,200,300]
  #   # outputs [100.0,200.0,300.0]
  #   UI.messagebox(pt.to_a)
  #
  # @return array - an array of three numbers representing x,y,z of
  #   the Point3d
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The to_s method is used to retrieve a string representation of a point.
  #
  # @example 
  #   point = Geom::Point3d.new 10,10,10
  #   str = point.to_s
  #
  # @return string - the string representation of the Point3d
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The transform! method is used to apply a Transformation to a point.
  # 
  # Unlike the transform method, the point itself is modified.
  #
  # @example 
  #   transform = Geom::Transformation.new(point2)
  #   point2 = Geom::Point3d.new 100,200,300
  #   point1 = Geom::Point3d.new 10,10,10
  #   point1.transform! transform
  #
  # @param transform
  #   A Transformation object.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def transform(transform)
  end

  # The transform! method is used to apply a Transformation to a point to create
  # a new point.
  #
  # @example 
  #   transform = Geom::Transformation.new(point2)
  #   point2 = Geom::Point3d.new 100,200,300
  #   point1 = Geom::Point3d.new 10,10,10
  #   point3 = point1.transform transform
  #
  # @param transform
  #   A Transformation object.
  #
  # @return transformed_point - the new point
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The vector_to team method retrieves the vector between points.
  #
  # @example 
  #   point2 = Geom::Point3d.new 100,200,300
  #   point1 = Geom::Point3d.new 10,10,10
  #   vector = point1.vector_to point2
  #   
  #   # Another example...
  #   pt1 = [1,1,0]
  #   pt2 = [3,1,0]
  #   pt1.vector_to( pt2 ) # returns the vector (2,0,0)
  #   pt1.vector_to(pt2) # is equivalent to (pt2 - pt1)
  #
  # @param point2
  #   A Point3d object.
  #
  # @return vector - a Vector object
  #
  # @version SketchUp 6.0
  def vector_to(point2)
  end

  # The x method retrieves the x value of the 3D point.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   x = point.x
  #
  # @return x - the new x value
  #
  # @version SketchUp 6.0
  def x
  end

  # The x= method is used to set the x value of a 3D point.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   x = point.x = 2
  #
  # @param value
  #   The new x value.
  #
  # @return x - the newly set x value
  #
  # @version SketchUp 6.0
  def x=(value)
  end

  # The y method retrieves the y value of the 3D point.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   y = point.y
  #
  # @return y - the new y value
  #
  # @version SketchUp 6.0
  def y
  end

  # The y= method is used to set the y value of a 3D point.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   y = point.y = 2
  #
  # @param value
  #   The new y value.
  #
  # @return y - the newly set y value
  #
  # @version SketchUp 6.0
  def y=(value)
  end

  # The z method retrieves the z value of the 3D point.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   z = point.x
  #
  # @return z - the z value
  #
  # @version SketchUp 6.0
  def z
  end

  # The z= method is used to set the z value of a 3D point.
  #
  # @example 
  #   point = Geom::Point3d.new 1,2,3
  #   z = point.z = 2
  #
  # @param value
  #   The new z value.
  #
  # @return z - the newly set z value
  #
  # @version SketchUp 6.0
  def z=(value)
  end

end

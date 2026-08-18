# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The {Geom::Point2d} class allows you to work with a point in 2D space.
# {Geom::Point2d} is a series of values representing x and y coordinates.
#
# The values are specified as +[x, y]+. For example [1, 1].
# To create a point call +Geom::Point2d.new+, where the creation method
# can take a variety of arguments:
#
# @example
#   # No arguments, creates a point at the origin [0, 0]
#   point1 = Geom::Point2d.new
#
#   # Creates a point at x of 1, y of 2.
#   point2 = Geom::Point2d.new(1, 2)
#
#   # You can also create a point directly by simply assigning the x, and y
#   # values to a variable as an array:
#   point3 = [1, 2]
#
# @version LayOut 2018
class Geom::Point2d

  # Instance Methods

  # The {#+} operator is a simple way to add to the current x and y values of the
  # {Geom::Point2d}, or to set the values of the {Geom::Point2d} by adding a
  # {Geom::Vector2d} to the {Geom::Point2d}.
  #
  # @example Translate Point2d with Vector2d
  #   point = Geom::Point2d.new(1, 1)
  #   vector = Geom::Vector2d.new(1, 2)
  #   # The result is a Point2d(2, 3)
  #   new_point = point + vector
  #
  # @example Translate Point2d with vector in Array form
  #   point = Geom::Point2d.new(1, 1)
  #   # The result is a Point2d(2, 3)
  #   new_point = point + [1, 2]
  #
  # @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def +(vector)
  end

  # The {#-} operator is a simple way to subtract from the current x and y values
  # of the {Geom::Point2d}.
  #
  # @example Translate Point2d by vector in Array form
  #   point = Geom::Point2d.new(4, 2)
  #   # The result is a Vector2d(3, 0)
  #   vector = point - [1, 2]
  #
  # @example Calculate the Vector2d between two Point2d
  #   point1 = Geom::Point2d.new(4, 2)
  #   point2 = Geom::Point2d.new(1, 2)
  #   # The result is a Vector2d(3, 0)
  #   vector = point1 - point2
  #
  # @example Translate Point2d with Vector2d
  #   point = Geom::Point2d.new(4, 2)
  #   vector = Geom::Vector2d.new(3, 0)
  #   # The result is a Point2d(1, 2)
  #   new_point = point - vector
  #
  # @overload -(array2d)
  #
  #   @param [Array(Numeric, Numeric)] array2d
  #   @return [Geom::Vector2d]
  #
  # @overload -(point2d)
  #
  #   @param [Geom::Point2d] point2d
  #   @return [Geom::Vector2d]
  #
  # @overload -(vector2d)
  #
  #   @param [Geom::Vector2d] vector2d
  #   @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def -(arg)
  end

  # The {#==} method compares two points for equality. This uses the standard
  # SketchUp tolerance to determine if two points are the same.
  #
  # @example
  #   point1 = Geom::Point2d.new(1, 1)
  #   point2 = Geom::Point2d.new(0, 1)
  #   # Return false
  #   status = point1 == point2
  #
  # @param [Geom::Point2d, Array(Numeric, Numeric)] point
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(point)
  end

  # The {#[]} method returns the value of the {Geom::Point2d} at the specified
  # index.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #
  #   # Returns the y value of 2
  #   yvalue = point[1]
  #
  # @param [Integer] index
  #   The index for a specific x or y value in the
  #   {Geom::Point2d}
  #
  # @return [Length] The new x or y value if successful
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#[]=} method sets the x or y value of the {Geom::Point2d} based on the
  # specific index of the value.
  #
  # @example
  #   point = Geom::Point2d.new(1,2)
  #   point[1] = 4
  #
  # @param [Integer] index
  #   The index for a specific x or y value in the
  #   {Geom::Point2d} to set
  #
  # @param [Numeric] value
  #   The value to set for x or y
  #
  # @return [Numeric] The new x or y value if successful
  #
  # @version LayOut 2018
  def []=(index, value)
  end

  # The {#clone} method creates another point identical to the {Geom::Point2d}
  # being cloned.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   new_point = point.clone
  #
  # @return [Geom::Point2d] the cloned {Geom::Point2d} object
  #
  # @version LayOut 2018
  def clone
  end

  # The {#distance} method computes the distance from the {Geom::Point2d} to
  # another {Geom::Point2d}.
  #
  # @example
  #   point1 = Geom::Point2d.new(1, 1)
  #   point2 = Geom::Point2d.new(1, 4)
  #   # The result is 3
  #   distance = point1.distance(point2)
  #
  # @param [Geom::Point2d, Array(Numeric, Numeric)] point
  #
  # @return [Numeric] the distance between the points in the current units
  #
  # @version LayOut 2018
  def distance(point)
  end

  # The {.new} method creates a new {Geom::Point2d}.
  #
  # @example
  #   # No arguments, creates a point at the origin [0, 0]
  #   point1 = Geom::Point2d.new
  #
  #   # Creates a point at x of 1 and y of 2.
  #   point2 = Geom::Point2d.new(1, 2)
  #
  #   # You can also create a point directly by simply assigning the x and y
  #   # values to a variable as an array:
  #   point3 = [1, 2]
  #
  # @overload initialize
  #
  #   @return [Geom::Point2d]
  #
  # @overload initialize(x, y)
  #
  #   @param [Numeric] x The location along the x axis
  #   @param [Numeric] y The location along the y axis
  #   @return [Geom::Point2d]
  #
  # @overload initialize(point)
  #
  #   @param [Geom::Point2d, Array(Numeric, Numeric)] point
  #   @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#inspect} method formats the {Geom::Point2d} as a string.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   string = point.inspect
  #
  # @return [String]
  #
  # @version LayOut 2018
  def inspect
  end

  # The {#offset} method offsets the {Geom::Point2d} by a {Geom::Vector2d} and
  # returns a new {Geom::Point2d}. If distance is provided, it must be non-zero.
  #
  # @example
  #   point = Geom::Point2d.new
  #   vector = Geom::Vector2d.new(0, 2)
  #   # The result is a Point2d(0, 1)
  #   new_point = point.offset(vector, 1)
  #
  # @overload offset(vector)
  #
  #   @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #   @return [Geom::Point2d]
  #
  # @overload offset(vector, distance)
  #
  #   @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #   @param [Numeric] distance The how far along the vector to offset
  #   @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def offset(*args)
  end

  # The {#offset!} method offsets the {Geom::Point2d} by a {Geom::Vector2d}.
  # The {Geom::Point2d} itself is modified. The length of the vector must not be
  # zero.
  #
  # @example
  #   point = Geom::Point2d.new
  #   vector = Geom::Vector2d.new(0, 2)
  #   # The result is a Point2d(0, 1)
  #   point.offset!(vector, 1)
  #
  # @overload offset!(vector)
  #
  #   @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #   @return [Geom::Point2d]
  #
  # @overload offset!(vector, distance)
  #
  #   @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #   @param [Numeric] distance The distance along the vector to offset
  #   @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def offset!(*args)
  end

  # The {#set!} method sets the values of the {Geom::Point2d}.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   point = point.set!([4, 5])
  #
  # @overload set!(point)
  #
  #   @param [Geom::Point2d, Array(Numeric, Numeric)] point
  #   @return [Geom::Point2d]
  #
  # @overload set!(x, y)
  #
  #   @param [Numeric] x
  #   @param [Numeric] y
  #   @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def set!(*args)
  end

  # The {#to_a} method converts the {Geom::Point2d} to an array of 2 numbers.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   array = point.to_a
  #   # The result is [1, 2]
  #   p array
  #
  # @return [Array(Numeric, Numeric)] an array of two numbers representing x, y
  #   of the {Geom::Point2d}
  #
  # @version LayOut 2018
  def to_a
  end

  # The {#to_s} method returns a string representation of the {Geom::Point2d}.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   string = point.to_s
  #
  # @return [String]
  #
  # @version LayOut 2018
  def to_s
  end

  # The {#transform} method applies a transformation to a point, returning a new
  # point. The original point is unchanged by this method.
  #
  # @example
  #   point = Geom::Point2d.new(4, 5)
  #   transformation = Geom::Transformation2d.new([1, 0, 0, 1, 2, 3])
  #   # The result is a Point2d(6, 8)
  #   transformed_point = point.transform(transformation)
  #
  # @param [Geom::Transformation2d] transform
  #   A Transformation object to apply to the point.
  #
  # @return [Geom::Point2d] the transformed point
  #
  # @version LayOut 2019
  def transform(transform)
  end

  # The {#transform!} method applies a transformation to a point. The point
  # itself is modified.
  #
  # @example
  #   point = Geom::Point2d.new(4, 5)
  #   transformation = Geom::Transformation2d.new([1, 0, 0, 1, 2, 3])
  #   # The result is a Point2d(6, 8)
  #   point.transform!(transformation)
  #
  # @param [Geom::Transformation2d] transform
  #   A Transformation object to apply to the point.
  #
  # @return [Geom::Point2d] the transformed point
  #
  # @version LayOut 2019
  def transform!(transform)
  end

  # The {#vector_to} method returns the vector between points.
  #
  # @example
  #   point1 = Geom::Point2d.new(1, 1)
  #   point2 = Geom::Point2d.new(3, 1)
  #
  #   # The result is a Vector2d(2, 0)
  #   vector = point1.vector_to(point2) # is equivalent to (point2 - point1)
  #
  # @param [Geom::Point2d, Array(Numeric, Numeric)] point
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def vector_to(point)
  end

  # The {#x} method returns the x value of the {Geom::Point2d}.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   x = point.x
  #
  # @return [Length] the x value of the {Geom::Point2d}
  #
  # @version LayOut 2018
  def x
  end

  # The {#x=} method sets the x value of the {Geom::Point2d}.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   point.x = 7
  #
  # @param [Numeric] x
  #   The desired x value of the {Geom::Point2d}
  #
  # @return [Numeric] The new x value of the {Geom::Point2d}
  #
  # @version LayOut 2018
  def x=(x)
  end

  # The {#y} method returns the y value of the {Geom::Point2d}.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   y = point.y
  #
  # @return [Length] The y value of the {Geom::Point2d}
  #
  # @version LayOut 2018
  def y
  end

  # The {#y=} method sets the y value of the {Geom::Point2d}.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   point.y = 7
  #
  # @param [Numeric] y
  #   The desired y value of the {Geom::Point2d}
  #
  # @return [Numeric] The new y value of the {Geom::Point2d}
  #
  # @version LayOut 2018
  def y=(y)
  end

end

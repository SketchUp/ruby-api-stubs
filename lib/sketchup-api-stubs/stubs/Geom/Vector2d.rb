# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The {Geom::Vector2d} class represents vectors in a 2 dimensional space.
#
# There are numerous tutorials on 2D vectors available on the internet.
#
# @version LayOut 2018
class Geom::Vector2d

  # Instance Methods

  # The {#%} method is used to compute the dot product between two vectors.
  #
  # This is an alias of the {#dot} method.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(4, 5)
  #   vector2 = Geom::Vector2d.new(7, 1)
  #   # The result is 33
  #   dot = vector1 % vector2
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Float]
  #
  # @see #dot
  #
  # @version SketchUp 6.0
  def %(vector)
  end

  # The {#*} method returns the cross product between two {Geom::Vector2d}. This
  # is an alias of the cross method.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(2, 5)
  #   vector2 = Geom::Vector2d.new(5, 1)
  #   # The result is -23
  #   cross = vector1 * vector2
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Float]
  #
  # @see #cross
  #
  # @version LayOut 2018
  def *(vector)
  end

  # The {#+} method adds a {Geom::Vector2d} to this one.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(0, 2)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   new_vector = vector1 + vector2
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def +(vector)
  end

  # The {#-} method subtracts a {Geom::Vector2d} from this one.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(0, 2)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   new_vector = vector1 - vector2
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def -(vector)
  end

  # The {#==} method returns whether two {Geom::Vector2d} are equal within
  # tolerance.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(1, 0)
  #   vector2 = Geom::Vector2d.new(0, 1)
  #   # Returns false
  #   status = vector1 == vector2
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(vector)
  end

  # The {#[]} method returns the value of the {Geom::Vector2d} at the specified
  # index.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   # Retrieves the y value of 2
  #   yvalue = vector[1]
  #
  # @param [Integer] index
  #   The index into an array of two coordinates.
  #
  # @return [Float] The value for the x or y coordinate.
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#[]=} method sets the x or y value of the {Geom::Vector2d} based on the
  # specific index of the value.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   vector[1] = 4
  #
  # @param [Integer] index
  #   The index for a specific x or y value in the
  #   {Geom::Vector2d} to set
  #
  # @param [Float] value
  #   The value to set for x or y
  #
  # @return [Float] The new x or y value if successful
  #
  # @version LayOut 2018
  def []=(index, value)
  end

  # The {#angle_between} method computes the angle in radians between
  # the {Geom::Vector2d} and another {Geom::Vector2d}.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(1, 0)
  #   vector2 = Geom::Vector2d.new(-1, 0)
  #   # Returns PI
  #   angle = vector1.angle_between(vector2)
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Float] The angle (in radians)
  #
  # @version LayOut 2018
  def angle_between(vector)
  end

  # The {#clone} method makes a copy of the {Geom::Vector2d}. This method is
  # equivalent to vec2 = Geom::Vector2d.new(vec).
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   new_vector = vector.clone
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def clone
  end

  # The {#cross} method returns the cross product between two {Geom::Vector2d}s.
  #
  # The cross product, also called the vector product, is an operation on two
  # vectors. The cross product of two vectors produces a third vector which is
  # perpendicular to the plane in which the first two lie.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(3, 3)
  #   vector2 = Geom::Vector2d.new(2, 5)
  #   # The result is 9
  #   cross = vector1.cross(vector2)
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Float]
  #
  # @see #*
  #
  # @version LayOut 2018
  def cross(vector)
  end

  # The {#dot} method is used to compute the dot product between two vectors.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(4, 1)
  #   # The result is 14
  #   vector2 = Geom::Vector2d.new(3, 2)
  #   dot = vector1.dot(vector2)
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Float]
  #
  # @see #%
  #
  # @version SketchUp 6.0
  def dot(vector)
  end

  # The {.new} method creates a new {Geom::Vector2d}.
  #
  # @example
  #   # A vector that runs along the X axis.
  #   vector1 = Geom::Vector2d.new(1, 0)
  #
  #   vector2 = Geom::Vector2d.new([5, 6])
  #
  # @overload initialize
  #
  #   @return [Geom::Vector2d]
  #
  # @overload initialize(x, y)
  #
  #   @param [Float] x The length in the x direction
  #   @param [Float] y The length in the y direction
  #   @return [Geom::Vector2d]
  #
  # @overload initialize(vector)
  #
  #   @param [Geom::Vector2d, Array(Float, Float)] vector
  #   @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#inspect} method formats the {Geom::Vector2d} as a string.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   string = vector.inspect
  #
  # @return [String] the string representation of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def inspect
  end

  # The {#length} method returns the length of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   # The result is 4
  #   length = vector.length
  #
  # @return [Length] The length of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def length
  end

  # The {#length=} method sets the length of the {Geom::Vector2d}. The new length
  # must not be 0.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   vector.length = 2
  #
  # @param [Float] length
  #   The new length for the {Geom::Vector2d}
  #
  # @return [Length] The new length
  #
  # @version LayOut 2018
  def length=(length)
  end

  # The {#normalize} method returns a {Geom::Vector2d} that is a unit vector
  # of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   # The result is a Vector2d(0, 1)
  #   new_vector = vector.normalize
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def normalize
  end

  # The {#normalize!} method converts a {Geom::Vector2d} vector into a unit
  # vector. Another way to do this is +vector.length = 1.0+
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   # Modifies vector to be the Vector2d(0, 1)
  #   vector.normalize!
  #
  # @version LayOut 2018
  def normalize!
  end

  # The {#parallel?} method determines if two {Geom::Vector2d}s are parallel within a
  # tolerance. Two vectors are parallel if there exists a scalar multiple between them.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(0, 1)
  #   vector2 = Geom::Vector2d.new(0, -9)
  #   # Returns true
  #   status = vector1.parallel?(vector2)
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def parallel?(vector)
  end

  # The {#perpendicular?} method determines if two {Geom::Vector2d}s are
  # perpendicular within a tolerance. Two vectors are considered
  # perpendicular if their dot product is zero.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(0, 5)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   # Returns true
  #   status = vector1.perpendicular?(vector2)
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def perpendicular?(vector)
  end

  # The {#reverse} method returns a new {Geom::Vector2d} that is the reverse of
  # the {Geom::Vector2d}, leaving the original unchanged.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   # The result is a Vector2d(-1, -2)
  #   new_vector = vector.reverse
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def reverse
  end

  # The {#reverse!} method reverses the {Geom::Vector2d} in place.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   # Modifies vector to be the Vector2d(-1, -2)
  #   vector.reverse!
  #
  # @version LayOut 2018
  def reverse!
  end

  # The {#same_direction?} method determines if the {Geom::Vector2d} is parallel
  # to and in the same direction as another {Geom::Vector2d} within tolerance.
  #
  # @example
  #   vector1 = Geom::Vector2d.new(0, 1)
  #   vector2 = Geom::Vector2d.new(1, 2)
  #   # Returns false
  #   status = vector1.same_direction?(vector2)
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 2)
  #   # Returns true
  #   status = vector.same_direction?([0, 4])
  #
  # @param [Geom::Vector2d, Array(Float, Float)] vector
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def same_direction?(vector)
  end

  # The {#set!} method sets the values of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   vector = vector.set!([4, 5])
  #
  # @overload set!(vector)
  #
  #   @param [Geom::Vector2d, Array(Float, Float)] vector
  #   @return [Geom::Vector2d]
  #
  # @overload set!(x, y)
  #
  #   @param [Float] x
  #   @param [Float] y
  #   @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def set!(*args)
  end

  # The {#to_a} method retrieves the coordinates of the {Geom::Vector2d} in an
  # Array.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   array = vector.to_a
  #
  # @return [Array(Float, Float)]
  #
  # @version LayOut 2018
  def to_a
  end

  # The {#to_s} method returns a string representation of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   string = vector.to_s
  #
  # @return [String] the string representation of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def to_s
  end

  # The {#transform} method applies a transformation to a vector, returning a new
  # vector. The original vector is unchanged by this method.
  #
  # @example
  #   vector = Geom::Vector2d.new(3, 2)
  #   point = Geom::Point2d.new(0, 1)
  #   transformation = Geom::Transformation2d.scaling(point, 2)
  #   # The result is a Vector2d(6, 4)
  #   new_vector = vector.transform(transformation)
  #
  # @param [Geom::Transformation2d] transform
  #   A transformation object to apply to the vector.
  #
  # @return [Geom::Vector2d] the newly transformed vector
  #
  # @version LayOut 2019
  def transform(transform)
  end

  # The {#transform!} method applies a transformation to a vector. The vector
  # itself is modified.
  #
  # @example
  #   vector = Geom::Vector2d.new(4, 5)
  #   point = Geom::Point2d.new(8, 9)
  #   transformation = Geom::Transformation2d.scaling(point, 3)
  #   # The result is a Vector2d(12, 15)
  #   vector.transform!(transformation)
  #
  # @param [Geom::Transformation2d] transform
  #   A Transformation object to apply to the vector.
  #
  # @return [Geom::Vector2d] the transformed vector
  #
  # @version LayOut 2019
  def transform!(transform)
  end

  # The {#unit_vector?} method returns whether the {Geom::Vector2d} is a unit
  # vector. This is equivalent to vector.length == 1.0
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   # Returns true
  #   status = vector.unit_vector?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def unit_vector?
  end

  # The {#valid?} method verifies if a {Geom::Vector2d} is valid. A
  # {Geom::Vector2d} is valid if its length is not zero.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   status = vector.valid?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def valid?
  end

  # The {#x} method retrieves the x value of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   x = vector.x
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def x
  end

  # The {#x=} method sets the x coordinate of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   vector.x = 7
  #
  # @param [Float] x
  #   The desired x value of the {Geom::Vector2d}
  #
  # @return [Float] The new x value of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def x=(x)
  end

  # The {#y} method retrieves the y value of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   y = vector.y
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def y
  end

  # The {#y=} method sets the y coordinate of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 2)
  #   vector.y = 7
  #
  # @param [Float] y
  #   The desired y value of the {Geom::Vector2d}
  #
  # @return [Float] The new y value of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def y=(y)
  end

end

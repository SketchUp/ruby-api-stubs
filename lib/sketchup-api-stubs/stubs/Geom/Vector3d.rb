# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The Vector3d class is used to represent vectors in a 3 dimensional space.
# Vectors in SketchUp have a direction and a length, but not a starting point.
#
# There are numerous tutorials on 3D vectors available on the internet.
#
# @version SketchUp 6.0
class Geom::Vector3d

  # Class Methods

  # The {.linear_combination} method is used to create a new vector as a linear
  # combination of other vectors. This method is generally used to get a vector
  # at some percentage between two vectors.
  #
  # A linear combination is a standard term for vector math. It is defined as
  # vector = weight1 * vector1 + weight2 * vector2
  #
  # @example
  #   vector1 = Geom::Vector3d.new(3, 0, 0)
  #   vector2 = Geom::Vector3d.new(0, 3, 0)
  #   # The result is a Vector3d(1.5, 1.5, 0)
  #   new_vector = Geom::Vector3d.linear_combination(0.5, vector1, 0.5, vector2)
  #
  # @overload linear_combination(weight1, vector1, weight2, vector2)
  #
  #   @param [Float] weight1  weights
  #   @param [Geom::Vector3d] vector1  The first vector.
  #   @param [Float] weight2  weights
  #   @param [Geom::Vector3d] vector2  The second vector.
  #   @return [Geom::Vector3d]
  #
  # @overload linear_combination(x, xaxis, y, yaxis, z, zaxis)
  #
  #   @param [Float] x  A weight or percentage for the x axis.
  #   @param [Geom::Vector3d] xaxis  The x axis vector.
  #   @param [Float] y  A weight or percentage for the y axis.
  #   @param [Geom::Vector3d] yaxis  The y axis vector.
  #   @param [Float] z  A weight or percentage for the z axis.
  #   @param [Geom::Vector3d] zaxis  The z axis vector.
  #   @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def self.linear_combination(*args)
  end

  # Instance Methods

  # The {#%} method is used to compute the dot product between two vectors.
  #
  # This is an alias of the {#dot} method.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(2, 2, 1)
  #   vector2 = Geom::Vector3d.new(1, 3, 0)
  #   # The result is 8
  #   dot = vector1 % vector2
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Float]
  #
  # @see #dot
  #
  # @version SketchUp 6.0
  def %(vector3d)
  end

  # The {#*} method is used to compute the cross product between two vectors.
  #
  # The cross product, also called the vector product, is an operation on two
  # vectors. The cross product of two vectors produces a third vector which is
  # perpendicular to the plane in which the first two lie.
  #
  # This is an alias of the {#cross} method.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(1, 0, 2)
  #   vector2 = Geom::Vector3d.new(3, 1, 1)
  #   # The result is a Vector3d(-2, 5, 1)
  #   cross = vector1 * vector2
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Geom::Vector3d]
  #
  # @see #cross
  #
  # @version SketchUp 6.0
  def *(vector3d)
  end

  # The {#+} method is used to add a vector to this one.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 0, 2)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   new_vector = vector1 + vector2
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Geom::Vector3d] the new vector.
  #
  # @version SketchUp 6.0
  def +(vector3d)
  end

  # The {#-} method is used to subtract a vector from this one.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 0, 2)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   new_vector = vector1 - vector2
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Geom::Vector3d] the new vector.
  #
  # @version SketchUp 6.0
  def -(vector3d)
  end

  # The {#<} compare method is used to compare two vectors to determine if the left-hand vector is
  # less than the right-hand vector.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 1, 0)
  #   vector2 = Geom::Vector3d.new(0, 4, 2)
  #   # Returns true
  #   vector1 < vector2
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Boolean] true if the vector1 is closer to origin than vector2
  #
  # @version SketchUp 6.0
  def <(vector3d)
  end

  # The {#==} method is used to determine if two vectors are equal to within
  # tolerance.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(1, 0, 0)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   # Returns false
  #   status = vector1 == vector2
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def ==(vector3d)
  end

  # The {[]} method is used to access the coordinates of a vector as if it was an
  # Array. The index must be 0, 1 or 2.
  #
  # The following are equivalent:
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 1, 0)
  #   x = vector[0]
  #
  # @param [Integer] index
  #   An index into an array of three coordinates.
  #
  # @return [Length] the value for the x, y, or z coordinate.
  #
  # @version SketchUp 6.0
  def [](index)
  end

  # The {[]=} method is used to set the coordinates of a vector as if it was an
  # Array. The value of i must be 0, 1 or 2.
  #
  # @example
  #   vector = Geom::Vector3d.new(4, 5, 0)
  #
  #   vector[2] = 10
  #
  # @param [Integer] index
  #   The index for the x, y, or z coordinate.
  #
  # @param [Float] value
  #   The value for the x, y, or z coordinate.
  #
  # @return [Float] the newly set coordinate value
  #
  # @version SketchUp 6.0
  def []=(index, value)
  end

  # The {#angle_between} method is used to compute the angle (in radians) between
  # this vector and another vector.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(1, 0, 0)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   angle = vector1.angle_between(vector2)
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Float] an angle (in radians)
  #
  # @version SketchUp 6.0
  def angle_between(vector3d)
  end

  # The {#axes} method is used to compute an arbitrary set of axes with the given
  # vector as the z-axis direction.
  #
  # Returns an Array of three vectors [xaxis, yaxis, zaxis]
  #
  # Vector3d objects
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 0, 0)
  #   array = vector.axes
  #
  # @return [Array(Geom::Vector3d, Geom::Vector3d, Geom::Vector3d)] an Array object containing three
  #
  # @version SketchUp 6.0
  def axes
  end

  # The {#clone} method is used to make a copy of a vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 0, 0)
  #   new_vector = vector.clone
  #
  # @return [Geom::Vector3d] a Vector3d object which is the clone of
  #   vector
  #
  # @version SketchUp 6.0
  def clone
  end

  # The {#cross} method is used to compute the cross product between two vectors.
  #
  # The cross product, also called the vector product, is an operation on two
  # vectors. The cross product of two vectors produces a third vector which is
  # perpendicular to the plane in which the first two lie.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(1, 2, 0)
  #   vector2 = Geom::Vector3d.new(5, 1, 3)
  #   # The result is a Vector3d(6, -3, -9)
  #   cross = vector1.cross(vector2)
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Geom::Vector3d]
  #
  # @see #*
  #
  # @version SketchUp 6.0
  def cross(vector3d)
  end

  # The {#dot} method is used to compute the dot product between two vectors.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 5, 1)
  #   vector2 = Geom::Vector3d.new(0, 1, 2)
  #   # The result is 7
  #   dot = vector1.dot(vector2)
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Float]
  #
  # @see #%
  #
  # @version SketchUp 6.0
  def dot(vector3d)
  end

  # The new method is used to create a new vector.
  #
  # @example
  #   # A vector that runs up the Z axis.
  #   vector1 = Geom::Vector3d.new(0, 0, 1)
  #
  #   vector2 = Geom::Vector3d.new([1, 1])
  #
  # @overload initialize
  #
  #   @return [Geom::Vector3d]
  #
  # @overload initialize(x, y, z)
  #
  #   @param [Float] x
  #   @param [Float] y
  #   @param [Float] z
  #   @return [Geom::Vector3d]
  #
  # @overload initialize(array3d)
  #
  #   @param [Array(Float, Float, Float)] array3d
  #   @return [Geom::Vector3d]
  #
  # @overload initialize(array2d)
  #
  #   @param [Array(Float, Float)] array2d
  #   @return [Geom::Vector3d]
  #
  # @overload initialize(vector)
  #
  #   @param [Geom::Vector3d] vector A Vector3d object.
  #   @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The {#inspect} method is used to inspect the contents of a vector as a
  # friendly string.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   string = vector.inspect
  #
  # @return [Geom::Vector3d] the Vector3d object
  #
  # @version SketchUp 6.0
  def inspect
  end

  # The {#length} method is used to retrieve the length of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   length = vector.length
  #
  # @return [Length] the length of the vector
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#length=} method is used to set the length of the vector. The length must
  # be greater than 0.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   vector.length = 2
  #
  # @param [Float] length
  #   A length for the vector.
  #
  # @return [Length] a newly set length
  #
  # @version SketchUp 6.0
  def length=(length)
  end

  # The {#normalize} method is used to return a vector that is a unit vector
  # of another.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 2)
  #   new_vector = vector.normalize
  #
  # @return [Geom::Vector3d] a new normalized Vector3d object
  #
  # @version SketchUp 6.0
  def normalize
  end

  # The {#normalize!} method is used to convert a vector into a unit vector,
  # in place.
  #
  # Another way to do this is +vector.length = 1.0+
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 2)
  #   vector.normalize!
  #
  # @return [Geom::Vector3d] a normalized Vector3d object
  #
  # @version SketchUp 6.0
  def normalize!
  end

  # The {#parallel?} method determines if two {Geom::Vector3d}s are parallel within a
  # tolerance. Two vectors are parallel if there exists a scalar multiple between them.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(1, 2, 4)
  #   vector2 = Geom::Vector3d.new(2, 4, 8)
  #   # Returns true
  #   status = vector1.parallel?(vector2)
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def parallel?(vector3d)
  end

  # The {#perpendicular?} method determines if two Geom::Vector3ds are perpendicular within a
  # tolerance. Two vectors are considered perpendicular if their dot product is zero.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 0, 1)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   status = vector1.perpendicular?(vector2)
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def perpendicular?(vector3d)
  end

  # The {#reverse} method is used to return a new vector that is the reverse
  # of this vector, while leaving the original unchanged.
  #
  # @example
  #   vector = Geom::Vector3d.new(3, 1, 0)
  #   new_vector = vector.reverse
  #
  # @return [Geom::Vector3d] a reverse Vector3d object
  #
  # @version SketchUp 6.0
  def reverse
  end

  # The {#reverse!} method is used to reverse the vector in place.
  #
  # @example
  #   vector = Geom::Vector3d.new(3, 1, 0)
  #   vector.reverse!
  #
  # @return [Geom::Vector3d] a reverse Vector3d object
  #
  # @version SketchUp 6.0
  def reverse!
  end

  # The {#samedirection?} method is used to determine if this vector is parallel to
  # and in the same direction as another vector to within tolerance.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(2, 4, 1)
  #   vector2 = Geom::Vector3d.new(2, 0, 1)
  #   # Returns false
  #   status = vector1.samedirection?(vector2)
  #
  # @param [Geom::Vector3d, Array(Float, Float, Float)] vector3d
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def samedirection?(vector3d)
  end

  # The {#set!} method is used to set the coordinates of the vector.
  #
  # @example This is a shortcut for writing:
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   vector.x = 2
  #   vector.y = 4
  #   vector.z = 0
  #
  # @example You may also call this method with an array or another vector:
  #   vector1 = Geom::Vector3d.new
  #   vector2 = Geom::Vector3d.new(2, 4, 0)
  #   vector1.set!(vector2)
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   vector.set!(2, 4, 0)   # is equivalent to vector.set!([2, 4, 0])
  #
  # @overload set!(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Geom::Vector3d]
  #
  # @overload set!(x, y, z)
  #
  #   @param [Float] x
  #   @param [Float] y
  #   @param [Float] z
  #   @return [Geom::Vector3d]
  #
  # @overload set!(array3d)
  #
  #   @param [Array(Float, Float, Float)] array3d
  #   @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def set!(*args)
  end

  # The {#to_a} method retrieves the coordinates of the vector in an Array[x, y, z].
  #
  # @example
  #   vector = Geom::Vector3d.new(3, 0, 6)
  #   array = vector.to_a
  #
  # @return [Array(Float, Float, Float)] the coordinates of the vector in an array
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The {#to_s} method is used to format the vector as a String.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   string = vector.to_s
  #
  # @return [String] a string representation of vector
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The {#transform} method applies a Transformation to a vector, returning a new vector. The
  # original vector is unchanged by this method.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 2, 1)
  #   point = Geom::Point3d.new(2, 3, 1)
  #   transformation = Geom::Transformation.scaling(point, 2)
  #   # The result is a Vector3d(0, 4, 2)
  #   new_vector = vector.transform(transformation)
  #
  # @param [Geom::Transformation] transform
  #   A Transformation object to apply to the vector.
  #
  # @return [Geom::Vector3d] the newly transformed vector
  #
  # @version SketchUp 6.0
  def transform(transform)
  end

  # The {#transform!} method applies a Transformation to a vector. The vector itself is modified.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 2, 1)
  #   point = Geom::Point3d.new(2, 3, 1)
  #   transformation = Geom::Transformation.scaling(point, 2)
  #   # The result is a Vector3d(0, 4, 2)
  #   vector.transform!(transformation)
  #
  # @param [Geom::Transformation] transform
  #   A Transformation object to apply to the vector.
  #
  # @return [Geom::Vector3d] the transformed vector
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The {#unitvector?} method is used to see if the vector is a unit vector.
  #
  # This is equivalent to +vector.length == 1.0+
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   # Return false
  #   status = vector.unitvector?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def unitvector?
  end

  # The {#valid?} method is used to verify if a vector is valid. A vector is valid
  # if its length is not zero.
  #
  # @example
  #   # A zero length vector will be invalid
  #   vector = Geom::Vector3d.new
  #   status = vector.valid?
  #
  #   # A non-zero length vector is valid
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   status = vector.valid?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def valid?
  end

  # The {#x} method is used to retrieve the x coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 2, 3)
  #   x = vector.x
  #
  # @return [Float] the x coordinate of the vector
  #
  # @version SketchUp 6.0
  def x
  end

  # The {#x=} method is used to set the x coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 2, 3)
  #   vector.x = 10
  #
  # @param [Float] x
  #   The x coordinate for the vector.
  #
  # @return [Float] the newly set x coordinate for the vector
  #
  # @version SketchUp 6.0
  def x=(x)
  end

  # The {#y} method is used to retrieve the y coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 2, 3)
  #   y = vector.y
  #
  # @return [Float] the y coordinate of the vector
  #
  # @version SketchUp 6.0
  def y
  end

  # Set the {#y=} coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 2, 3)
  #   vector.y = 10
  #
  # @param [Float] y
  #   The y coordinate for the vector.
  #
  # @return [Float] the newly set y coordinate for the vector
  #
  # @version SketchUp 6.0
  def y=(y)
  end

  # Get the {#z} coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 2, 3)
  #   z = vector.z
  #
  # @return [Float] the z coordinate of the vector
  #
  # @version SketchUp 6.0
  def z
  end

  # Set the {#z=} coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new(1, 2, 3)
  #   vector.z = 10
  #
  # @param [Float] z
  #   The z coordinate for the vector.
  #
  # @return [Float] the newly set z coordinate for the vector
  #
  # @version SketchUp 6.0
  def z=(z)
  end

end

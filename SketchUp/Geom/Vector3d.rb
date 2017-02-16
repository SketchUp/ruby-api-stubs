# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Vector3d class is used to represent vectors in a 3 dimensional space.
# Vectors in SketchUp have a direction and a length, but not a starting point.
#
# There are numerous tutorials on 3D vectors available on the internet.
#
# @version SketchUp 6.0
class Geom::Vector3d

  # Class Methods

  # The linear_combination method is used to create a new vector as a linear
  # combination of other vectors. This method is generally used to get a vector
  # at some percentage between two vectors.
  #
  # A linear combination is a standard term for vector math. It is defined as
  # point = weight1 * point1 + weight2 * point2.
  #
  # In addition to the 4-argument form detailed here, you may also call this
  # method with 6 parameters in the form of:
  #   - vec = Geom::Vector3d.linear_combination(x, xaxis, y, yaxis, z, zaxis)
  #
  # @example
  #   # Create a vector that is a 50%/50% linear combination of two others.
  #   vec1 = Geom::Vector3d.new 3,0,0
  #   vec2 = Geom::Vector3d.new 0,3,0
  #   new_vector = Geom::Vector3d.linear_combination(0.5, vec1, 0.5, vec2)
  #   # new_vector will now contain a Vector3d(1.5, 1.5, 0)
  #
  # @param weight1
  #   A weight or percentage.
  #
  # @param vector1
  #   The first vector.
  #
  # @param vector2
  #   The end point of the line.
  #
  # @param weight2
  #   A weight or percentage.
  #
  # @return vector - a Vector3d object
  #
  # @version SketchUp 6.0
  def self.linear_combination(weight1, vector1, weight2, vector2)
  end

  # Instance Methods

  # The {#%} method is used to compute the dot product between two vectors.
  #
  # This is an alias of the {#dot} method.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 0, 1)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   dot = vector1 % vector2
  #
  # @param [Geom::Vector] vector
  #
  # @return [Float]
  #
  # @see #dot
  #
  # @version SketchUp 6.0
  def %(vector)
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
  #   vector1 = Geom::Vector3d.new 1,0,0
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   vector3 = vector1 * vector2
  #
  # @param vector
  #   A Vector3d object.
  #
  # @return vector - a Vector3d object if successful
  #
  # @see #cross
  #
  # @version SketchUp 6.0
  def *(vector)
  end

  # The - method is used to add a vector to this one.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,2
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   new_vector = vector + vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return vector - the new vector.
  #
  # @version SketchUp 6.0
  def +(vector2)
  end

  # The - method is used to subtract a vector from this one.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,2
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   new_vector = vector - vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return vector - the new vector.
  #
  # @version SketchUp 6.0
  def -(vector2)
  end

  # The < method is used to determine if a vector's x, y or z value is less
  # than another vector's x, y or z value.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,2
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   lt = vector < vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return true if the vector's x, y or z component is less
  #
  # @version SketchUp 6.0
  def <(vector2)
  end

  # The == method is used to determine if two vectors are equal to within
  # tolerance.
  #
  # @example
  #   vector = Geom::Vector3d.new 1,0,0
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   status = vector == vector2
  #   # Returns false
  #   UI.messagebox status
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return status - true if vector1 is equal to vector 2. False if
  #   they are not equal.
  #
  # @version SketchUp 6.0
  def ==(vector2)
  end

  # The [] method is used to access the coordinates of a vector as if it was an
  # Array. The index must be 0, 1 or 2.
  #
  # The following are equivalent:
  #
  # @example
  #   x = vector.x
  #   x = vector[0]
  #
  # @example
  #   vector = Geom::Vector3d.new 1,0,0
  #   value = vector[0]
  #   if (value)
  #     UI.messagebox value
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param i
  #   An index into an array of three coordinates.
  #
  # @return coordinate - the value for the x, y, or z coordinate.
  #
  # @version SketchUp 6.0
  def [](i)
  end

  # The []= method is used to set the coordinates of a vector as if it was an
  # Array. The value of i must be 0, 1 or 2.
  #
  # @example
  #   vector[i] = coordinate
  #
  # @param index
  #   The index for the x, y, or z coordinate.
  #
  # @param value
  #   The value for the x, y, or z coordinate.
  #
  # @return the newly set coordinate value
  #
  # @version SketchUp 6.0
  def []=(index, value)
  end

  # The angle_between method is used to compute the angle (in radians) between
  # this vector and another vector.
  #
  # @example
  #   vector1 = Geom::Vector3d.new 1,0,0
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   angle = vector1.angle_between vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return angle - an angle (in radians)
  #
  # @version SketchUp 6.0
  def angle_between(vector2)
  end

  # The axes method is used to compute an arbitrary set of axes with the given
  # vector as the z-axis direction.
  #
  # Returns an Array of three vectors [xaxis, yaxis, zaxis]
  #
  # @example
  #   vector = Geom::Vector3d.new 1,0,0
  #   a = vector.axes
  #
  # @return a - an Array object containing three Vector3d objects
  #
  # @version SketchUp 6.0
  def axes
  end

  # The clone method is used to make a copy of a vector.
  #
  # This method is equivalent to vec2 = Geom::Vector3d.new(vec)
  #
  # @example
  #   vector = Geom::Vector3d.new 1,0,0
  #   vector2 = vector.clone
  #
  # @return vector2 - a Vector3d object which is the clone of
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
  #   vector1 = Geom::Vector3d.new(1,0,0)
  #   vector2 = Geom::Vector3d.new(0,1,0)
  #   vector3 = vector1 * vector2
  #
  # @example
  #   vector = Geom::Vector3d.new(1,0,0)
  #   vector2 = Geom::Vector3d.new(0,1,0)
  #   vector3 = vector.cross(vector2)
  #
  # @param vector
  #   A Vector3d object.
  #
  # @return vector - the cross of vector1 and vector2
  #
  # @see #*
  #
  # @version SketchUp 6.0
  def cross(vector)
  end

  # The {#dot} method is used to compute the dot product between two vectors.
  #
  # @example
  #   vector1 = Geom::Vector3d.new(0, 0, 1)
  #   vector2 = Geom::Vector3d.new(0, 1, 0)
  #   dot = vector1.dot(vector2)
  #
  # @param [Geom::Vector] vector
  #
  # @return [Float]
  #
  # @see #%
  #
  # @version SketchUp 6.0
  def dot(vector)
  end

  # The new method is used to create a new vector.
  #
  # @example
  #   # A vector that runs up the Z axis.
  #   vector = Geom::Vector3d.new 0,0,1
  #   if (vector)
  #     UI.messagebox vector
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @overload initialize
  #
  #   @return [Geom::Vector3d]
  #
  # @overload initialize(vector2)
  #
  #   @param vector2       A Vector3d object.
  #   @return [Geom::Vector3d]
  #
  # @overload initialize(x, y, z)
  #
  #   @param x             A X value.
  #   @param y             A Y value.
  #   @param z             A Z value.
  #   @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The inspect method is used to inspect the contents of a vector as a
  # friendly string.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   out_string = vector.inspect
  #   puts out_string
  #
  # @return vector - the Vector3d object
  #
  # @version SketchUp 6.0
  def inspect
  end

  # The length method is used to retrieve the length of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   l = vector.length
  #
  # @return length - the length of the vector
  #
  # @version SketchUp 6.0
  def length
  end

  # The length= method is used to set the length of the vector. The length must
  # be greater than 0.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   l = vector.length
  #   UI.messagebox l
  #   newl = vector.length = 2
  #
  # @param length
  #   A length for the vector.
  #
  # @return length - a newly set length
  #
  # @version SketchUp 6.0
  def length=(length)
  end

  # The normalize method is used to return a vector that is a unit vector
  # of another.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,2
  #   vector2 = vector.normalize
  #
  # @return vector2 - a normalized Vector3d object
  #
  # @version SketchUp 6.0
  def normalize
  end

  # The normalize! method is used to convert a vector into a unit vector,
  # in place.
  #
  # Another way to do this is vec.length = 1
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,2
  #   vector.normalize!
  #
  # @return vector2 - a normalized Vector3d object
  #
  # @version SketchUp 6.0
  def normalize!
  end

  # The parallel method is used to determine if this vector is parallel to
  # another vector to within tolerance.
  #
  # @example
  #   status = vector.parallel? vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return status - true if vector and vector2 are parallel. False
  #   if they are not parallel.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def parallel?(vector2)
  end

  # The perpendicular? method is used to determine if this vector is
  # perpendicular to another vector to within tolerance.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   status = vector.perpendicular? vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return status - true if vector and vector2 are parallel. False
  #   if they are not parallel.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def perpendicular?(vector2)
  end

  # The reverse method is used to return a new vector that is the reverse
  # of this vector, while leaving the original unchanged.
  #
  # @example
  #   vector2 = vector.reverse
  #
  # @return vector2 - a Vector3d object that is the reverse of
  #   vector
  #
  # @version SketchUp 6.0
  def reverse
  end

  # The reverse! method is used to reverse the vector in place.
  #
  # @example
  #   vector.reverse!
  #
  # @return vector2 - a Vector3d object that is the reverse of
  #   vector
  #
  # @version SketchUp 6.0
  def reverse!
  end

  # The samedirection? method is used to determine if this vector is parallel to
  # and in the same direction as another vector to within tolerance.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = Geom::Vector3d.new 0,1,0
  #   status = vector.samedirection? vector2
  #
  # @param vector2
  #   A Vector3d object.
  #
  # @return status - true if vector and vector2 are in the same
  #   direction. False if they are not in the same direction.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def samedirection?(vector2)
  end

  # The set! method is used to set the coordinates of the vector.
  #
  # @example This is a shortcut for writing:
  #   vec.x = x
  #   vec.y = y
  #   vec.z = z
  #
  # @example You may also call this method with an array or another vector:
  #   vec.set!(x, y, z)
  #   vec.set!([x, y, z])
  #   vec.set!(vec2)
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector.set! 1,0,0
  #
  # @overload set!(x, y, z)
  #
  #   @param x             The x value for the vector.
  #   @param y             The y value for the vector.
  #   @param z             The z value for the vector.
  #   @return              vector - The newly set Vector3d object
  #
  # @overload set!(vector2)
  #
  #   @param vector2       A Vector3d object.
  #   @return              vector - The newly set Vector3d object
  #
  # @version SketchUp 6.0
  def set!(*args)
  end

  # The to_a method retrieves the coordinates of the vector in an Array
  # [x, y, z].
  #
  # @example
  #   a = vector.to_a
  #
  # @return a - the coordinates of the vector in an array
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The to_s method is used to format the vector as a String.
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   out_string = vector.to_s
  #   puts out_string
  #
  # @return s - a string representation of vector
  #
  # @version SketchUp 6.0
  def to_s
  end

  # Apply a Transformation to a vector. The vector itself is modified.
  #
  # @example
  #   vector.transform! transformation
  #
  # @param transform
  #   A Transformation object to apply to the vector.
  #
  # @return vector - the vector
  #
  # @version SketchUp 6.0
  def transform(transform)
  end

  # Apply a Transformation to a vector, returning a new vector. The original
  # vector is unchanged by this method.
  #
  # @example
  #   vector2 = vector.transform! transformation
  #
  # @param transform
  #   A Transformation object to apply to the vector.
  #
  # @return vector2 - the newly transformed vector
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The unitvector? method is used to see if the vector is a unit vector.
  #
  # This is equivalent to vec.length == 1.0
  #
  # @example
  #   vector = Geom::Vector3d.new 0,0,1
  #   status = vector.unitvector?
  #
  # @return status - true if the vector is a unit vector. False if
  #   the vector is not a unit vector.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def unitvector?
  end

  # The valid? method is used to verify if a vector is valid. A vector is valid
  # if its length is not zero.
  #
  # @example
  #   # A zero length vector will be invalid
  #   vector = Geom::Vector3d.new 0,0,0
  #   status = vector.valid?
  #   # A non-zero length vector is valid
  #   vector = Geom::Vector3d.new 0,0,1
  #   status = vector.valid?
  #
  # @return status - true if the vector is valid. false if the
  #   vector is not valid.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def valid?
  end

  # The x method is used to retrieve the x coordinate of the vector.
  #
  # @example
  #   x = vector.x
  #
  # @return x - the x coordinate of the vector
  #
  # @version SketchUp 6.0
  def x
  end

  # The x= method is used to set the x coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new 1,2,3
  #   x = vector.x = 10
  #
  # @param x
  #   The x coordinate for the vector.
  #
  # @return x - the newly set x coordinate for the vector
  #
  # @version SketchUp 6.0
  def x=(x)
  end

  # The y method is used to retrieve the y coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new 1,2,3
  #   y = vector.y
  #
  # @return y - the y coordinate of the vector
  #
  # @version SketchUp 6.0
  def y
  end

  # Set the y coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new 1,2,3
  #   y = vector.y = 10
  #
  # @param y
  #   The y coordinate for the vector.
  #
  # @return y - the newly set y coordinate for the vector
  #
  # @version SketchUp 6.0
  def y=(y)
  end

  # Get the z coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new 1,2,3
  #   z = vector.z
  #
  # @return z - the z coordinate of the vector
  #
  # @version SketchUp 6.0
  def z
  end

  # Set the z coordinate of the vector.
  #
  # @example
  #   vector = Geom::Vector3d.new 1,2,3
  #   z = vector.z = 10
  #
  # @param z
  #   The z coordinate for the vector.
  #
  # @return z - the newly set z coordinate for the vector
  #
  # @version SketchUp 6.0
  def z=(z)
  end

end

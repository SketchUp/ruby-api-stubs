# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Vector2d class represents vectors in a 2 dimensional space.
# Vectors in LayOut have a direction and a length, but not a starting point.
#
# There are numerous tutorials on 2D vectors available on the internet.
#
# @version LayOut 2018
class Geom::Vector2d

  # Instance Methods

  # The {#%} method returns the dot product between two {Geom::Vector2d}. This is
  # an alias of the dot method.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 2)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   d2 = vector % vector2
  #
  # @param [Geom::Vector2d] vector
  #
  # @return The dot product of the vectors
  #
  # @version LayOut 2018
  def %(vector)
  end

  # The {#*} method returns the cross product between two {Geom::Vector2d}. This
  # is an alias of the cross method.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   vector2 = Geom::Vector2d.new(0, 1)
  #   cross = vector * vector
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def *(vector)
  end

  # The {#+} method adds a {Geom::Vector2d} to this one.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 2)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   new_vector = vector + vector2
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def +(vector)
  end

  # The {#-} method subtracts a {Geom::Vector2d} from this one.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 2)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   new_vector = vector - vector2
  #
  # @param [Geom::Vector2d] vector
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
  #   vector = Geom::Vector2d.new(1, 0)
  #   vector2 = Geom::Vector2d.new(0,1)
  #   # Returns false
  #   status = vector == vector2
  #
  # @param [Geom::Vector2d] vector
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
  #   # retrieves the y value of 2
  #   yvalue = vector[1]
  #
  # @param [Numeric] index
  #   The index into an array of two coordinates.
  #
  # @return [Numeric] The value for the x or y coordinate.
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#[]=} method sets the x or y value of the {Geom::Vector2d} based on the
  # specific index of the value.
  #
  # @example
  #   point = Geom::Vector2d.new(1,2)
  #   point[1] = 4
  #
  # @param [Numeric] index
  #   The index for a specific x or y value in the
  #   {Geom::Vector2d} to set
  #
  # @param [Numeric] value
  #   The value to set for x or y
  #
  # @return [Numeric] The new x or y value if successful
  #
  # @version LayOut 2018
  def []=(index, value)
  end

  # The {#angle_between} method computes the angle in radians between
  # the {Geom::Vector2d} and another {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   vector2 = Geom::Vector2d.new(-1, 0)
  #   # returns PI
  #   angle = vector.angle_between(vector2)
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Numeric] The angle (in radians)
  #
  # @version LayOut 2018
  def angle_between(vector)
  end

  # The {#clone} method makes a copy of the {Geom::Vector2d}. This method is
  # equivalent to vec2 = Geom::Vector2d.new(vec).
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   vector2 = vector.clone
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def clone
  end

  # The {#*} method returns the cross product between two {Geom::Vector2d}. This
  # is an alias of the cross method.
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   vector2 = Geom::Vector2d.new(0, 1)
  #   cross = vector * vector
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def cross(vector)
  end

  # The {#%} method returns the dot product between two {Geom::Vector2d}. This is
  # an alias of the dot method.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 2)
  #   vector2 = Geom::Vector2d.new(1, 0)
  #   d2 = vector % vector2
  #
  # @param [Geom::Vector2d] vector
  #
  # @return The dot product of the vectors
  #
  # @version LayOut 2018
  def dot(vector)
  end

  # The {.new} method creates a new {Geom::Vector2d}.
  #
  # @example
  #   # A vector that runs along the X axis.
  #   vector = Geom::Vector2d.new(1, 0)
  #
  # @overload initialize
  #
  #   @return [Geom::Vector2d]
  #
  # @overload initialize(vector)
  #
  #   @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #   @return [Geom::Vector2d]
  #
  # @overload initialize(x, y)
  #
  #   @param [Numeric] x The length in the x direction
  #   @param [Numeric] y The length in the y direction
  #   @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#inspect} method formats the {Geom::Vector2d} as a string.
  #
  # @example
  #   point = Geom::Point2d.new(1, 2)
  #   string = point.inspect
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
  #   # returns 4
  #   l = vector.length
  #
  # @return [Numeric] The length of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def length
  end

  # The {#length=} method sets the length of the {Geom::Vector2d}. The new length
  # must be greater than 0.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   l = vector.length
  #   vector.length = 2
  #
  # @param [Numeric] length
  #   The new length for the {Geom::Vector2d}
  #
  # @return [Numeric] The new length
  #
  # @version LayOut 2018
  def length=(length)
  end

  # The {#normalize} method returns a {Geom::Vector2d} that is a unit vector
  # of the {Geom::Vector2d}.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   # returns a new Vector2d(0, 1)
  #   vector2 = vector.normalize
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def normalize
  end

  # The {#normalize!} method converts a {Geom::Vector2d} vector into a unit
  # vector. Another way to do this is vector.length = 1
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 4)
  #   # modifies vector to be the Vector2d(0, 1)
  #   vector.normalize!
  #
  # @version LayOut 2018
  def normalize!
  end

  # The {#parallel?} method determines if the {Geom::Vector2d} is parallel to
  # another {Geom::Vector2d} to within tolerance.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 1)
  #   vector2 = Geom::Vector2d.new(1, 2)
  #   # returns true
  #   status = vector.parallel?(vector2)
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def parallel?(vector)
  end

  # The {#perpendicular?} method determines if the {Geom::Vector2d} is
  # perpendicular to another {Geom::Vector2d} to within tolerance.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 1)
  #   vector2 = Geom::Vector2d.new(1, 2)
  #   # returns false
  #   status = vector.perpendicular?(vector2)
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Boolean]
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
  #   # returns the Vector2d(-1, -2)
  #   vector2 = vector.reverse
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
  #   # modifies vector to be the Vector2d(-1, -2)
  #   vector.reverse!
  #
  # @version LayOut 2018
  def reverse!
  end

  # The {#same_direction?} method determines if the {Geom::Vector2d} is parallel
  # to and in the same direction as another {Geom::Vector2d} within tolerance.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 1)
  #   vector2 = Geom::Vector2d.new(1, 2)
  #   # returns true
  #   status = vector.sime_direction?(vector2)
  #
  # @param [Geom::Vector2d] vector
  #
  # @return [Boolean]
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
  #   @param [Geom::Vector2d, Array(Numeric, Numeric)] vector
  #   @return [Geom::Vector2d]
  #
  # @overload set!(x, y)
  #
  #   @param [Numeric] x
  #   @param [Numeric] y
  #   @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def set!(*args)
  end

  # The {#to_a} method retrieves the coordinates of the {Geom::Vector2d} in an
  # Array.
  #
  # @example
  #   a = vector.to_a
  #
  # @return [Array(Numeric, Numeric)]
  #
  # @version LayOut 2018
  def to_a
  end

  # The {#to_s} method returns a string representation of the {Geom::Vector2d}.
  #
  # @example
  #   point = Geom::Vector2d.new(1, 2)
  #   str = point.to_s
  #
  # @return [String] the string representation of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def to_s
  end

  # The {#unit_vector?} method returns whether the {Geom::Vector2d} is a unit
  # vector. This is equivalent to vector.length == 1.0
  #
  # @example
  #   vector = Geom::Vector2d.new(1, 0)
  #   # returns true
  #   status = vector.unit_vector
  #
  # @return [Boolean]
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
  #   status = vector.valid
  #
  # @return [Boolean]
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
  # @return [Numeric]
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
  # @param [Numeric] x
  #   The desired x value of the {Geom::Vector2d}
  #
  # @return [Numeric] The new x value of the {Geom::Vector2d}
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
  # @return [Numeric]
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
  # @param [Numeric] y
  #   The desired y value of the {Geom::Vector2d}
  #
  # @return [Numeric] The new y value of the {Geom::Vector2d}
  #
  # @version LayOut 2018
  def y=(y)
  end

end

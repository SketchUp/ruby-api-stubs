# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

#
# @version LayOut 2018
class Geom::Transformation2d

  # Class Methods

  # The {.rotation} method is used to create a transformation that does rotation
  # about a point.
  #
  # @example
  #   point = Geom::Point2d.new(10, 5)
  #   angle = 45.degrees # Return 45 degrees in radians.
  #   transformation = Geom::Transformation2d.rotation(point, angle)
  #
  # @param [Geom::Point2d] point
  #
  # @param [Float] angle
  #   The angle in radians.
  #
  # @return [Geom::Transformation2d]
  #
  # @version LayOut 2019
  def self.rotation(point, angle)
  end

  # The {.scaling} method is used to create a transformation that does scaling.
  #
  # @example
  #   point = Geom::Point3d.new(20, 30, 0)
  #   scale = 10
  #   tr = Geom::Transformation2d.scaling(point, scale)
  #
  # @overload scaling(scale)
  #
  #   With one argument, it does a uniform scale about the origin.
  #   @param [Float] scale  The global scale factor for the transform.
  #   @return [Geom::Transformation2d]
  #
  # @overload scaling(xscale, yscale)
  #
  #   With two arguments, it does a non-uniform scale about the origin.
  #   @param [Float] xscale  The scale factor in the x direction for the transform.
  #   @param [Float] yscale  The scale factor in the y direction for the transform.
  #   @return [Geom::Transformation2d]
  #
  # @overload scaling(point, scale)
  #
  #   With two arguments, it does a uniform scale about an arbitrary point.
  #   @param [Geom::Point2d] point
  #   @param [Float] scale  The global scale factor for the transform.
  #   @return [Geom::Transformation2d]
  #
  # @overload scaling(point, xscale, yscale)
  #
  #   With three arguments it does a non-uniform scale about an arbitrary point.
  #   @param [Geom::Point2d] point
  #   @param [Float] xscale  The scale factor in the x direction for the transform.
  #   @param [Float] yscale  The scale factor in the y direction for the transform.
  #   @return [Geom::Transformation2d]
  #
  # @version LayOut 2019
  def self.scaling(*args)
  end

  # The {.translation} method is used to create a transformation that does
  # translation.
  #
  # @example
  #   vector = Geom::Vector2d.new(0, 1)
  #   tr = Geom::Transformation2d.translation(vector)
  #
  # @overload translation(vector)
  #
  #   @param [Geom::Vector2d] vector
  #   @return [Geom::Transformation2d]
  #
  # @overload translation(point)
  #
  #   @param [Geom::Point2d] point
  #   @return [Geom::Transformation2d]
  #
  # @version LayOut 2019
  def self.translation(vector)
  end

  # Instance Methods

  # The {#*} method is used to do matrix multiplication using the transform.
  #
  # @example
  #   point1 = Geom::Point2d.new(5, 10)
  #   point2 = Geom::Point2d.new(2, 2)
  #   tr = Geom::Transformation2d.new(point1)
  #   # Returns Point2d(7, 12)
  #   point3 = tr * point2
  #
  # @overload *(point)
  #
  #   @param [Geom::Point2d] point
  #   @return [Geom::Point2d]
  #
  # @overload *(vector)
  #
  #   @param [Geom::Vector2d] vector
  #   @return [Geom::Vector2d]
  #
  # @overload *(transformation)
  #
  #   @param [Geom::Transformation2d] transformation
  #   @return [Geom::Transformation2d]
  #
  # @overload *(point)
  #
  #   @param [Array<Float, Float>] point
  #   @return [Array<Float, Float>]
  #
  # @version LayOut 2019
  def *(arg)
  end

  # The {#==} method checks to see if the two {Geom::Transformation2d}s are equal.
  # This checks whether the values of the transformations are the same.
  #
  # @example
  #   tr = Geom::Transformation2d.new({1.0, 0.0, 0.0, 1.0, 1.0, 1.0})
  #   tr == tr.clone
  #
  # @param [Geom::Transformation2d] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#clone} method creates a copy of the {Geom::Transformation2d}.
  #
  # @example
  #   tr1 = Geom::Transformation2d.new
  #   tr2 = tr1.clone
  #
  # @return [Geom::Transformation2d]
  #
  # @version LayOut 2018
  def clone
  end

  # The {#identity?} method determines if the {Geom::Transformation2d} is the
  # {IDENTITY_2D} transform.
  #
  # @example
  #   array = {1.0, 0.0, 0.0, 1.0, 1.0, 0.0}
  #   tr = Geom::Transformation2d.new(array)
  #   # Returns false.
  #   status = tr.identity?
  #
  # @example
  #   tr = Geom::Transformation2d.new
  #   # Returns true.
  #   status = tr.identity?
  #
  # @example
  #   # Returns true.
  #   status = IDENTITY_2D.identity?
  #
  # @return [Boolean] +true+ if the transform is the identity
  #
  # @version LayOut 2018
  def identity?
  end

  # The {#initialize} method creates a new {Geom::Transformation2d}. You can use
  # this method or one of the more specific methods for creating specific kinds
  # of {Geom::Transformation2d}.
  #
  # @example
  #   tr = Geom::Transformation2d.new({1.0, 0.0, 0.0, 1.0, 1.0, 1.0})
  #
  # @overload initialize
  #
  #   @return [Geom::Transformation2d] identity Transformation2d.
  #
  # @overload initialize(transformation)
  #
  #   Creates a Transformation2d that is a copy of another Transformation2d.
  #   This is equivalent to {#clone}.
  #   @param [Geom::Transformation2d] transform
  #   @return [Geom::Transformation2d]
  #
  # @overload initialize(array)
  #
  #   @param [Array<Float>] array A 6 element Array.
  #   @return [Geom::Transformation2d]
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#inverse} method is used to retrieve the inverse of a transformation.
  #
  # @example
  #   point = Geom::Point2d.new(5, 10)
  #   tr1 = Geom::Transformation2d.new(point)
  #   tr2 = tr1.inverse
  #
  # @return [Geom::Transformation2d]
  #
  # @version LayOut 2019
  def inverse
  end

  # The {#invert!} method sets the transformation to its inverse.
  #
  # @example
  #   point = Geom::Point2d.new(5, 10)
  #   tr = Geom::Transformation2d.new(point)
  #   tr.invert!
  #
  # @return [Geom::Transformation2d]
  #
  # @version LayOut 2019
  def invert!
  end

  # The {#set!} method sets the {Geom::Transformation2d} to match another one.
  # The argument is anything that can be converted into a {Geom::Transformation2d}.
  #
  # @example
  #   tr1 = Geom::Transformation2d.new
  #   array = {2.0, 0.0, 0.0, 2.0, 0.0, 0.0}
  #   tr1.set!(array)
  #
  # @overload set!(transformation)
  #
  #   @param [Geom::Transformation2d] transformation
  #   @return [Geom::Transformation2d]
  #
  # @overload set!(matrix)
  #
  #   @param [Array<Float>] matrix An array of 6 floats.
  #   @return [Geom::Transformation2d]
  #
  # @version LayOut 2018
  def set!(arg)
  end

  # The {#to_a} method returns a 6 element array which contains the values that
  # define the Transformation2d.
  #
  # @example
  #   tr = Geom::Transformation2d.new
  #   tr.to_a.each_slice(2) {|a| p a}
  #
  # @return [Array<Float>] an array of 6 elements
  #
  # @version LayOut 2018
  def to_a
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

#
# @version LayOut 2018
class Geom::Transformation2d

  # Instance Methods

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
  #   tr = Geom::Transformation2d.new
  #   # Returns true.
  #   status = tr.identity?
  #
  # @example
  #   # Returns true.
  #   status = IDENTITY.identity?
  #
  # @example
  #   array = {1.0, 0.0, 0.0, 1.0, 1.0, 0.0}
  #   tr = Geom::Transformation2d.new(array)
  #   # Returns false.
  #   status = tr.identity?
  #
  # @return [Boolean] +true+ if the transform is the identity
  #
  # @return [Boolean]
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
  # @overload initialize(array)
  #
  #   @param [Array<Float>] array A 6 element Array.
  #   @return [Geom::Transformation2d]
  #
  # @overload initialize(transformation)
  #
  #   Creates a Transformation2d that is a copy of another Transformation2d.
  #   This is equivalent to {#clone}.
  #   @param [Geom::Transformation2d] transform
  #   @return [Geom::Transformation2d]
  #
  # @version LayOut 2018
  def initialize(*args)
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

# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The bounds2d class represents an axis aligned bounding box represented by
# two {Geom::Point2d} objects, upper left and lower right positions. The
# units utilized in the creation and modification {Geom::Bounds2d} are inches.
#
# @version LayOut 2018
class Geom::Bounds2d

  # Instance Methods

  # The {#==} method checks to see if the two {Geom::Bounds2d}s are equal. This
  # checks whether the point values are the same
  #
  # @example
  #   bounds1 = Geom::Bounds2d.new(0.0, 0.0, 5.0, 5.0)
  #   bounds2 = Geom::Bounds2d.new([0, 0], [5, 5])
  #   # Return true
  #   bounds1 == bounds2
  #
  # @param [Geom::Bounds2d] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#height} method returns the height of the {Geom::Bounds2d}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(5.0, 5.0, 1.0, 7.0)
  #   height = bounds.height
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def height
  end

  # The {#initialize} method creates a new {Geom::Bounds2d}.
  #
  # @example
  #   bounds1 = Geom::Bounds2d.new(0.0, 0.0, 1.0, 1.0)
  #
  #   upper_left = Geom::Point2d.new(1, 1)   # is equivalent to upper_left = [1, 1]
  #   lower_right = Geom::Point2d.new(3, 3)   # is equivalent to lower_right = [3, 3]
  #   bounds2 = Geom::Bounds2d.new(upper_left, lower_right)
  #
  # @overload initialize(other_bounds)
  #
  #   @param [Geom::Bounds2d] other_bounds
  #   @return [Geom::Bounds2d]
  #
  # @overload initialize(upper_left, lower_right)
  #
  #   @param [Geom::Point2d] upper_left
  #   @param [Geom::Point2d] lower_right
  #   @return [Geom::Bounds2d]
  #
  # @overload initialize(x, y, width, height)
  #
  #   @param [Float] x
  #   @param [Float] y
  #   @param [Float] width
  #   @param [Float] height
  #   @return [Geom::Bounds2d]
  #
  # @overload initialize(point_array)
  #
  #   @param [Array(Geom::Point2d, Geom::Point2d)] point_array An array of two
  #     {Geom::Point2d}s
  #   @return [Geom::Bounds2d]
  #
  # @overload initialize(float_array)
  #
  #   @param [Array(Float, Float, Float, Float)] float_array An array of four
  #     floats (x, y, width, height)
  #   @return [Geom::Bounds2d]
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#lower_right} method returns the {Geom::Point2d} of the lower right
  # corner of the {Geom::Bounds2d}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(2.0, 2.0, 1.0, 1.0)
  #   # The result is a Point2d(3, 3)
  #   lower_right = bounds.lower_right
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def lower_right
  end

  # The {#set!} method is used to update the dimensions and position of a {Geom::Bounds2d} object so
  # that it matches the specified bounds. The argument is anything that can be converted into a
  # {Geom::Bounds2d}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(3.0, 3.0, 5.0, 5.0)
  #   bounds.set!(Geom::Point2d.new(0.0, 0.0), Geom::Point2d.new(2.0, 2.0))
  #
  # @overload set!(other_bounds)
  #
  #   @param [Geom::Bounds2d] other_bounds
  #   @return [Geom::Bounds2d]
  #
  # @overload set!(upper_left, lower_right)
  #
  #   @param [Geom::Point2d] upper_left
  #   @param [Geom::Point2d] lower_right
  #   @return [Geom::Bounds2d]
  #
  # @overload set!(x, y, width, height)
  #
  #   @param [Float] x
  #   @param [Float] y
  #   @param [Float] width
  #   @param [Float] height
  #   @return [Geom::Bounds2d]
  #
  # @overload set!(point_array)
  #
  #   @param [Array(Geom::Point2d, Geom::Point2d)] point_array An array of two
  #     {Geom::Point2d}s
  #   @return [Geom::Bounds2d]
  #
  # @overload set!(float_array)
  #
  #   @param [Array(Float, Float, Float, Float)] float_array An array of four
  #     floats (x, y, width, height)
  #   @return [Geom::Bounds2d]
  #
  # @version LayOut 2018
  def set!(*args)
  end

  # The {#to_a} method returns an array which contains the {Geom::Point2d}s that
  # define the {Geom::Bounds2d}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(2.0, 2.0, 5.0, 5.0)
  #   bounds.to_a.each { |point| p point.to_s }
  #
  # @return [Array(Geom::Point2d, Geom::Point2d)]
  #
  # @version LayOut 2018
  def to_a
  end

  # The {#upper_left} method returns the {Geom::Point2d} of the upper left corner
  # of the {Geom::Bounds2d}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(2.0, 2.0, 1.0, 1.0)
  #   # The result is a Point2d(2, 2)
  #   upper_left = bounds.upper_left
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def upper_left
  end

  # The {#width} method returns the width of the {Geom::Bounds2d}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(5.0, 5.0, 7.0, 1.0)
  #   width = bounds.width
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def width
  end

end

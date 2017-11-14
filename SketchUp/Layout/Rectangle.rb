# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A simple rectangular shape entity.
#
# @version LayOut 2018
class Layout::Rectangle < Layout::Entity

  # Constants

  TYPE_BULGED = nil # Stub value.
  TYPE_LOZENGE = nil # Stub value.
  TYPE_NORMAL = nil # Stub value.
  TYPE_ROUNDED = nil # Stub value.

  # Instance Methods

  # The {#initialize} method creates a new normal, lozenge, bulged or rounded
  # {Layout::Rectangle}, depending on the type passed in.
  #
  # The rectangle type can be one of the following values:
  # [+Layout::Rectangle::TYPE_NORMAL+]
  # [+Layout::Rectangle::TYPE_ROUNDED+]
  # [+Layout::Rectangle::TYPE_LOZENGE+]
  # [+Layout::Rectangle::TYPE_BULGED+]
  #
  # @example
  #   upper_left = Geom::Point2d.new(1, 1)
  #   lower_right = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d.new(upper_left, lower_right)
  #   # Creates a normal rectangle
  #   rect = Layout::Rectangle.new(bounds)
  #   rounded_rect = Layout::Rectangle.new_rounded(
  #       Layout::Rectangle::TYPE_ROUNDED, bounds, radius)
  #   lozenge_rect = Layout::Rectangle.new_lozenge(
  #       Layout::Rectangle::TYPE_LOZENGE, bounds)
  #   bulged_rect = Layout::Rectangle.new_bulged(Layout::Rectangle::TYPE_BULGED,
  #       bounds, bulge_distance)
  #
  # @overload initialize(bounds)
  #
  #   @param [Geom::Bounds2d] bounds
  #   @return [Layout::Rectangle]
  #
  # @overload initialize(bounds, type)
  #
  #   @param [Geom::Bounds2d] bounds
  #   @param [Integer] type
  #     The type of {Layout::Rectangle} to create. Must be
  #     +Layout::Rectangle::TYPE_NORMAL+ or +Layout::Rectangle::TYPE_LOZENGE+
  #   @return [Layout::Rectangle]
  #
  # @overload initialize(bounds, type, radius)
  #
  #   @param [Geom::Bounds2d] bounds
  #   @param [Integer] type
  #     The type of {Layout::Rectangle} to create. Must be
  #     +Layout::Rectangle::TYPE_BULGED+ or +Layout::Rectangle::TYPE_ROUNDED+
  #   @param [Float] radius
  #   @return [Layout::Rectangle]
  #
  # @raise [ArgumentError] if radius is a negative value
  #
  # @raise [ArgumentError] if bounds is zero size
  #
  # @raise [ArgumentError] if type is not a valid type
  #
  # @raise [ArgumentError] if type passed in does not match the number of
  #   arguments
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#radius} method returns the radius of the {Layout::Rectangle}, or +nil+
  # if the {Layout::Rectangle} is not of type +Layout::Rectangle::TYPE_BULGED+ or
  # +Layout::Rectangle::TYPE_ROUNDED+
  #
  # @example
  #   upper_left = Geom::Point2d.new(1, 1)
  #   lower_right = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d.new(upper_left, lower_right)
  #   radius = 0.8
  #   rect = Layout::Rectangle.new_rounded(bounds, radius)
  #   # Should equal 0.8
  #   r = rect.radius
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def radius
  end

  # The {#radius=} method sets the radius of the {Layout::Rectangle}.
  #
  # @example
  #   upper_left = Geom::Point2d.new(1, 1)
  #   lower_right = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d.new(upper_left, lower_right)
  #   radius = 0.8
  #   rect = Layout::Rectangle.new_rounded(bounds, radius)
  #   rect.radius = 0.5
  #
  # @param [Float] radius
  #   The new radius value to set
  #
  # @raise [ArgumentError] if the {Layout::Rectangle} is not of type
  #   +Layout::Rectangle::TYPE_BULGED+ or +Layout::Rectangle::TYPE_ROUNDED+
  #
  # @raise [LockedEntityError] if the {Layout::Rectangle} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Rectangle} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if radius is negative
  #
  # @version LayOut 2018
  def radius=(radius)
  end

  # The {#type} method returns the type of the {Layout::Rectangle}.
  #
  # The type of a rectangle can be one of the following:
  # [+Layout::Rectangle::TYPE_NORMAL+]
  # [+Layout::Rectangle::TYPE_ROUNDED+]
  # [+Layout::Rectangle::TYPE_LOZENGE+]
  # [+Layout::Rectangle::TYPE_BULGED+]
  #
  # @example
  #   upper_left = Geom::Point2d.new(1, 1)
  #   lower_right = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d.new(upper_left, lower_right)
  #   rect = Layout::Rectangle.new(bounds)
  #   rect_type =rect.type
  #
  # @return [Integer] integer that corresponds with a rectangle type
  #
  # @version LayOut 2018
  def type
  end

  # The {#type=} method sets the type of the {Layout::Rectangle}. If the type is
  # set to +Layout::Rectangle::TYPE_ROUNDED+ or +Layout::Rectangle::TYPE_BULGED+,
  # the [Layout::Rectangle]'s radius will be set to the default value of 0.25, if
  # the value had not previously been set.
  #
  # The type of a {Layout::Rectangle} can be one of the following:
  # [+Layout::Rectangle::TYPE_NORMAL+]
  # [+Layout::Rectangle::TYPE_ROUNDED+]
  # [+Layout::Rectangle::TYPE_LOZENGE+]
  # [+Layout::Rectangle::TYPE_BULGED+]
  #
  # @example
  #   upper_left = Geom::Point2d.new(1, 1)
  #   lower_right = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d.new(upper_left, lower_right)
  #   rect = Layout::Rectangle.new(bounds)
  #   rect.type = Layout::Rectangle::TYPE_LOZENGE
  #
  # @param [Integer] type
  #   An integer that corresponds with a rectangle type
  #
  # @raise [LockedLayerError] if the {Layout::Rectangle} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if type is not a valid rectangle type
  #
  # @raise [LockedEntityError] if the {Layout::Rectangle} is locked
  #
  # @version LayOut 2018
  def type=(type)
  end

end

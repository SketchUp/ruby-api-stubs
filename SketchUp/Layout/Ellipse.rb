# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A simple elliptical shape entity.
#
# @version LayOut 2018
class Layout::Ellipse < Layout::Entity

  # Instance Methods

  # The {#initialize} method creates a new {Layout::Ellipse}.
  #
  # @example
  #   upper_left = Geom::Point2d.new(1, 1)
  #   lower_right = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d.new(upper_left, lower_right)
  #   ellipse = Layout::Ellipse.new(bounds)
  #
  # @param [Geom::Bounds2d] bounds
  #
  # @raise ArgumentError if bounds is zero size
  #
  # @return [Layout::Ellipse]
  #
  # @version LayOut 2018
  def initialize(bounds)
  end

end

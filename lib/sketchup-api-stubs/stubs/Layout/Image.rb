# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# A raster image entity.
#
# @example
#   image = Layout::Image.new("my_image.png", [[1, 1], [3, 3]])
#   clip_mask = image.clip_mask
#   if clip_mask.is_a?(Layout::Rectangle)
#     point1 = Geom::Point2d.new(1, 1)
#     point2 = Geom::Point2d.new(2, 2)
#     bounds = [point1, point2]
#     image.clip_mask = Layout::Ellipse.new(bounds)
#   end
#
# @version LayOut 2018
class Layout::Image < Layout::Entity

  # Instance Methods

  # The {#clip_mask} method returns the clip mask entity for the
  # {Layout::Image}, or +nil+ if it does not have one.
  #
  # @example
  #   image = Layout::Image.new("my_image.png", [[1, 1], [3, 3]])
  #   clip_mask = image.clip_mask
  #
  # @return [Layout::Ellipse, Layout::Path, Layout::Rectangle, nil]
  #
  # @version LayOut 2018
  def clip_mask
  end

  # The {#clip_mask=} method sets the clip mask of the {Layout::Image}.
  # +clip_mask+ must not currently exist in a {Layout::Document} or {Layout::Group}.
  #
  # @example
  #   image = Layout::Image.new("my_image.png", [[1, 1], [3, 3]])
  #   point1 = Geom::Point2d.new(1, 1)
  #   point2 = Geom::Point2d.new(2, 2)
  #   bounds = [point1, point2]
  #   clip_mask = Layout::Rectangle.new(bounds)
  #   image.clip_mask = clip_mask
  #
  # @note +clip_mask+ may be +nil+ as of LayOut 2020.1.
  #
  # @param [Layout::Ellipse, Layout::Path, Layout::Rectangle, nil] clip_mask
  #
  # @raise [ArgumentError] if clip mask is already in a {Layout::Document} or
  #   {Layout::Group}
  #
  # @raise [ArgumentError] if clip mask is not a {Layout::Path},
  #   {Layout::Rectangle}, or {Layout::Ellipse}
  #
  # @raise [ArgumentError] if clip_mask and image bounds do not overlap
  #
  # @raise [LockedLayerError] if the {Layout::Image} is on a locked {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::Image} is locked
  #
  # @version LayOut 2018
  def clip_mask=(clip_mask)
  end

  # The {#initialize} method creates a new {Layout::Image} from a given image
  # file.
  #
  # @example
  #   image = Layout::Image.new("my_image.png", [[1, 1], [3, 3]])
  #
  # @param [String] path
  #   The path to the file
  #
  # @param [Geom::Bounds2d] bounds
  #
  # @raise [ArgumentError] if bounds are zero size
  #
  # @raise [ArgumentError] if there was an error reading the image file, such as
  #   the file name being invalid
  #
  # @raise [RuntimeError] if there was an error allocating memory for the image
  #
  # @return [Layout::Image]
  #
  # @version LayOut 2018
  def initialize(path, bounds)
  end

end

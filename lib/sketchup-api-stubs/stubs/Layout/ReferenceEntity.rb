# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# An entity that represents the data inserted from an external file.
#
# @example
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   reference_entity = doc.pages.first.entities.first
#   clip_mask = reference_entity.clip_mask
#   if clip_mask.is_a?(Layout::Rectangle)
#     point1 = Geom::Point2d.new(1, 1)
#     point2 = Geom::Point2d.new(2, 2)
#     bounds = [point1, point2]
#     reference_entity.clip_mask = Layout::Ellipse.new(bounds)
#   end
#
# @version LayOut 2023.0
class Layout::ReferenceEntity < Layout::Entity

  # Instance Methods

  # The {#clip_mask} method returns the clip mask of the {Layout::ReferenceEntity}, or
  # +nil+ if it does not have a clip mask.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   reference_entity = doc.pages.first.entities.first
  #   clip_mask = image.clip_mask
  #
  # @return [Layout::Entity] The clip mask can be a {Layout::Path},
  #   {Layout::Rectangle}, or {Layout::Ellipse}.
  #
  # @version LayOut 2023.0
  def clip_mask
  end

  # The {#clip_mask=} method sets the clip mask of the {Layout::ReferenceEntity}. clip_mask
  # can be a {Layout::Rectangle}, {Layout::Ellipse}, or {Layout::Path}, or +nil+,
  # and it must not currently exist in a {Layout::Document}, or {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   reference_entity = doc.pages.first.entities.first
  #   point1 = Geom::Point2d.new(1, 1)
  #   point2 = Geom::Point2d.new(2, 2)
  #   bounds = [point1, point2]
  #   clip_mask = Layout::Rectangle.new(bounds)
  #   reference_entity.clip_mask = clip_mask
  #
  # @param [Layout::Entity, nil] clip_mask
  #   The clip mask can be a {Layout::Path},
  #   {Layout::Rectangle}, {Layout::Ellipse}, or +nil+.
  #
  # @raise [ArgumentError] if clip mask is already in a {Layout::Document} or
  #   {Layout::Group}
  #
  # @raise [ArgumentError] if clip mask is not a {Layout::Path},
  #   {Layout::Rectangle}, or {Layout::Ellipse}
  #
  # @raise [LockedLayerError] if the {Layout::ReferenceEntity} is on a locked {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::ReferenceEntity} is locked
  #
  # @version LayOut 2023.0
  def clip_mask=(clip_mask)
  end

  # The {#entities} method returns the {Layout::Group} that represents the
  # {Layout::ReferenceEntity} in its exploded form.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   reference_entity = doc.pages.first.entities.first
  #   entities = reference_entity.entities
  #
  # @return [Layout::Group]
  #
  # @version LayOut 2023.0
  def entities
  end

end

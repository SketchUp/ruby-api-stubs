# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# An entity is an object shown on a page of a LayOut document.
#
# @example
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   # Get the shared entities in the document. If there are no shared layers,
#   # the resulting array will be empty.
#   entities = doc.entities
#   # Count how many of the entites are a rectangle
#   rectangle_count = 0
#
#   # Look at all of the entities in the array.
#   entities.each { |entity|
#     if entity.is_a?(Layout::Rectangle)
#       rectangle_count = rectangle_count++
#     end
#   }
#
# @version LayOut 2018
class Layout::Entity

  # Instance Methods

  # The {#==} method checks to see if the two {Layout::Entity}s are equal. This
  # checks whether the Ruby Objects are pointing to the same internal object.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_entities = doc.pages.first.entities
  #   layer_entities = doc.layers.first.layer_instance(page).entities
  #   page_entities.first == layer_entities.first
  #
  # @param [Layout::Entity] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#bounds} method returns the 2D rectangular bounds of the {Layout::Entity}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   bounds = entities.first.bounds
  #
  # @return [Geom::Bounds2d]
  #
  # @version LayOut 2018
  def bounds
  end

  # The {#document} method returns the {Layout::Document} that the
  # {Layout::Entity} belongs to, or +nil+ if it is not in a {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.shared_entities
  #   # entity_doc should be the same document as doc
  #   entity_doc = entities.first.document
  #
  # @return [Layout::Document, nil]
  #
  # @version LayOut 2018
  def document
  end

  # The {#drawing_bounds} method returns the 2D rectangular drawing bounds of the
  # {Layout::Entity}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   draw_bounds = entities.first.drawing_bounds
  #
  # @return [Geom::OrientedBounds2d]
  #
  # @version LayOut 2018
  def drawing_bounds
  end

  # The {#group} method returns the {Layout::Group} the {Layout::Entity} belongs
  # to, or +nil+ if it is not in a {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   entities = pages.first.entities
  #   group = entities.first.group
  #
  # @return [Layout::Group, nil]
  #
  # @version LayOut 2018
  def group
  end

  # The {#layer_instance} method returns the {Layout::LayerInstance} that the
  # {Layout::Entity} is on, or +nil+ if it is not associated with a
  # {Layout::LayerInstance}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   entity_layer_instance = entities.first.layer_instance
  #
  # @note {Layout::Group}s are never associated with a {Layout::LayerInstance}.
  #
  # @return [Layout::LayerInstance, nil]
  #
  # @version LayOut 2018
  def layer_instance
  end

  # The {#locked=} method sets the {Layout::Entity} as locked or unlocked. When
  # locked, the {Layout::Entity} cannot be modified directly.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   entities.first.locked = true
  #
  # @param [Boolean] is_locked
  #
  # @version LayOut 2018
  def locked=(is_locked)
  end

  # The {#locked?} method returns whether the {Layout::Entity} is locked or
  # unlocked.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   is_first_locked = entities.first.locked?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def locked?
  end

  # The {#move_to_group} method moves the {Layout::Entity} into a {Layout::Group}.
  # If the {Layout::Entity} is already in a {Layout::Group}, it will be removed
  # from that {Layout::Group} prior to being added to the new one. If this action
  # results in the old {Layout::Group} containing only one {Layout::Entity}, the
  # old {Layout::Group} will be collapsed and the remaining {Layout::Entity} will
  # be moved to the old {Layout::Group}'s parent.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   new_group = Layout::Group.new
  #   entities.first.move_to_group(new_group)
  #
  # @param [Layout::Group] group
  #
  # @raise [ArgumentError] if entity and group are not in the same
  #   {Layout::Document}
  #
  # @raise [LockedLayerError] if the {Layout::Entity} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::Entity} is locked
  #
  # @raise [ArgumentError] if of entity and group one is shared and one is not
  #
  # @raise [ArgumentError] if entity and group are not on the same {Layout::Page}
  #
  # @version LayOut 2018
  def move_to_group(group)
  end

  # The {#move_to_layer} method moves the {Layout::Entity} to the given
  # {Layout::Layer}. If the {Layout::Layer} is non-shared and the
  # {Layout::Entity} is currently on a shared {Layout::Layer}, an array of
  # {Layout::Page}s must be provided to move the {Layout::Entity} to. In all other
  # cases, passing in an array of {Layout::Page}s is not necessary. The
  # {Layout::Entity} must belong to the same {Layout::Document} as the the
  # {Layout::Layer} and the {Layout::Page}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   layers = doc.layers
  #   entities.last.move_to_layer(layers.first)
  #
  # @overload move_to_layer(layer)
  #
  #   @param [Layout::Layer] layer
  #
  # @overload move_to_layer(layer, pages)
  #
  #   @param [Layout::Layer] layer
  #   @param [Array<Layout::Page>] pages
  #
  # @raise [ArgumentError] if layer is shared and a valid array of non-duplicate
  #   {Layout::Page}s is not passed in
  #
  # @raise [LockedEntityError] if the {Layout::Entity} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Entity} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedLayerError] if layer is locked
  #
  # @raise [ArgumentError] if entity, layer, and pages are not all in the same
  #   {Layout::Document}
  #
  # @version LayOut 2018
  def move_to_layer(*args)
  end

  # The {#on_shared_layer?} method returns whether or not the {Layout::Entity} is
  # on a shared {Layout::Layer}. This function works for all {Layout::Entity}
  # types, including {Layout::Group}. {Layout::Group}s do not belong to a
  # specific {Layout::Layer}, but their children are all on either a shared
  # or non-shared {Layout::Layer}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   on_shared_layer = entities.first.on_shared_layer?
  #
  # @raise [ArgumentError] if the {Layout::Entity} is not in a {Layout::Document}
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def on_shared_layer?
  end

  # The {#page} method returns the {Layout::Page} that the {Layout::Entity}
  # belongs to, or +nil+ if it is on a shared {Layout::Layer} or not in a
  # {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   # page will be nil
  #   page = doc.shared_entities.first.page
  #   # page will be the first page of the document
  #   page = doc.pages.first.nonshared_entities.first.page
  #
  # @return [Layout::Page, nil]
  #
  # @version LayOut 2018
  def page
  end

  # The {#style} method returns the {Layout::Style} of the {Layout::Entity}. If
  # the {Layout::Entity} is a {Layout::Group}, +nil+ will be returned, as they
  # do not have a {Layout::Style}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.entities
  #   style = entities.first.style
  #
  # @return [Layout::Style, nil]
  #
  # @version LayOut 2018
  def style
  end

  # The {#style=} method sets the {Layout::Style} of the {Layout::Entity}.
  #
  # @param [Layout::Style] style
  #
  # @raise [LockedEntityError] if the {Layout::Entity} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Entity} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def style=(style)
  end

  # The {#transform!} method transforms the {Layout::Entity} with a given
  # {Geom::Transformation2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   transform = Geom::Transformation2d.new([1.0, 0.0, 0.0, 1.0, 1.0, 1.0])
  #   entity = entities.first.transform!(transform)
  #
  # @param [Geom::Transformation2d] transformation
  #
  # @raise [LockedEntityError] if the {Layout::Entity} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Entity} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def transform!(transformation)
  end

  # The {#transformation} method returns the explicit {Geom::Transformation2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   transform = entities.first.transformation
  #
  # @return [Geom::Transformation2d, nil]
  #
  # @version LayOut 2018
  def transformation
  end

  # The {#untransformed_bounds} method returns the untransformed bounds of the
  # {Layout::Entity}. This is the bounds of the {Layout::Entity} before its
  # explicit {Geom::Transformation2d} is applied.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   bounds = entities.first.untransformed_bounds
  #
  # @raise [ArgumentError] if the {Layout::Entity} does not have an explicit
  #   {Geom::Transformation2d}
  #
  # @return [Geom::Bounds2d]
  #
  # @version LayOut 2018
  def untransformed_bounds
  end

  # The {#untransformed_bounds=} method sets the untransformed bounds of the
  # {Layout::Entity}. This is the bounds of the {Layout::Entity} before its
  # explicit {Geom::Transformation2d} is applied.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.pages.first.entities
  #   point1 = Geom::Point2d.new(1, 1)
  #   point2 = Geom::Point2d.new(2, 2)
  #   bounds = Geom::Bounds2d(point1, point2)
  #   entities.first.untransformed_bounds = bounds
  #
  # @param [Geom::Bounds2d] bounds
  #
  # @raise [ArgumentError] if the {Layout::Entity} does not have an explicit
  #   {Geom::Transformation2d}
  #
  # @raise [ArgumentError] if the bounds are of zero size
  #
  # @raise [LockedEntityError] if the {Layout::Entity} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Entity} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def untransformed_bounds=(bounds)
  end

end

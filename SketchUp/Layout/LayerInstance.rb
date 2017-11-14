# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# References an instance of a {Layout::Layer}. A {Layout::LayerInstance}
# provides access to the {Layout::Entity}s that are on it, as well as their
# draw order. {Layout::Group}s are not included in the list of {Layout::Entity}s
# associated with a {Layout::LayerInstance}, since the group hierarchy has no
# effect on entity draw order. Each {Layout::Page} has one
# {Layout::LayerInstance} for each {Layout::Layer} in the {Layout::Document}.
# Non-shared {Layout::LayerInstance}s are unique per {Layout::Page}, while
# shared {Layout::LayerInstance}s are shared across all {Layout::Page}s of the
# {Layout::Document}.
#
# @example
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   layers = doc.layers
#   pages = doc.pages
#   layers.each do |layer|
#     layer_instance = layer.layer_instance(pages.first)
#     entities = layer_instance.entities
#     entities.each do |entity|
#       new_index = rand(entities.length - 1)
#       layer_instance.reorder_entity(entity, new_index)
#     end
#   end
#
# @version LayOut 2018
class Layout::LayerInstance

  # Instance Methods

  # The {#==} method checks to see if the two {Layout::LayerInstance}s are equal.
  # This checks whether the Ruby Objects are pointing to the same internal
  # object.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   document = doc.pages.first.document
  #   doc.page.layer_instances.first == document.page.layer_instances.first
  #
  # @param [Layout::LayerInstance] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#definition} method returns the {Layout::Layer} of the
  # {Layout::LayerInstance}.
  #
  # @example
  #   layer_def = layer_instance.definition
  #
  # @return [Layout::Layer]
  #
  # @version LayOut 2018
  def definition
  end

  # The {#entities} method returns the {Layout::Entities} on the
  # {Layout::LayerInstance}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   pages = doc.pages
  #   first_layer = layers.first
  #   entities = first_layer.layer_instance.entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#entity_index} method returns the index of the {Layout::Entity} on the
  # {Layout::LayerInstance}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   pages = doc.pages
  #   instance = layers.first.layer_instance
  #   instance.entities.each_with_index { |entity, index|
  #     puts "#{index} == #{instance.entity_index(entity)}"
  #   }
  #
  # @param [Layout::Entity] entity
  #   The entity to get the index of.
  #
  # @raise [ArgumentError] if entity is not on the {Layout::LayerInstance}
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def entity_index(entity)
  end

  # The {#reorder_entity} method moves the {Layout::Entity} to the specified
  # index.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   pages = doc.pages
  #   first_layer = layers.first
  #   first_layer.set_shared(pages.first, SHARELAYERACTION_KEEPONEPAGE);
  #   layer_instance = first_layer.layer_instance
  #   entities = layer_instance.entities
  #   # put the first entity into the back of the layer
  #   layer_instance.reorder_entity(entities.first, (entities.length - 1))
  #
  # @param [Layout::Entity] entity
  #   The {Layout::Entity} to reorder
  #
  # @param [Integer] index
  #   The desired index of the {Layout::Entity}
  #
  # @raise [IndexError] if index is out of range
  #
  # @raise [ArgumentError] if entity is not on the {Layout::LayerInstance}
  #
  # @version LayOut 2018
  def reorder_entity(entity, index)
  end

end

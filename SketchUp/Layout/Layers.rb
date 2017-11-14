# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Layers class is a container class for all layers in a {Layout::Document}.
#
# @example
#   # Grab a handle to the currently active document's layers
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   layers = doc.layers
#
#   # From here, we can add layers to or remove them from the document
#   layers.add("New Layer")
#   layers.remove(layers[0])
#
# @version LayOut 2018
class Layout::Layers

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method returns a value from the array of {Layout::Layer}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layer = layers[2]
  #
  # @param [Integer] index
  #   The index of the {Layout::Layer} to return.
  #
  # @raise [IndexError] if index is out of range
  #
  # @return [Layout::Layer]
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#active} method returns the active {Layout::Layer} in the
  # {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layer = doc.layers.active
  #
  # @return [Layout::Layer]
  #
  # @version LayOut 2018
  def active
  end

  # The {#active=} method sets the active {Layout::Layer} that will be
  # displayed the next time the {Layout::Document} is opened. This value will
  # change whenever the {Layout::Layer} is changed in the {Layout::Document} in
  # LayOut.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layers.active = layers[0]
  #
  # @overload active=(layer)
  #
  #   @param [Layout::Layer] layer The {Layout::Layer} to set as the initial one
  #   @return [Layout::Layer]
  #
  #   @raise [ArgumentError] if layer does not belong to the {Layout::Document}
  #   @raise [ArgumentError] if layer is locked or hidden on the current
  #     {Layout::Page}
  #
  # @overload active=(index)
  #
  #   @param [Integer] index The index of {Layout::Layer} the to set as the
  #     initial one
  #   @return [Layout::Layer]
  #
  #   @raise [ArgumentError] if index is out of range
  #   @raise [ArgumentError] if the {Layout::Layer} is locked or hidden on the
  #     current {Layout::Page}
  #
  # @version LayOut 2018
  def active=(layer)
  end

  # The {#add} method adds a new {Layout::Layer} to the {Layout::Document}.
  # The newly added {Layout::Layer} will be the last one in the
  # {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   new_layer = doc.layers.add
  #
  # @overload add(shared = false)
  #
  #   @param [Boolean] shared +true+ to make the {Layout::Layer} shared, +false+
  #     for non-shared.
  #   @return [Layout::Layer] The newly added {Layout::Layer}.
  #
  # @overload add(name, shared = false)
  #
  #   @param [String] name The name for the new layer.
  #   @param [Boolean] shared +true+ to make the {Layout::Layer} shared, +false+
  #     for non-shared.
  #   @return [Layout::Layer] The newly added {Layout::Layer}.
  #
  # @version LayOut 2018
  def add(*args)
  end

  # The {#each} method iterates through all of the {Layout::Layer}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layers.each { |layer|
  #     puts layer.name
  #   }
  #
  # @version LayOut 2018
  #
  # @yieldparam [Layout::Layer] layer
  def each
  end

  # The {#index} method returns the index of the {Layout::Layer}, or +nil+ if
  # it doesn't exist in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layer_index = layers.index(layers.first) # Returns 0
  #
  # @param [Layout::Layer] layer
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def index(layer)
  end

  # The {#length} method returns the number of {Layout::Layer}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   num_layers = layers.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def length
  end

  # The {#remove} method deletes the given {Layout::Layer} from the
  # {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layers.remove(layers[0])
  #
  # @overload remove(layer, delete_entities = false)
  #
  #   @param [Layout::Layer] layer The {Layout::Layer} to be removed
  #   @param [Boolean] delete_entities Whether the {Layout::Entity}s on the
  #     deleted {Layout::Layer} should be deleted as well
  #
  #   @raise [ArgumentError] if the {Layout::Layer} is not in the
  #     {Layout::Document}
  #   @raise [ArgumentError] if the {Layout::Layer} is the only one in the
  #     {Layout::Document}
  #
  # @overload remove(index, delete_entities = false)
  #
  #   @param [Integer] index The index of the {Layout::Layer} to be removed
  #   @param [Boolean] delete_entities Whether the {Layout::Entity}s on the
  #     deleted {Layout::Layer} should be deleted as well
  #
  #   @raise [IndexError] if index is out of range
  #   @raise [ArgumentError] if the {Layout::Layer} is the only one in the
  #     {Layout::Document}
  #
  # @version LayOut 2018
  def remove(*args)
  end

  # The {#reorder} method moves a {Layout::Layer} to a different index
  # within the {Layout::Document}'s list of layers. This will move the
  # {Layout::Layer} such that its new index becomes new_index.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layers.reorder(layers[1], 3)
  #
  # @overload reorder(layer, new_index)
  #
  #   @param [Layout::Layer] layer The {Layout::Layer} to be reordered
  #   @param [Integer] new_index The index to put the {Layout::Layer} at
  #
  #   @raise [ArgumentError] if the {Layout::Layer} is not in the
  #     {Layout::Document}
  #   @raise [IndexError] if new_index is out of range
  #
  # @overload reorder(index, new_index)
  #
  #   @param [Integer] index The index of the {Layout::Layer} to be reordered
  #   @param [Integer] new_index The index to put the {Layout::Layer} at
  #
  #   @raise [IndexError] if index or new_index are out of range
  #
  # @version LayOut 2018
  def reorder(layer, new_index)
  end

  # The {#length} method returns the number of {Layout::Layer}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   num_layers = layers.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def size
  end

end

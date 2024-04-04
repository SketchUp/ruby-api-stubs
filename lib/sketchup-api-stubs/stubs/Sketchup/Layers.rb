# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Layers collection allows you to see and manage all of the layers in a
# model. You get a pointer to the Layers object from within the Model.
#
# @example
#   model = Sketchup.active_model
#   layers = model.layers
#
# @note As of SketchUp 2020 "Layers" were renamed to "Tags" in the UI.
#   The API retains the use of "Layer" for compatibility and is synonymous with
#   "Tag".
#
# @version SketchUp 6.0
class Sketchup::Layers < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieve a layer by index or name.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add "test layer"
  #   layer_by_number = layers[1]
  #   layer_by_name = layers["test layer"]
  #
  # @param [Integer, String] index_or_name
  #   A number representing the layer's
  #   index in an array of Layer objects, or the name of the layer.
  #
  # @return [Sketchup::Layer, nil]
  #
  # @see #at
  #
  # @version SketchUp 6.0
  def [](index_or_name)
  end

  # The {#add} method is used to add a new layer.
  #
  # If you give the name of a Layer that is already defined, it will return the
  # existing Layer rather than adding a new one.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   layer = layers.add("Test Layer")
  #
  # @param [String] layer_name
  #   The name of the added layer.
  #
  # @return [Sketchup::Layer]
  #
  # @version SketchUp 6.0
  def add(layer_name)
  end
  alias_method :add_layer, :add

  # The {#add_folder} method adds or moves a layer folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #
  # @overload add_folder(name)
  #
  #   Adds a new folder with the given name. Unlike layers, folders do not
  #   need to have a unique name. But the name does have to be non-empty.
  #   @param [String] name
  #
  # @overload add_folder(folder)
  #
  #   Moves an existing {Sketchup::LayerFolder} to the receiver. This will
  #   include any children in the given folder.
  #   @param [Sketchup::LayerFolder] folder
  #   @see Sketchup::LayerFolder#folder= Information on how which notifications
  #     trigger when reparenting an existing folder.
  #
  # @return [Sketchup::LayerFolder]
  #
  # @see #count_layers
  #
  # @version SketchUp 2021.0
  def add_folder(arg)
  end

  # The {#add_observer} method is used to add an observer to the layers
  # collection.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   status = layers.add_observer observer
  #
  # @param [Sketchup::LayersObserver] observer
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The {#at} method is an alias for {#[]}.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add "test layer"
  #   layer_by_number = layers.at(1)
  #   layer_by_name = layers.at("test layer")
  #
  # @return [Sketchup::Layer, nil]
  #
  # @see #[]
  #
  # @version SketchUp 6.0
  def at(index_or_name)
  end

  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   number = layers.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumerable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return integer - the number of layers in the collection
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The {#count_folders} method counts the number of folders which are direct
  # children of the layer manager.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #   num_folders = manager.count_folders
  #
  # @return [Integer]
  #
  # @version SketchUp 2021.0
  def count_folders
  end

  # The {#count_layers} method retrieves the number of layers not in a folder.
  #
  # @api TagFolder
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   number = layers.count_layers
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @see #length
  #
  # @version SketchUp 2021.0
  def count_layers
  end

  # The {#each} method is used to iterate through all of the layers in the model.
  # This include layers that are nested inside folders.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layers.add("Test layer")
  #   layers.each { | layer | puts layer.name }
  #
  # @note Don't remove content from this collection while iterating over it with
  #   {#each}. This would change the size of the collection and cause elements to
  #   be skipped as the indices change. Instead copy the current collection to an
  #   array using +to_a+ and then use +each+ on the array, when removing content.
  #
  # @version SketchUp 6.0
  #
  # @yield [layer]
  #
  # @yieldparam [Sketchup::Layer] layer
  def each
  end

  # The {#each_folder} method is used to iterate through the folders that are
  # direct children to the layer manager.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #   folder = manager.add_folder('Windows')
  #   manager.each_folder { |folder|
  #     puts folder.name
  #   }
  #
  # @version SketchUp 2021.0
  #
  # @yield [folder]
  #
  # @yieldparam [Sketchup::LayerFolder] folder
  def each_folder
  end

  # The {#each_layer} method is used to iterate through the layers that are not
  # inside a layer folder.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layers.add('Test layer')
  #   layers.each_layer { | layer | puts layer.name }
  #
  # @version SketchUp 2021.0
  #
  # @yield [layer]
  #
  # @yieldparam [Sketchup::Layer] layer
  def each_layer
  end

  # The {#folders} method returns the folders of the layer manager.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   manager.add_folder('Doors')
  #   manager.add_folder('Windows')
  #   folders = manager.folders
  #
  # @note This does not return all the folders in the model, only those that are
  #   direct children of the layer manager.
  #
  # @return [Array<Sketchup::LayerFolder>]
  #
  # @version SketchUp 2021.0
  def folders
  end

  # The {#layers} method retrieves the layers not in a folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   layers = manager.layers
  #
  # @return [Array<Sketchup::Layer>]
  #
  # @version SketchUp 2021.0
  def layers
  end

  # The {#length} method retrieves the number of layers.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   number = layers.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#purge_unused} method is used to remove unused layers.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   num_layers_removed = layers.purge_unused
  #
  # @return [Integer] Number of unused layers removed
  #
  # @see #purge_unused_folders
  #
  # @version SketchUp 6.0
  def purge_unused
  end
  alias_method :purge_unused_layers, :purge_unused

  # The {#purge_unused_folders} method is used to remove all layer folder with
  # no children.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #   folder = manager.add_folder('Windows')
  #   manager.purge_unused_folders
  #
  # @version SketchUp 2021.0
  #
  # @yield [folder]
  #
  # @yieldparam [Sketchup::LayerFolder] folder
  def purge_unused_folders
  end

  # Remove the given layer from the model, optionally removing the geometry.
  #
  # @example
  #   # Remove layer by layer reference.
  #   layer = Sketchup.active_model.layers.add("MyLayer")
  #   Sketchup.active_model.layers.remove(layer)
  #
  #   # Remove layer by name.
  #   Sketchup.active_model.layers.add("MyLayer")
  #   Sketchup.active_model.layers.remove("MyLayer")
  #
  #   # Remove layer by index.
  #   Sketchup.active_model.layers.remove(1)
  #
  #   # Remove layer and the entities on the layer.
  #   edge = Sketchup.active_model.entities.add_line([0, 0, 0], [9, 9, 9])
  #   edge.layer = Sketchup.active_model.layers.add("MyLayer")
  #   Sketchup.active_model.layers.remove("MyLayer", true)
  #
  # @param [Sketchup::Layer, Integer, String] layer
  #
  # @param [Boolean] remove_geometry
  #   If true, geometry in the removed layer will
  #   be removed as well. If false (which is the default),
  #   this geometry will be placed on Layer 0.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 2015
  def remove(layer, remove_geometry = false)
  end
  alias_method :remove_layer, :remove

  # The {#remove_folder} method removes the folder from the model. All children are
  # preserved, but moved up one level.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #   manager.remove_folder(folder)
  #
  # @param [Sketchup::LayerFolder] folder
  #
  # @raise [ArgumentError] if the +folder+ is not a direct child of the receiver.
  #
  # @return [nil]
  #
  # @version SketchUp 2021.0
  def remove_folder(folder)
  end

  # The {#remove_observer} method is used to remove an observer from the current
  # object.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   status = layers.remove_observer observer
  #
  # @param [Sketchup::LayersObserver] observer
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#size} method is an alias of {#length}.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   number = layers.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

  # The {#unique_name} method can be used to get a string that will be a unique
  # layer name inside this collection.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   # Will return "Joe" since there are probably no other layers named that.
  #   # Or might return something like "Joe #2" if there is already a layer
  #   # named Joe.
  #   good_name = layers.unique_name("Joe")
  #
  # @overload unique_name
  #
  #   @return [String]  Will default to using "Layer" (SketchUp2019 and older)
  #                     or "Tag" as basename for a unique name.
  #
  # @overload unique_name(base_name)
  #
  #   @param [String] base_name  The base name to build the unique name from.
  #   @return [String]
  #
  # @version SketchUp 6.0
  def unique_name(*args)
  end

end

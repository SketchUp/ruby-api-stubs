# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# Allows layers to be organized in folders. Folders may have duplicate names.
#
# @api TagFolder
#
# @note As of SketchUp 2020 "Layers" were renamed to "Tags" in the UI.
#   The API retains the use of "Layer" for compatibility and is synonymous with
#   "Tag".
#
# @version SketchUp 2021.0
class Sketchup::LayerFolder < Sketchup::Entity

  # Includes

  include Comparable

  # Instance Methods

  # The {#<=>} method is used to compare two layer folders based on their names.
  # This enables the Ruby +Array#sort+ method to sort SketchUp layer folders.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder1 = layers.add_folder('Folder1')
  #   folder2 = layers.add_folder('Folder2')
  #   comparison = folder1 <=> folder2 # Returns: -1
  #   comparison = folder1 <=> folder1 # Returns: 0
  #   comparison = folder2 <=> folder1 # Returns: 1
  #
  # @param [Object] other
  #
  # @return [Integer, nil] +-1+ if the receiver should appear before +other+.
  #   +1+ if the receiver should appear after +other+.
  #   +0+ if the receiver and +other+ are equal.
  #   +nil+ if +other+ is not comparable with the receiver.
  #
  # @version SketchUp 2021.0
  def <=>(other)
  end

  # The {#==} method is used to determine if two layer folders are the same.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder1 = layers.add('Folder1')
  #   folder2 = layers.add('Folder2')
  #   equal = folder1 == folder2
  #
  # @param [Object] other
  #
  # @return [Boolean]
  #
  # @version SketchUp 2021.0
  def ==(other)
  end

  # The {#add_folder} method adds or moves a layer folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder1 = manager.add_folder('Doors')
  #   folder2 = folder1.add_folder('Outer Doors')
  #
  # @overload add_folder(name)
  #
  #   Adds a new folder with the given name. Unlike layers, folders do not
  #   need to have a unique name.
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

  # The {#add_layer} method adds a layer to a folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   layer = manager.add_layer('Inner Doors')
  #   folder = manager.add_folder('Doors')
  #
  #   folder.add_layer(layer)
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @see Sketchup::Layer#folder=
  #   Information on how which notifications
  #   trigger when reparenting a layer.
  #
  # @version SketchUp 2021.0
  def add_layer(layer)
  end

  # The {#count_folders} method retrieves the number of child folders in the
  # folder.
  #
  # @api TagFolder
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   folder1 = layers.add_folder('Hello')
  #   folder2 = folder1.add_folder('World')
  #   number = folder1.folder_count # Returns: 1
  #
  # @return [Integer]
  #
  # @version SketchUp 2021.0
  def count_folders
  end

  # The {#count_layers} method retrieves the number of layers in the folder.
  #
  # @api TagFolder
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   layer = layers.add_layer('World')
  #   folder = layers.add_folder('Hello')
  #   folder.add_layer(layer)
  #   number = folder.layer_count # Returns: 1
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
  alias_method :length, :count_layers
  alias_method :size, :count_layers

  # The {#each_folder} method is used to iterate through the folders that are
  # direct children to the folder.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder1 = layers.add_folder('Hello')
  #   folder1.add_folder('World')
  #   folder1.each_folder { | folder | puts folder.name }
  #
  # @version SketchUp 2021.0
  #
  # @yield [folder]
  #
  # @yieldparam [Sketchup::LayerFolder] folder
  def each_folder
  end

  # The {#each_layer} method is used to iterate through the layers that are
  # direct children to the folder.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layer = layers.add_layer('World')
  #   folder = layers.add_folder('Hello')
  #   folder.add_layer(layer)
  #   folder.each_layer { | layer | puts layer.name }
  #
  # @version SketchUp 2021.0
  #
  # @yield [layer]
  #
  # @yieldparam [Sketchup::Layer] layer
  def each_layer
  end
  alias_method :each, :each_layer

  # The {#folder} method is used to return the parent layer folder of a layer
  # folder.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder1 = layers.add_folder('Folder1')
  #   parent_folder = folder1.folder # Returns: nil
  #
  #   folder2 = folder1.add_folder('Folder2')
  #   parent_folder = folder2.folder # Returns: folder1
  #
  # @return [Sketchup::LayerFolder, nil] +nil+ if the folder is a direct child to
  #   the layer manager.
  #
  # @version SketchUp 2021.0
  def folder
  end

  # The {#folder=} method is used to set the parent layer folder of a layer
  # folder.
  #
  # This will trigger +onLayerFolderRemoved+ followed by +onLayerFolderAdded+.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder1 = layers.add_folder('Folder1')
  #   folder2 = layers.add_folder('Folder2')
  #
  #   folder2.folder = folder1
  #
  # @param [Sketchup::LayerFolder, nil] parent
  #   +nil+ will make the the folder a
  #   direct child to the layer manager.
  #
  # @version SketchUp 2021.0
  def folder=(parent)
  end

  # The {#folders} returns the direct child-folders of the folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder1 = manager.add_folder('Doors')
  #   folder2 = folder1.add_folder('Windows')
  #   folders = folder1.folders
  #
  # @return [Array<Sketchup::LayerFolder>]
  #
  # @version SketchUp 2021.0
  def folders
  end

  # The {#layers} method retrieves the child layers of a folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Hello')
  #   folder.add_layer(manager.add_layer('World'))
  #   folder.add_layer(manager.add_layer('Universe'))
  #
  #   layers = folder.layers
  #
  # @return [Array<Sketchup::Layer>]
  #
  # @version SketchUp 2021.0
  def layers
  end

  # The {#name} method gets the name of the folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #   name = folder.name
  #
  # @return [String]
  #
  # @version SketchUp 2021.0
  def name
  end
  alias_method :display_name, :name

  # The {#name=} method sets the name of the folder.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder = manager.add_folder('Doors')
  #   folder.name = 'Windows'
  #
  # @param [String] name
  #
  # @raise [ArgumentError] if +name+ is empty.
  #
  # @version SketchUp 2021.0
  def name=(name)
  end

  # The {#remove_folder} method removes the folder from the model. All children
  # are preserved, but move up one level.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   folder1 = manager.add_folder('Doors')
  #   folder2 = manager.add_folder('Outer Doors')
  #   folder1.remove_folder(folder2)
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

  # The {#remove_layer} method removes a layer from a folder. The layer will be
  # parent to the layer manager.
  #
  # @api TagFolder
  #
  # @example
  #   manager = Sketchup.active_model.layers
  #   layer = manager.add_layer('Inner Doors')
  #   folder = manager.add_folder('Doors')
  #   folder.add_layer(layer)
  #
  #   folder.remove_layer(layer)
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @version SketchUp 2021.0
  def remove_layer(layer)
  end

  # The {#visible=} method is used to set if the layer folder is visible.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder = layers.add('Hello')
  #   folder.visible = false
  #
  # @param [Boolean] visible
  #
  # @version SketchUp 2021.0
  def visible=(visible)
  end

  # The {#visible?} method is used to determine if the layer folder is visible.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder = layers.add('Hello')
  #   folder.visible? # Returns: true
  #
  # @return [Boolean]
  #
  # @version SketchUp 2021.0
  def visible?
  end

  # The {#visible_on_new_pages=} method is used to set if the layer folder is by
  # default visible on new pages.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder = layers.add_folder('Hello')
  #   folder.visible_on_new_pages = false
  #   page = model.pages.add('My Page')
  #   model.pages.select_page = page # `folder` will now be hidden.
  #
  # @param [Boolean] visible
  #
  # @version SketchUp 2021.0
  def visible_on_new_pages=(visible)
  end

  # The {#visible_on_new_pages?} method is used to determine if the layer folder
  # is by default visible on new pages.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder = layers.add_folder('Hello')
  #   folder.visible_on_new_pages? # Returns: true
  #
  # @return [Boolean]
  #
  # @version SketchUp 2021.0
  def visible_on_new_pages?
  end

end

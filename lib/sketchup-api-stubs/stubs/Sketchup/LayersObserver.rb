# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to layers events.
#
# @abstract To implement this observer, create a Ruby class of this type, override the
#   desired methods, and add an instance of the observer to the objects of
#   interests.
#
# @example
#   class MyLayersObserver < Sketchup::LayersObserver
#     def onLayerAdded(layers, layer)
#       puts "onLayerAdded: #{layer.name}"
#     end
#   end
#
#   Sketchup.active_model.layers.add_observer(MyLayersObserver.new)
#   Sketchup.active_model.layers.add("Hello World")
#
# @version SketchUp 6.0
class Sketchup::LayersObserver

  # Instance Methods

  # The {#onCurrentLayerChanged} method is called when the user selects a
  # different active layer.
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onCurrentLayerChanged(layers, layer)
  #       puts "onCurrentLayerChanged: #{layer.name}"
  #     end
  #   end
  #
  #   Sketchup.active_model.layers.add_observer(MyLayersObserver.new)
  #   layer = Sketchup.active_model.layers.add("Hello World")
  #   Sketchup.active_model.active_layer = layer
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onCurrentLayerChanged(layers, layer)
  end

  # The {#onLayerAdded} method is called when a new layer is added to a model.
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onLayerAdded(layers, layer)
  #       puts "onLayerAdded: #{layer.name}"
  #     end
  #   end
  #
  #   Sketchup.active_model.layers.add_observer(MyLayersObserver.new)
  #   Sketchup.active_model.layers.add("Hello World")
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onLayerAdded(layers, layer)
  end

  # The {#onLayerChanged} method is called when a layer is changed.
  #
  # @example
  #   def onLayerChanged(layers, layer)
  #     puts "onLayerChanged: #{layer.name}"
  #   end
  #
  #   Sketchup.active_model.layers.add_observer(MyLayersObserver.new)
  #   layer = Sketchup.active_model.layers.add("Hello World")
  #   layer.name = "Hello Universe"
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @version SketchUp 2014
  def onLayerChanged(layers, layer)
  end

  # The {#onLayerFolderAdded} method is called when a layer folder is added
  # to a model.
  #
  # @api TagFolder
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onLayerFolderAdded(layers, layer_folder)
  #       puts "onLayerFolderAdded: #{layer_folder.name}"
  #     end
  #   end
  #
  #   model = Sketchup.active_model
  #   model.layers.add_observer(MyLayersObserver.new)
  #   folder = model.layers.add_folder("Hello World")
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::LayerFolder] layer_folder
  #
  # @return [nil]
  #
  # @version SketchUp 2021.0
  def onLayerFolderAdded(layers, layer_folder)
  end

  # The {#onLayerFolderChanged} method is called when a layer folder changes
  # one of its properties.
  #
  # @api TagFolder
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onLayerFolderChanged(layers, layer_folder)
  #       puts "onLayerFolderChanged: #{layer_folder.name}"
  #     end
  #   end
  #
  #   model = Sketchup.active_model
  #   model.layers.add_observer(MyLayersObserver.new)
  #   folder = model.layers.add_folder("Hello World")
  #   folder.name = "Hello Universe"
  #   folder.visible = false
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::LayerFolder] layer_folder
  #
  # @return [nil]
  #
  # @version SketchUp 2021.0
  def onLayerFolderChanged(layers, layer_folder)
  end

  # The {#onLayerFolderRemoved} method is called when a layer folder is removed
  # from a model.
  #
  # @api TagFolder
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onLayerFolderRemoved(layers, layer_folder)
  #       puts "onLayerRemoved: #{layer_folder.name}"
  #     end
  #   end
  #
  #   model = Sketchup.active_model
  #   model.layers.add_observer(MyLayersObserver.new)
  #   folder = model.layers.add_folder("Hello World")
  #   model.layers.remove_folder(folder)
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::LayerFolder] layer_folder
  #
  # @return [nil]
  #
  # @version SketchUp 2021.0
  def onLayerFolderRemoved(layers, layer_folder)
  end

  # The {#onLayerRemoved} method is called when a layer is removed from a model.
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onLayerRemoved(layers, layer)
  #       puts "onLayerRemoved: #{layer.name}"
  #     end
  #   end
  #
  #   Sketchup.active_model.layers.add_observer(MyLayersObserver.new)
  #   layer = Sketchup.active_model.layers.add("Hello World")
  #   Sketchup.active_model.layers.remove(layer)
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onLayerRemoved(layers, layer)
  end

  # The {#onParentFolderChanged} method is called when a layer changes parent
  # folder.
  #
  # @api TagFolder
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onParentFolderChanged(layers, layer)
  #       puts "onParentFolderChange: #{layer.name}"
  #     end
  #   end
  #
  #   model = Sketchup.active_model
  #   model.layers.add_observer(MyLayersObserver.new)
  #   layer = model.layers.add_layer("World")
  #   folder = model.layers.add_folder("Hello")
  #   layer.folder = folder
  #
  # @note When a folder changes parent {#onLayerFolderRemoved} and
  #   {#onLayerFolderAdded} triggers.
  #
  # @param [Sketchup::Layers] layers
  #
  # @param [Sketchup::Layer] layer
  #
  # @return [nil]
  #
  # @version SketchUp 2021.0
  def onParentFolderChanged(layers, layer)
  end

  # The {#onRemoveAllLayers} method is called when all layer are removed from a
  # model.
  #
  # @example
  #   class MyLayersObserver < Sketchup::LayersObserver
  #     def onRemoveAllLayers(layers)
  #       puts "onRemoveAllLayers: #{layers}"
  #     end
  #   end
  #
  #   Sketchup.active_model.layers.add_observer(MyLayersObserver.new)
  #   layer = Sketchup.active_model.layers.add("Hello World")
  #   Sketchup.active_model.layers.remove(layer)
  #
  # @param [Sketchup::Layers] layers
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onRemoveAllLayers(layers)
  end

end

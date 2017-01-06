# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to layers events. To
# implement this observer, create a Ruby class of this type, override the
# desired methods, and add an instance of the observer to the objects of
# interests.
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

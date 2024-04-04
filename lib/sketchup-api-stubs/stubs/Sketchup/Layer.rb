# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Layer class contains methods modifying and extracting information for a
# layer.
#
# By default, a SketchUp model has one layer, Layer 0 (Named "Untagged" in the
# UI since SketchUp 2020), which is the base
# layer. You can't delete or rename Layer 0. Unlike certain other CAD software
# packages, entities associated with different layers in SketchUp still
# intersect with each other. (If you want collections of entities to not
# intersect, place them in Groups instead.)
#
# Layers are commonly used to organize your model and control the visibility
# of related groups and components. For example, you could make all of your
# wall and roof entities different groups, associate layers with those groups,
# and then hide those layers so as to display just the floor plan in the model.
#
# @example
#   model = Sketchup.active_model
#   layers = model.layers
#   new_layer = layers.add('Doors')
#
# @note As of SketchUp 2020 "Layers" were renamed to "Tags" in the UI.
#   The API retains the use of "Layer" for compatibility and is synonymous with
#   "Tag".
#
# @version SketchUp 6.0
class Sketchup::Layer < Sketchup::Entity

  # Includes

  include Comparable

  # Instance Methods

  # The {#<=>} method is used to compare two layers based on their names.
  # This enables the Ruby +Array#sort+ method to sort SketchUp layers.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add "test layer"
  #   layer1 = layers[0]
  #   layer2 = layers[1]
  #   status = layer1 <=> layer2
  #
  # @param [Sketchup::Layer] layer2
  #
  # @return [Integer] -1 if layer1 is less than layer2. 1 if layer2
  #   is less than layer1. 0 if layer1 and layer2 are equal.
  #
  # @version SketchUp 6.0
  def <=>(layer2)
  end

  # The {#==} method is used to determine if two layers are the same.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layer1 = layers.add("Test layer 1")
  #   layer2 = layers.add("Test layer 2")
  #   equal = layer1 == layer2
  #
  # @param [Object] other
  #
  # @version SketchUp 6.0
  def ==(other)
  end

  # The {#color} method is used to retrieve the color of the layer.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add('Test layer')
  #   color = new_layer.color
  #
  # @return [Sketchup::Color]
  #
  # @version SketchUp 2014
  def color
  end

  # The {#color=} method is used to set the name of a layer.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add('Test layer')
  #   new_layer.color = Sketchup::Color.new(192, 0, 0)
  #
  # @param [Sketchup::Color] color
  #
  # @version SketchUp 2014
  def color=(color)
  end

  # The {#display_name} method is used to retrieve the display name of the layer.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add ("test layer")
  #   name = new_layer.display_name
  #
  # @return [String]
  #
  # @see #name
  #
  # @version SketchUp 2020.0
  def display_name
  end

  # The {#folder} method is used to return the parent layer folder of a layer.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder1 = layers.add_folder('Folder1')
  #   layer1 = layers.add('Layer1')
  #   layer1.folder = folder1
  #   parent_folder = layer1.folder # Returns: folder1
  #
  # @return [Sketchup::LayerFolder, nil] +nil+ if the folder is a direct child to
  #   the layer manager.
  #
  # @version SketchUp 2021.0
  def folder
  end

  # The {#folder=} method is used to set the parent layer folder of a layer.
  #
  # This will trigger +onParentFolderChanged+ in normal cases and
  # +onLayerChanged+ during undo/redo.
  #
  # @api TagFolder
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   folder = layers.add_folder('Hello')
  #   layer = layers.add_layer('World')
  #   layer.folder = folder
  #
  # @param [Sketchup::LayerFolder, nil] parent
  #   +nil+ will make the layer a
  #   direct child to the layer manager.
  #
  # @version SketchUp 2021.0
  def folder=(parent)
  end

  # The {#line_style} method retrieves the line style on this layer.
  #
  # @example
  #   line_style = Sketchup.active_model.layers[0].line_style
  #
  # @return [Sketchup::LineStyle, nil] The line style retrieved.
  #
  # @version SketchUp 2019
  def line_style
  end

  # The {#line_style=} method lets you set a specific line style to a layer
  #
  # @example
  #   line_style = Sketchup.active_model.line_styles["Dot"]
  #   Sketchup.active_model.layers[0].line_style = line_style
  #
  # @param [Sketchup::LineStyle, nil] line_style
  #   The line style to set on this layer.
  #
  # @return [Sketchup::Layer] The layer that the line style was applied on.
  #
  # @version SketchUp 2019
  def line_style=(line_style)
  end

  # The {#name} method is used to retrieve the name of the layer.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add "test layer"
  #   name = new_layer.name
  #
  # @return [String]
  #
  # @see #display_name
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#name=} method is used to set the name of a layer.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   new_layer = layers.add "test layer"
  #   name = new_layer.name = "new test layer"
  #
  # @param [String] name
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The {#page_behavior} method is used to retrieve the visibility behavior of the
  # layer for new pages and existing pages. For example, you may want your layer
  # to be visible or hidden by default in any new pages (aka Scenes) created by
  # the user.
  #
  # A page keeps a list of layers that do not have their default behavior.
  # If a layer is not in that list, then it is set to its default visibility
  # determined by one of these values:
  #
  # The behaviour is composed of a combination of these flags:
  #
  # [Default visibility]
  #   These flags are used to set the value of {#page_behavior}. A page keeps
  #   a list of layers that do not have their default behavior. If a layer
  #   is not in that list, then it is set to its default visibility which
  #   is determined by one of these flags.
  #   - {LAYER_VISIBLE_BY_DEFAULT}: +0x0000+
  #   - {LAYER_HIDDEN_BY_DEFAULT}: +0x0001+
  #
  # [Visibility on new pages]
  #   You can also set this addition flag that controls the visibility of
  #   a layer on newly created pages.
  #   - {LAYER_USES_DEFAULT_VISIBILITY_ON_NEW_PAGES}: +0x0000+
  #   - {LAYER_IS_VISIBLE_ON_NEW_PAGES}: +0x0010+
  #   - {LAYER_IS_HIDDEN_ON_NEW_PAGES}: +0x0020+
  #
  # The default visibility for a layer is set by either
  # {LAYER_VISIBLE_BY_DEFAULT} or
  # {LAYER_HIDDEN_BY_DEFAULT}. This is what will be used when a page
  # does not contain the visibility state of a layer.
  #
  # The remaining flags control the visibility of the layer for new pages.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layer = layers.add('Test Layer')
  #   hidden_by_default = (layer.page_behavior & LAYER_HIDDEN_BY_DEFAULT) ==
  #                       LAYER_HIDDEN_BY_DEFAULT
  #
  # @return [Integer] an integer representing the current behavior of the layer.
  #
  # @version SketchUp 6.0
  def page_behavior
  end

  # The {#page_behavior=} method is used to control the layer's visibility
  # behavior on existing and new pages.
  #
  # When you Update a page (as opposed to creating a new page) the current
  # visibility of the layer is used.
  #
  # The behavior is composed of a combination of these flags:
  #
  # [Default visibility]
  #   These flags are used to set the value of {#page_behavior}. A page keeps
  #   a list of layers that do not have their default behavior. If a layer
  #   is not in that list, then it is set to its default visibility which
  #   is determined by one of these flags.
  #   - {LAYER_VISIBLE_BY_DEFAULT}: +0x0000+
  #   - {LAYER_HIDDEN_BY_DEFAULT}: +0x0001+
  #
  # [Visibility on new pages]
  #   You can also set this addition flag that controls the visibility of
  #   a layer on newly created pages.
  #   - {LAYER_USES_DEFAULT_VISIBILITY_ON_NEW_PAGES}: +0x0000+
  #   - {LAYER_IS_VISIBLE_ON_NEW_PAGES}: +0x0010+
  #   - {LAYER_IS_HIDDEN_ON_NEW_PAGES}: +0x0020+
  #
  # @bug Prior to SketchUp 2014 the +LAYER_HIDDEN_BY_DEFAULT+ flag
  #   would trigger the validation check in SketchUp that would reset the
  #   {#page_behavior} of the layer.
  #
  # @example
  #   layers = Sketchup.active_model.layers
  #   layer = layers.add('Test Layer')
  #   behavior = LAYER_HIDDEN_BY_DEFAULT | LAYER_IS_HIDDEN_ON_NEW_PAGES
  #   layer.page_behavior = behavior
  #
  # @param [Integer] page_behavior
  #
  # @version SketchUp 6.0
  def page_behavior=(page_behavior)
  end

  # The {#visible=} method is used to set if the layer is visible.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layer = layers.add('Hello World')
  #   layer.visible = false
  #
  # @param [Boolean] visible
  #
  # @version SketchUp 6.0
  def visible=(visible)
  end

  # The {#visible?} method is used to determine if the layer is visible.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layer = layers.add('Hello World')
  #   layer.visible? # Returns: true
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def visible?
  end

end

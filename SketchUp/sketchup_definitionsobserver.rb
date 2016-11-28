# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::DefinitionsObserver

  # Instance Methods

  # The {#onComponentAdded} method is called whenever a definition is added to
  # the definitions collection.
  #
  # @example 
  #   def onComponentAdded(definitions, definition)
  #     puts "onComponentAdded: #{definition}"
  #   end
  #
  # @param [Sketchup::DefinitionList] definitions
  #
  # @param [Sketchup::ComponentDefinition] definition
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onComponentAdded(definitions, definition)
  end

  # The {#onComponentPropertiesChanged} method is called whenever a definition's
  # name or description are changed.
  # 
  # This does not fire when "Glue To", "Cuts Opening", or "Face Camera" settings
  # are changed.
  #
  # @example 
  #   def onComponentPropertiesChanged(definitions, definition)
  #     puts "onComponentPropertiesChanged: #{definition}"
  #   end
  #
  # @param [Sketchup::DefinitionList] definitions
  #
  # @param [Sketchup::ComponentDefinition] definition
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onComponentPropertiesChanged(definitions, definition)
  end

  # The {#onComponentAdded} method is called whenever a definition is removed
  # from the definitions collection.
  #
  # @example 
  #   def onComponentRemoved(definitions, definition)
  #     puts "onComponentRemoved: #{definition}"
  #   end
  #
  # @note This methods fires twice for each Component/Group erased.
  #
  # @param [Sketchup::ComponentDefinition] definition
  #
  # @param [Sketchup::DefinitionList] definitions
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onComponentRemoved(definitions, definition)
  end

  # The {#onComponentTypeChanged} event is fired when a component is converted to
  # a group or vice versa. (In the underlying implementation, {Sketchup::Group}s
  # are just a special kind of definition that is allowed to only have a single
  # instance.)
  #
  # @example 
  #   def onComponentTypeChanged(definitions, definition)
  #     puts "onComponentTypeChanged: #{definition}"
  #   end
  #
  # @param [Sketchup::DefinitionList] definitions
  #
  # @param [Sketchup::ComponentDefinition] definition
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onComponentTypeChanged(definitions, definition)
  end

end

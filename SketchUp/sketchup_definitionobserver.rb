# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::DefinitionObserver < Sketchup::EntityObserver

  # Instance Methods

  # The {#onComponentInstanceAdded} method is called when a new component
  # instance is added to a model.
  #
  # @example 
  #   def onComponentInstanceAdded(definition, instance)
  #     puts "onComponentInstanceAdded(#{definition}, #{instance})"
  #   end
  #
  # @param [Sketchup::ComponentDefinition] definition
  #   The definition of the
  #   added instance
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The added instance
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onComponentInstanceAdded(definition, instance)
  end

  # The {#onComponentInstanceRemoved} method is called when a component
  # instance is removed from a model.
  # 
  # implemented, this method is fired on a Move + Copy operation even
  # though no {Sketchup::ComponentInstance} is apparently removed.
  #
  # @example 
  #   def onComponentInstanceRemoved(definition, instance)
  #     puts "onComponentInstanceRemoved(#{definition}, #{instance})"
  #   end
  #
  # @note Due to the underlying way that the SketchUp Move Tool is
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The removed instance
  #
  # @param [Sketchup::ComponentDefinition] definition
  #   The definition of the
  #   instance removed
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onComponentInstanceRemoved(definition, instance)
  end

end

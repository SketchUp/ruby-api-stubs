# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to component definition
# events. To implement this observer, create a Ruby class of this type,
# override the desired methods, and add an instance of the observer to the
# definitions of interests.
#
# @example
#   # This is an example of an observer that watches a specific definition
#   # for new component insertions.
#   class MyDefObserver < Sketchup::DefinitionObserver
#     def onComponentInstanceAdded(definition, instance)
#       puts "onComponentInstanceAdded(#{definition}, #{instance})"
#     end
#   end
#
#   # Attach the observer
#   Sketchup.active_model.definitions[0].add_observer(MyDefObserver.new)
#
# @version SketchUp 6.0
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

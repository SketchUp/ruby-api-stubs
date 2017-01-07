# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to {Sketchup::Entities}
# collection events. To implement this observer, create a Ruby class of this
# type, override the desired methods, and add an instance of the observer to
# the objects of interests.
#
# @example
#   # This is an example of an observer that watches the entities collection
#   # new added elements and writes a message on the console.
#   class MyEntitiesObserver < Sketchup::EntitiesObserver
#     def onElementAdded(entities, entity)
#       puts "onElementAdded: #{entity}"
#     end
#   end
#
#   # Attach the observer
#   Sketchup.active_model.entities.add_observer(MyEntitiesObserver.new)
#
# @note The methods of this observer fire in such a way that making changes
#   to the model while inside of them is dangerous. If you experience sudden
#   crashes, it could be because of this observer. A potential workaround is to
#   use a {Sketchup::ToolsObserver} to watch what the user is doing instead.
#
# @version SketchUp 6.0
class Sketchup::EntitiesObserver

  # Instance Methods

  # The {#onActiveSectionPlaneChanged} method is invoked when a section plane
  # within this entities is activated or the active one is deactivated.
  #
  # @example
  #   def onActiveSectionPlaneChanged(entities)
  #     sp = entities.active_section_plane
  #     if sp.nil?
  #       puts "Section plane is deactivated on #{entities}"
  #     else
  #       puts "#{sp} is activated on #{entities}"
  #     end
  #   end
  #
  # @param [Sketchup::Entities] entities
  #
  # @return [nil]
  #
  # @version SketchUp 2014
  def onActiveSectionPlaneChanged(entities)
  end

  # The onElementAdded method is invoked when a single element is added
  # to the {Sketchup::Entities} collection.
  #
  # @example
  #   def onElementAdded(entities, entity)
  #     puts "onElementAdded: #{entity}"
  #   end
  #
  # @param [Sketchup::Entities] entities
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onElementAdded(entities, entity)
  end

  # The {#onElementModified} method is invoked whenever one or more elements in
  # the collection are modified.
  #
  # @example
  #   def onElementModified(entities, entity)
  #     puts "onElementModified: #{entity}"
  #   end
  #
  # @param [Sketchup::Entities] entities
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [nil]
  #
  # @version SketchUp 8.0
  def onElementModified(entities, entity)
  end

  # The {#onElementRemoved} method is invoked when a single element is removed
  # from the {Sketchup::Entities} collection.  Note that the entity has been
  # deleted and should not be used in anyway except to know that the entity has
  # been deleted.
  #
  # @example
  #   def onElementRemoved(entities, entity_id)
  #     puts "onElementRemoved: #{entity_id}"
  #   end
  #
  # @param [Sketchup::Entities] entities
  #
  # @param [Sketchup::Entity] entity_id
  #   The id of the entity that was
  #   deleted/removed.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onElementRemoved(entities, entity_id)
  end

  # The {#onEraseEntities} method is invoked when one or more entities are erased.
  #
  # @example
  #   def onEraseEntities(entities)
  #     puts "onEraseEntities: #{entities}"
  #   end
  #
  # @param [Sketchup::Entities] entities
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onEraseEntities(entities)
  end

end

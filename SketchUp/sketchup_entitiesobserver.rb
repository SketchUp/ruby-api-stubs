# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

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
  def onElementRemoved(entities, entity)
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

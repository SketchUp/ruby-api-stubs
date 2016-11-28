# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::EntityObserver

  # Instance Methods

  # The {#onChangeEntity} method is invoked when your entity is modified.
  #
  # @example 
  #   def onChangeEntity(entity)
  #     puts "onChangeEntity: #{entity}"
  #   end
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onChangeEntity(entity)
  end

  # The {#onEraseEntity} method is invoked when your entity is erased.
  #
  # @example 
  #   def onEraseEntity(entity)
  #     puts "onEraseEntity: #{entity}"
  #   end
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onEraseEntity(entity)
  end

end

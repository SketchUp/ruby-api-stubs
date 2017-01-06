# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to entity events. To
# implement this observer, create a Ruby class of this type, override the
# desired methods, and add an instance of the observer to the entity of
# interests.
#
# @example
#   class MyEntityObserver < Sketchup::EntityObserver
#     def onEraseEntity(entity)
#       puts "onEraseEntity: #{entity}"
#     end
#   end
#
#   # Attach the observer. (Assumes there is an entity in the model.)
#   Sketchup.active_model.entities[0].add_observer(MyEntityObserver.new)
#
# @note The methods of this observer fire in such a way that making changes
#   to the model while inside of them is dangerous. If you experience sudden
#   crashes, it could be because of this observer. A potential workaround is to
#   use a {Sketchup::ToolsObserver} to watch what the user is doing instead.
#
# @version SketchUp 6.0
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

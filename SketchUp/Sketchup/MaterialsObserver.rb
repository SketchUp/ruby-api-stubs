# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to materials events. To
# implement this observer, create a Ruby class of this type, override the
# desired methods, and add an instance of the observer to the objects of
# interests.
#
# @example
#   class MyMaterialsObserver < Sketchup::MaterialsObserver
#     def onMaterialAdd(materials, material)
#       puts "onMaterialAdd: #{material}"
#     end
#   end
#
#   Sketchup.active_model.materials.add_observer(MyMaterialsObserver.new)
#
# @note The callback +onMaterialRemoveAll+ has been deprecated, we recommend using
#   {#onMaterialRemove} instead.
#
# @version SketchUp 6.0
class Sketchup::MaterialsObserver

  # Instance Methods

  # The {#onMaterialAdd} method is invoked whenever a new material is added.
  #
  # @example
  #   def onMaterialAdd(materials, material)
  #     puts "onMaterialAdd: #{material}"
  #   end
  #
  # @param [Sketchup::Materials] materials
  #
  # @param [Sketchup::Material] material
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onMaterialAdd(materials, material)
  end

  # The {#onMaterialChange} method is invoked whenever a material's texture image
  # is altered.
  #
  # @example
  #   def onMaterialChange(materials, material)
  #     puts "onMaterialChange: #{material}"
  #   end
  #
  # @param [Sketchup::Materials] materials
  #
  # @param [Sketchup::Material] material
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onMaterialChange(materials, material)
  end

  # The {#onMaterialRefChange} method is invoked whenever the number of entities
  # that a material is painted on changes. This could be due to the user
  # manually painting something, but it could also be when faces are split,
  # pasted, push-pulled, deleted, etc.
  #
  # @example
  #   def onMaterialRefChange(materials, material)
  #     puts "onMaterialRefChange: #{material}"
  #   end
  #
  # @param [Sketchup::Materials] materials
  #
  # @param [Sketchup::Material] material
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onMaterialRefChange(materials, material)
  end

  # The {#onMaterialRemove} method is invoked whenever a material is deleted.
  #
  # @example
  #   def onMaterialRemove(materials, material)
  #     puts "onMaterialRemove: #{material}"
  #   end
  #
  # @param [Sketchup::Materials] materials
  #
  # @param [Sketchup::Material] material
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onMaterialRemove(materials, material)
  end

  # The {#onMaterialSetCurrent} method is invoked whenever a different material
  # is selected in the Materials dialog.
  #
  # The materials parameter might be Nil when the material is picked from the
  # materials libraries and not yet added to the model.
  #
  # @example
  #   def onMaterialSetCurrent(materials, material)
  #     puts "onMaterialSetCurrent: #{material}"
  #   end
  #
  # @param [Sketchup::Materials] materials
  #
  # @param [Sketchup::Material] material
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onMaterialSetCurrent(materials, material)
  end

  # The {#onMaterialUndoRedo} method is invoked whenever a material is altered
  # and then those changes are undone or redone.
  #
  # @example
  #   def onMaterialUndoRedo(materials, material)
  #     puts "onMaterialUndoRedo: #{material}"
  #   end
  #
  # @note Due to a bug, this callback does not fire in SU6 or SU7. You can use
  #   the {Sketchup::ModelObserver#onTransactionStart} to capture all undo
  #   events.
  #
  # @param [Sketchup::Material] material
  #
  # @param [Sketchup::Materials] materials
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onMaterialUndoRedo(materials, material)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to model events. To
# implement this observer, create a Ruby class of this type, override the
# desired methods, and add an instance of the observer to the model.
#
# Note that the observers related to transactions (aka undoable operations)
# are primarily for reporting and debugging. Performing any edit operations
# of your own (such as modifying the model) inside the observer callback
# should be avoided, as it could cause crashes or model corruption. The most
# common use for these callbacks is to help debug problems where your
# Ruby script's {Sketchup::Model#start_operation} and
# {Sketchup::Model#commit_operation} calls are somehow conflicting with
# SketchUp's native undo operations. You can set up an observer set to watch
# precisely what is going on.
#
# @example
#   # This is an example of an observer that watches the
#   # component placement event.
#   class MyModelObserver < Sketchup::ModelObserver
#     def onPlaceComponent(instance)
#       puts "onPlaceComponent: #{instance}"
#     end
#   end
#
#   # Attach the observer.
#   Sketchup.active_model.add_observer(MyModelObserver.new)
#
# @version SketchUp 6.0
class Sketchup::ModelObserver

  # Instance Methods

  # The {#onActivePathChanged} method is invoked when the user opens or closes a
  # {Sketchup::ComponentInstance} or {Sketchup::Group} for editing.
  #
  # When the user opens an instance for editing the positions and transformations
  # of the entities in the opened instance will be relative to global world
  # coordinates instead of the local coordinates relative to their parent.
  #
  # See {Sketchup::Model#active_path} and {Sketchup::Model#edit_transform} for
  # methods that report the current edit origin vs. the global origin, etc.
  #
  # By using this observer callback, you can keep track of the various nested
  # transformations as your users double click to drill into and out of
  # component edits.
  #
  # @example
  #   # As the user double clicks into component edits, show the "path" along
  #   # the model hierarchy they have followed to get here.
  #   def onActivePathChanged(model)
  #     puts "onActivePathChanged: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see Sketchup::Model#edit_transform
  #
  # @see Sketchup::Model#active_path
  def onActivePathChanged(model)
  end

  # The {#onAfterComponentSaveAs} method is invoked when the user context-clicks >
  # Save As on a component instance. It is called just after the component is
  # written to disk, so you can restore the component to some state before
  # returning control to the user.
  #
  # @example
  #   def onAfterComponentSaveAs(model)
  #     puts "onAfterComponentSaveAs: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see #onBeforeComponentSaveAs
  #
  # @version SketchUp 7.0
  def onAfterComponentSaveAs(model)
  end

  # The {#onBeforeComponentSaveAs} method is invoked when the user
  # context-clicks > Save As on a component instance. It is called just before
  # the component is written to disk, so you can make changes within the handler
  # and it will make it into the save.
  #
  # For example, you may decide that you want to add some attribute to every
  # component that is saved out, but you do not want that attribute sticking
  # around inside the current model. Within {#onBeforeComponentSaveAs} you could
  # add the attribute, and within {#onAfterComponentSaveAs} you could delete that
  # attribute.
  #
  # The callback is not sent the component that is to be saved, but the
  # model's selection will contain it.
  #
  # @example
  #   def onBeforeComponentSaveAs(model)
  #     puts "onBeforeComponentSaveAs: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 7.0
  def onBeforeComponentSaveAs(model)
  end

  # The {#onDeleteModel} method is invoked when a model is deleted.
  #
  # @example
  #   def onDeleteModel(model)
  #     puts "onDeleteModel: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onDeleteModel(model)
  end

  # The {#onEraseAll} method is invoked when everything in a model is erased.
  #
  # @example
  #   def onEraseAll(model)
  #     puts "onEraseAll: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onEraseAll(model)
  end

  # The {#onExplode method} is invoked whenever a component anywhere in this
  # model is exploded. This is an easier way to watch explode events vs.
  # attaching an InstanceObserver to every instance in the model.
  #
  # Since the callback does not return what was exploded, one solution is to
  # place a selection observer that keeps track of which entities whose
  # explosion you are interested in are in the selection. Since SketchUp's
  # user interface only provides a means of exploding the selection, this
  # method is a reliable way to know what was just exploded.
  #
  # Another method would be to watch
  # {Sketchup::ComponentDefinition.count_instances} to determine what just
  # changed, as any components that were exploded will now be less an instance.
  #
  # @example
  #   def onExplode(model)
  #     puts "onExplode: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 7.0
  def onExplode(model)
  end

  # The {#onPidChanged} method is invoked when a persistent id in the model
  # changes. For example when entities are grouped.
  #
  # @example
  #   def onPidChanged(model, old_pid, new_pid)
  #     puts "onPidChanged: #{model}, #{old_pid} => #{new_pid}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @param [Integer] old_pid
  #
  # @param [Integer] new_pid
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def onPidChanged(model, old_pid, new_pid)
  end

  # The {#onPlaceComponent} method is invoked when a component is "placed" into
  # the model, meaning it is dragged from the Component Browser.
  #
  # @example
  #   def onPlaceComponent(model)
  #     puts "onPlaceComponent: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 7.0
  def onPlaceComponent(model)
  end

  # The {#onPostSaveModel} method is invoked after a model has been saved to disk.
  #
  # @example
  #   def onPostSaveModel(model)
  #     puts "onPostSaveModel: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 8.0
  def onPostSaveModel(model)
  end

  # The {#onPreSaveModel} method is invoked before a model is saved to disk.
  #
  # @example
  #   def onPreSaveModel(model)
  #     puts "onPreSaveModel: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 8.0
  def onPreSaveModel(model)
  end

  # The {#onSaveModel} method is invoked after a model has been saved to disk.
  #
  # @example
  #   def onSaveModel(model)
  #     puts "onSaveModel: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onSaveModel(model)
  end

  # The {#onTransactionAbort} method is invoked when a transaction is aborted.
  #
  # @example
  #   def onTransactionAbort(model)
  #     puts "onTransactionAbort: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see Sketchup::Model#abort_operation
  #
  # @version SketchUp 6.0
  def onTransactionAbort(model)
  end

  # The {#onTransactionCommit} method is invoked when a transaction is completed.
  #
  # @example
  #   def onTransactionCommit(model)
  #     puts "onTransactionCommit: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see Sketchup::Model#commit_operation
  #
  # @version SketchUp 6.0
  def onTransactionCommit(model)
  end

  # The {#onTransactionEmpty} method is invoked when a transaction
  # (aka an undoable operation) starts and then is committed without anything
  # being altered in between.
  #
  # @example
  #   def onTransactionEmpty(model)
  #     puts "onTransactionEmpty: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see Sketchup::Model#start_operation
  #
  # @version SketchUp 6.0
  def onTransactionEmpty(model)
  end

  # The {#onTransactionRedo} method is invoked when the user "redoes" a
  # transaction (aka undo operation.) You can programmatically fire a redo by
  # calling +Sketchup.sendAction("editRedo")+.
  #
  # @example
  #   def onTransactionRedo(model)
  #     puts "onTransactionRedo: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onTransactionRedo(model)
  end

  # The {#onTransactionStart} method is invoked when a transaction
  # (aka an undoable operation) starts.
  #
  # @example
  #   def onTransactionStart(model)
  #     puts "onTransactionStart: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see Sketchup::Model#start_operation
  #
  # @version SketchUp 6.0
  def onTransactionStart(model)
  end

  # The {#onTransactionUndo method} is invoked when the user "undoes" a
  # transaction (aka undo operation.) You can programmatically fire an undo by
  # calling +Sketchup.sendAction("editUndo")+.
  #
  # @example
  #   def onTransactionUndo(model)
  #     puts "onTransactionUndo: #{model}"
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onTransactionUndo(model)
  end

end

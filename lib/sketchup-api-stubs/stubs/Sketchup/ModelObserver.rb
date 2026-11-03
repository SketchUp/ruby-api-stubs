# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to model events.
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
# @abstract To implement this observer, create a Ruby class of this type, override the
#   desired methods, and add an instance of the observer to the model.
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
# @example
#   # This example demonstrates handling both empty and non-empty transactions,
#   # while also showing how the observer event queuing works.
#   # The key difference is that onTransactionCommit is called when the transaction
#   # contains model changes, while onTransactionEmpty is called when no changes were made.
#   #
#   # IMPORTANT: Remember that ALL callbacks fire at commit time, not when operations occur.
#
#   class TransactionObserver < Sketchup::ModelObserver
#
#     # Called for any transaction, but remember this fires at commit time,
#     # not when start_operation is actually called
#     def onTransactionStart(model)
#       puts "Transaction started callback fired: #{Time.now}"
#       # We can't actually track when the transaction really started,
#       # so we just record when the callback fired
#       @callback_time = Time.now
#     end
#
#     # Called for transactions that modified the model
#     # This fires immediately after onTransactionStart at commit time
#     def onTransactionCommit(model)
#       # We can only calculate time between callbacks, not actual operation time
#       elapsed = Time.now - @callback_time
#       puts "Transaction committed with changes (#{elapsed.round(3)}s after callback)"
#       puts "Note: All callbacks fired at commit time, not during operations"
#       handle_transaction_completion(model, :with_changes)
#     end
#
#     # Called for transactions that didn't modify the model
#     # This fires immediately after onTransactionStart at commit time
#     def onTransactionEmpty(model)
#       # We can only calculate time between callbacks, not actual operation time
#       elapsed = Time.now - @callback_time
#       puts "Transaction committed with NO changes (#{elapsed.round(3)}s after callback)"
#       puts "Note: All callbacks fired at commit time, not during operations"
#       handle_transaction_completion(model, :empty)
#     end
#
#     # Common handler for both types of transaction completions
#     def handle_transaction_completion(model, type)
#       puts "Transaction complete (#{type}): #{Time.now}"
#       # Perform actions needed for any completed transaction
#       # (for example, updating UI, logging, etc.)
#     end
#
#     def onTransactionAbort(model)
#       puts "Transaction aborted: #{Time.now}"
#     end
#   end
#
#   # Attach the observer
#   observer = TransactionObserver.new
#   Sketchup.active_model.add_observer(observer)
#
#   # Demonstration of the queuing behavior
#   puts "DEMONSTRATION OF OBSERVER EVENT QUEUING:"
#   puts "1. Starting transaction at: #{Time.now}"
#   model = Sketchup.active_model
#   model.start_operation("Transaction Test", true)
#
#   # Notice that no observer callbacks fire at this point
#   puts "2. After start_operation - no callbacks fired yet: #{Time.now}"
#   puts "3. Now adding geometry..."
#   model.entities.add_line([0,0,0], [100,0,0])
#
#   # Still no observer callbacks
#   puts "4. After adding geometry - still no callbacks: #{Time.now}"
#   puts "5. Now committing transaction..."
#
#   # All observer events will fire when we commit
#   model.commit_operation
#
#   # The callbacks have now fired in sequence at commit time
#   puts "6. After commit_operation - ALL callbacks have now fired: #{Time.now}"
#
#   # Try an empty transaction too
#   puts "\nEMPTY TRANSACTION TEST:"
#   puts "1. Starting empty transaction: #{Time.now}"
#   model.start_operation("Empty Test", true)
#   puts "2. Committing with no changes..."
#   model.commit_operation
#   puts "3. After commit - onTransactionStart and onTransactionEmpty fired: #{Time.now}"
#
# @note Since SketchUp 2016, all observer events within a transaction are queued and
#   fired only after the operation is committed. This means callbacks like
#   {#onTransactionStart} and other model events do not fire in real-time, but are
#   delayed until the transaction completes. The callbacks fire in the correct sequence,
#   but they all occur at commit time, not when the operations themselves happen.
#   This behavior change was made to improve performance and stability.
#
# @note The API currently lacks a method to query the current operation state
#   (e.g., whether a transaction is currently open). This limitation means
#   observers cannot be used to monitor the real-time state of transactions.
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
  # @see Sketchup::Model#active_path
  #
  # @see Sketchup::Model#edit_transform
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
  # @deprecated This callback is deprecated. To handle model close events, use
  #   {Sketchup::AppObserver#onCloseModel} instead.
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
  # @deprecated This callback is deprecated. To handle model close events, use
  #   {Sketchup::AppObserver#onCloseModel} instead.
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

  # The {#onPidChanged} method is invoked when a {Sketchup::Entity#persistent_id persistent id} of
  # an entity changes within the model.
  #
  # @example
  #   class PidObserver < Sketchup::ModelObserver
  #     def onPidChanged(model, old_pid, new_pid)
  #       entity = model.find_entity_by_persistent_id(new_pid)
  #       puts "Entity with new PID #{new_pid}: #{entity}"
  #     end
  #   end
  #
  #   model = Sketchup.active_model
  #   model.add_observer(PidObserver.new)
  #
  # @note This callback is useful for tracking changes to entities that result in new PIDs, such as
  #   grouping or other modifications that result in new entities.
  #
  # @param [Sketchup::Model] model
  #
  # @param [Integer] old_pid
  #   The old persistent ID of the entity.
  #
  # @param [Integer] new_pid
  #   The new persistent ID of the entity.
  #
  # @return [nil]
  #
  # @see Sketchup::Model#find_entity_by_persistent_id
  #
  # @see Sketchup::Entity#persistent_id
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

  # The {#onTransactionCommit} method is invoked when a transaction containing
  # model changes is completed. This callback is only triggered for transactions
  # that actually modified the model.
  #
  # If a transaction is committed without any model changes, {#onTransactionEmpty} will be
  # called instead of this method. This is important to understand when implementing
  # transaction event handlers.
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
  # @see #onTransactionEmpty
  #
  # @version SketchUp 6.0
  def onTransactionCommit(model)
  end

  # The {#onTransactionEmpty} method is invoked when a transaction
  # (aka an undoable operation) starts and then is committed without anything
  # being altered in between. This callback is triggered instead of {#onTransactionCommit}
  # when a transaction contains no model changes.
  #
  # This behavior is important to understand when implementing handlers for transaction events.
  # If you need a unified handler for all committed transactions (both empty and non-empty),
  # you'll need to implement both callbacks.
  #
  # @example
  #   def onTransactionEmpty(model)
  #     puts "onTransactionEmpty: #{model}"
  #     # If you need the same handling for both empty and non-empty transactions,
  #     # you can manually call your onTransactionCommit handler:
  #     # onTransactionCommit(model)
  #   end
  #
  # @param [Sketchup::Model] model
  #
  # @return [nil]
  #
  # @see Sketchup::Model#start_operation
  #
  # @see Sketchup::Model#commit_operation
  #
  # @version SketchUp 6.0
  def onTransactionEmpty(model)
  end

  # The {#onTransactionRedo} method is invoked when the user "redoes" a
  # transaction (aka undo operation.) You can programmatically fire a redo by
  # calling <code>Sketchup.send_action('editRedo:')</code>.
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
  #     # Remember: This is triggered at commit time, not when start_operation is called
  #     puts "onTransactionStart: #{model}"
  #   end
  #
  # @note This callback is not fired immediately when {Sketchup::Model#start_operation}
  #   is called. Instead, it is queued and triggered when the transaction is committed,
  #   firing just before {#onTransactionCommit} or {#onTransactionEmpty}. Since
  #   SketchUp 2016, all transaction-related events are queued and fired at commit time
  #   in the appropriate sequence, rather than in real-time when the operations occur.
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
  # calling <code>Sketchup.send_action('editUndo:')</code>.
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

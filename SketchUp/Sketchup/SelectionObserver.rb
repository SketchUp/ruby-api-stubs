# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to selection events. To
# implement this observer, create a Ruby class of this type, override the
# desired methods, and add an instance of the observer to the objects of
# interests.
#
# @example
#   # This is an example of an observer that watches the selection for
#   # changes.
#   class MySelectionObserver < Sketchup::SelectionObserver
#     def onSelectionBulkChange(selection)
#       puts "onSelectionBulkChange: #{selection}"
#     end
#   end
#
#   # Attach the observer.
#   Sketchup.active_model.selection.add_observer(MySelectionObserver.new)
#
# @version SketchUp 6.0
class Sketchup::SelectionObserver

  # Instance Methods

  #
  # @example
  #   def onSelectionAdded(selection, entity)
  #     puts "onSelectionAdded: #{entity}"
  #   end
  #
  # @note This event might not trigger even if a single element is selected. For
  #   instance the Selection tool will trigger #onSelectionBulkChange regardless.
  #
  # @param [Sketchup::Selection] selection
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [nil]
  #
  # @see onSelectionBulkChange
  #
  # @version SketchUp 6.0
  def onSelectionAdded(selection, entity)
  end

  # The {#onSelectionBulkChange} method is called whenever items are added or
  # removed from the selection set.
  #
  # The {#onSelectionBulkChange} callback will not trigger if the selection
  # is cleared by clicking on empty model space. Use the {#onSelectionCleared}
  # method to catch this case.
  #
  # @example
  #   def onSelectionBulkChange(selection)
  #     puts "onSelectionRemoved: #{selection}"
  #   end
  #
  # @param [Sketchup::Selection] selection
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onSelectionBulkChange(selection)
  end

  # The {#onSelectionCleared} method is called when the selection is completely
  # emptied.
  #
  # @example
  #   def onSelectionCleared(selection)
  #     puts "onSelectionCleared: #{selection}"
  #   end
  #
  # @param [Sketchup::Selection] selection
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onSelectionCleared(selection)
  end

  #
  # @example
  #   class MySelectionObserver < Sketchup::SelectionObserver
  #     # Note that there is a bug that prevent this from being called. Instead
  #     # listen to onSelectedRemoved until the bug is fixed.
  #     def onSelectionRemoved(selection, entity)
  #       puts "onSelectionRemoved: #{entity}"
  #     end
  #     # To work around this you must catch this event instead until the bug is
  #     # fixed:
  #     def onSelectedRemoved(selection, entity)
  #       # You can forward it to the correct event to be future compatible.
  #       onSelectionRemoved(selection, entity)
  #     end
  #   end
  #
  #   # Attach the observer.
  #   Sketchup.active_model.selection.add_observer(MySelectionObserver.new)
  #
  # @note Due to a bug in SketchUp this event doesn't trigger. Instead
  #   +onSelectedRemoved+ is called.
  #
  # @param [Sketchup::Entity] entity
  #
  # @param [Sketchup::Selection] selection
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onSelectionRemoved(selection, entity)
  end

end

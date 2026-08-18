# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to application events.
# This interface is often used to attach other observers to models as they
# are opened or started.
# This ensures that your observers are watching all open models.
#
# For example, when one attaches a {Sketchup::SelectionObserver}, it is only
# attached to the {Sketchup::Selection} collection of a given model. If a 2nd
# model is opened, the new model's selection changes will not fire selection
# callbacks unless you've attached a {Sketchup::SelectionObserver} to the new
# model as well. By watching for {#onNewModel}, you can be sure to do so.
#
# @abstract To implement this observer, create a Ruby class of this type, override the
#   desired methods, and add an instance of the observer to the
#   application class.
#
# @example Complete example with class definition and observer attachment
#   # Define an observer class that watches for application-level events.
#   # This is particularly useful for attaching model-specific observers
#   # to ensure all open models are monitored.
#   class MyAppObserver < Sketchup::AppObserver
#
#     def onNewModel(model)
#       puts "New model created: #{model}"
#       # Attach observers to the new model here
#       # model.selection.add_observer(MySelectionObserver.new)
#     end
#
#     def onOpenModel(model)
#       puts "Model opened: #{model}"
#       # Attach observers to the opened model here
#     end
#
#     def onActivateModel(model)
#       puts "Model activated: #{model}"
#       # Called when switching between models (Mac supports multiple documents)
#     end
#
#     def onQuit
#       puts "SketchUp is quitting"
#       # Save state or clean up before application exits
#     end
#
#     # Return true to receive onNewModel/onOpenModel for startup models
#     def expectsStartupModelNotifications
#       return true
#     end
#   end
#
#   # Create and attach the observer instance
#   Sketchup.add_observer(MyAppObserver.new)
#   puts "AppObserver attached successfully"
#
# @version SketchUp 6.0
class Sketchup::AppObserver

  # Instance Methods

  # The {#expectsStartupModelNotifications} method is called to determine if the
  # observer expects to receive {#onNewModel} and {#onOpenModel} calls for the
  # models that are created or opened at SketchUp startup. This includes the
  # empty initial model, a model opened via command line arguments, or
  # auto-restored models on Mac OS X.
  #
  # @example
  #   class MyStartupObserver < Sketchup::AppObserver
  #     def onNewModel(model)
  #       puts "New model: #{model}"
  #     end
  #     def onOpenModel(model)
  #       puts "Opened model: #{model}"
  #     end
  #     def expectsStartupModelNotifications
  #       true  # Return true to receive startup notifications
  #     end
  #   end
  #   Sketchup.add_observer(MyStartupObserver.new)
  #   # Restart SketchUp to see startup model notifications
  #
  # @note Prior to SketchUp 2014, {#onNewModel} and {#onOpenModel} were
  #   not being called for the startup models. This issue is now fixed but
  #   observers still need to express their intent to receive these calls. This is
  #   for back-compatibility with existing scripts which worked around these
  #   missing calls by other means. For new code, this method should be implemented
  #   and should return +true+.
  #
  # @return [Boolean] +true+ to receive {#onNewModel} and {#onOpenModel} calls
  #   for startup models. Return +false+ or simply not
  #   implement the method in order to not receive these calls
  #   (which was the behavior prior to SketchUp 2014).
  #
  # @version SketchUp 2014
  def expectsStartupModelNotifications
  end

  # The {#onActivateModel} method is called when an open model is activated. This
  # is relevant on Mac only which supports multiple documents to be opened
  # simultaneously.
  #
  # @example
  #   class MyActivateObserver < Sketchup::AppObserver
  #     def onActivateModel(model)
  #       puts "Model activated: #{model}"
  #       puts "Title: #{model.title}"
  #     end
  #   end
  #   Sketchup.add_observer(MyActivateObserver.new)
  #
  # @param [Sketchup::Model] model
  #   The newly-activated model object.
  #
  # @return [nil]
  #
  # @version SketchUp 2015
  def onActivateModel(model)
  end

  # The {#onCloseModel} method is called just before a model is closed, while
  # the model is still valid. This is useful for cleaning up resources or
  # saving state before the model becomes unavailable.
  #
  # @api MDI
  #
  # @example
  #   class MyCloseObserver < Sketchup::AppObserver
  #     def onCloseModel(model)
  #       puts "Model closing: #{model}"
  #       puts "Title: #{model.title}"
  #       puts "Entities: #{model.entities.count}"
  #       # Model is still valid here - you can query its properties
  #     end
  #   end
  #   Sketchup.add_observer(MyCloseObserver.new)
  #   # Then close the model window
  #
  # @param [Sketchup::Model] model
  #   The model being closed.
  #
  # @return [nil]
  #
  # @version SketchUp 2027.0
  def onCloseModel(model)
  end

  # The {#onExtensionsLoaded} method is called when SketchUp has finished loading
  # all extensions when the application starts.
  #
  # @example
  #   class MyExtensionsObserver < Sketchup::AppObserver
  #     def onExtensionsLoaded
  #       puts "All extensions have been loaded!"
  #       puts "Total extensions: #{Sketchup.extensions.count}"
  #     end
  #   end
  #   Sketchup.add_observer(MyExtensionsObserver.new)
  #   # This already fired at startup. Restart SketchUp to see it again.
  #
  # @version SketchUp 2022.0
  def onExtensionsLoaded
  end

  # The {#onNewModel} method is called when the application creates a new, empty
  # model.
  #
  # @example
  #   class MyNewModelObserver < Sketchup::AppObserver
  #     def onNewModel(model)
  #       puts "New model created: #{model}"
  #     end
  #     def expectsStartupModelNotifications
  #       true  # Receive notifications for startup models
  #     end
  #   end
  #   Sketchup.add_observer(MyNewModelObserver.new)
  #   # Then create a new model: File > New
  #
  # @param [Sketchup::Model] model
  #   The active model object.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onNewModel(model)
  end

  # The {#onOpenModel} method is called when the application opens an existing
  # model.
  #
  # @example
  #   class MyOpenModelObserver < Sketchup::AppObserver
  #     def onOpenModel(model)
  #       puts "Model opened: #{model}"
  #       puts "Path: #{model.path}"
  #     end
  #     def expectsStartupModelNotifications
  #       true  # Receive notifications for startup models
  #     end
  #   end
  #   Sketchup.add_observer(MyOpenModelObserver.new)
  #   # Then open a model: File > Open
  #
  # @note If a skp file is loaded via the command line or double-clicking on
  #   a skp in explorer (which is also is the command line) then this
  #   observer will not be called.  The Ruby interpreter in SketchUp is
  #   initialized after command line processing so the observer won't
  #   be added in time to get the notification.
  #
  # @param [Sketchup::Model] model
  #   The active model object.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onOpenModel(model)
  end

  # The {#onQuit} method is called when SketchUp closes. This is useful if you
  # need to clean up anything or store your application state upon close.
  #
  # @example
  #   class MyQuitObserver < Sketchup::AppObserver
  #     def onQuit
  #       puts "SketchUp is closing!"
  #     end
  #   end
  #   Sketchup.add_observer(MyQuitObserver.new)
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onQuit
  end

  # The {#onUnloadExtension} method is called when the user turns off a Ruby
  # extension. This is useful for detecting if the user is deactivating
  # some critical set of observers, for example, so you can warn them
  # or cache your extension state.
  #
  # @example
  #   class MyUnloadObserver < Sketchup::AppObserver
  #     def onUnloadExtension(extension_name)
  #       puts "Extension unloaded: #{extension_name}"
  #     end
  #   end
  #   Sketchup.add_observer(MyUnloadObserver.new)
  #   # Then: Window > Extension Manager > Disable an extension
  #
  # @param [String] extension_name
  #   The name of the extension just unloaded.
  #
  # @return [nil]
  #
  # @version SketchUp 7.0
  def onUnloadExtension(extension_name)
  end

end

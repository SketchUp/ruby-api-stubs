# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to component instance
# events. To implement this observer, create a Ruby class of this type,
# override the desired methods, and add an instance of the observer to the
# objects of interests.
#
# Note that you may also attach {Sketchup::InstanceObserver}s to
# {Sketchup::Group}s.
#
# @example
#   # This is an example of an observer that watches a specific instance
#   # for open edit actions and shows a messagebox.
#   class MyInstanceObserver < Sketchup::InstanceObserver
#     def onOpen(instance)
#       puts "onOpen: #{instance}"
#     end
#
#     def onClose(instance)
#       puts "onClose: #{instance}"
#     end
#   end
#
#   # Attach the observer. (This example assumes that your first definition
#   # in the model contains an instance to attach the observer to. This
#   # example should work with a model where Sang or Bryce are present in
#   # the template.)
#   model = Sketchup.active_model
#   model.definitions[0].instances[0].add_observer(MyInstanceObserver.new)
#
# @version SketchUp 6.0
class Sketchup::InstanceObserver < Sketchup::EntityObserver

  # Instance Methods

  # The {#onClose} method is called when an instance is "closed," meaning an end
  # user was editing a component's geometry and then exited back into the
  # parent's editing space.
  #
  # @example
  #   def onClose(instance)
  #     puts "onClose: #{instance}"
  #   end
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance that was just
  #   closed
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onClose(instance)
  end

  # The {#onOpen} method is called when an instance is "opened," meaning an end
  # user has double clicked on it to edit its geometry. This is particularly
  # useful if your plugin is dynamically drawing geometry or performing
  # transformations in global space, since when in "edit component" mode all
  # transformations and positions are returned in relation to the current
  # component's origin.
  #
  # This method will tell you when a user has entered edit mode, and you can
  # then use {Sketchup::Model#active_path} and {Sketchup::Model#edit_transform}
  # methods to determine any corrections you need to make to your
  # transformations.
  #
  # @example
  #   def onOpen(instance)
  #     puts "onOpen: #{instance}"
  #   end
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance that was opened
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onOpen(instance)
  end

end

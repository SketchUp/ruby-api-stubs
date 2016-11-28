# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

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

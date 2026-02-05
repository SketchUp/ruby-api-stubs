# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::Animation} interface is implemented to create animations
# inside SketchUp. At any given time, a single animation can be active on a
# {Sketchup::View}. To make your own, build a Ruby class that contains the
# methods described below:
#
#   # This example demonstrates a simple animation with implementation of
#   # the optional callback method stop, which is invoked
#   # by SketchUp during specific animation events.
#   class SimpleFloatAnimation
#     def initialize
#       @speed = 1.0           # Camera movement speed
#       puts "Animation initialized"
#     end
#
#     # Required method - called for each animation frame
#     def nextFrame(view)
#       # Move camera upward
#       new_eye = view.camera.eye
#       new_eye.z = new_eye.z + @speed
#       view.camera.set(new_eye, view.camera.target, view.camera.up)
#       view.show_frame
#
#       # Continue animation until reaching maximum height
#       return new_eye.z < 500.0
#     end
#
#     # Optional callback - called by SketchUp when animation is stopped
#     # Note: This method is called automatically by SketchUp and cannot
#     # be called directly to stop an animation
#     def stop
#       puts "Animation was stopped by SketchUp"
#       # Cleanup code when animation ends
#     end
#    end
#
#    # Add menu item to start the animation
#    UI.menu("Camera").add_item("Start Animation") {
#      animation = SimpleFloatAnimation.new
#      Sketchup.active_model.active_view.animation = animation
#    }
#
#    # To stop the animation programmatically:
#    UI.menu("Camera").add_item("Stop Animation") {
#      # Setting animation to nil will trigger the stop method in our animation class
#      Sketchup.active_model.active_view.animation = nil
#    }
#
# {Sketchup::Animation} objects are activated by using the
# {Sketchup::View#animation=} method on a {Sketchup::View}
# object. To stop an animation set the view's animation object to +nil+, like
# so:
#
#   Sketchup.active_model.active_view.animation = nil
#
#
# ==Managing Multiple Animations:
#
# While only one animation object can be active on a {Sketchup::View} at any
# given time, you can create a composite animation class to manage multiple
# animations simultaneously. This approach allows you to animate different
# elements, such as objects and the camera, within a single animation framework.
#
# Example:  Combining Animations
#
#   class CombinedAnimation
#     def initialize(object_animation, camera_animation)
#       @object_animation = object_animation
#       @camera_animation = camera_animation
#     end
#
#     def nextFrame(view)
#       @object_animation.nextFrame(view)
#       @camera_animation.nextFrame(view)
#       true
#     end
#   end
#
#   # Usage
#   object_animation = RotateAnimation.new
#   camera_animation = RotateCamera.new(0.01)
#   combined_animation = CombinedAnimation.new(object_animation, camera_animation)
#   Sketchup.active_model.active_view.animation = combined_animation
#
# @abstract Implement the methods described in this class to create a an
#   animation. You can not sub-class this class because it is not defined by
#   the API.
#
# @version SketchUp 6.0
class Sketchup::Animation

  # Instance Methods

  # The {#nextFrame} method is invoked by SketchUp to tell the animation to
  # display its next frame. This method should set up the camera and then call
  # {Sketchup::View#show_frame}.
  #
  # The {#nextFrame} method is the only required method of the
  # {Sketchup::Animation} interface that you must implement.
  #
  # @example
  #   def nextFrame(view)
  #     # Insert your handler code for updating the camera or other entities.
  #     view.show_frame
  #     return true
  #   end
  #
  # @param [Sketchup::View] view
  #   The view for the animation.
  #
  # @return [Boolean] continue - +true+ if you want the animation to continue
  #   on to the next frame, +false+ if you want the animation
  #   to stop after this frame.
  #
  # @version SketchUp 6.0
  #
  # @version SketchUp 6.0
  def nextFrame(view)
  end

  # The {#pause} method is invoked by SketchUp when the animation is paused.
  #
  # This method is optional (you do not need to implement this method unless you
  # want to perform some specialized function when the animation is paused). You
  # cannot call this method in your code explicitly and expect an animation to
  # pause, only certain SketchUp events cause the method to be called.
  #
  # @example
  #   def pause
  #     # Insert handler code for whatever you need to do when it is paused.
  #   end
  #
  # @note The user interface for pausing and resuming animations isn't integrated
  #   with the Ruby API in the current version, so this method is probably not
  #   useful to you.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def pause
  end

  # The {#resume} method is invoked by SketchUp when the animation is resumed
  # after being paused.
  #
  # This method is optional (you do not need to implement this method unless you
  # want to perform some specialized function when the animation is resumed).
  # You cannot call this method in your code explicitly and expect an animation
  # to stop, only certain SketchUp events cause the method to be called.
  #
  # @example
  #   def resume
  #     # Insert your handler code for whatever you need to do as you resume.
  #   end
  #
  # @note The user interface for pausing and resuming animations isn't integrated
  #   with the Ruby API in the current version, so this method is probably not
  #   useful to you.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def resume
  end

  # The {#stop} method is invoked by SketchUp when the animation is stopped.
  #
  # This method is optional (you do not need to implement this method unless you
  # want to perform some specialized function when the animation is stopped). You
  # cannot call this method in your code explicitly and expect an animation to
  # stop, only certain SketchUp events cause the method to be called.
  #
  # Perhaps the most common way for this method to be called is when your Ruby
  # code sets {Sketchup::View#animation=} to +nil+. See the class comments for
  # an example of this.
  #
  # @example
  #   class MyAnimation
  #     def stop
  #       # Insert your handler code for cleaning up after your animation.
  #     end
  #   end
  #
  # @note Do not call {Sketchup::View#animation=} from this method. This will
  #   cause a recursive loop and crash SketchUp 2017 and earlier versions.
  #   As of SketchUp 2018 this will raise a +RunTimeError+.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def stop
  end

end

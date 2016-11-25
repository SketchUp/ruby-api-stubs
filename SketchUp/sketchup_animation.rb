# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

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
  #   def stop
  #     # Insert your handler code for cleaning up after your animation.
  #   end
  #
  # @note Do not call +view.animation = nil+ within this method! This will cause
  #   a recursive loop and crash SketchUp.
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def stop
  end

end

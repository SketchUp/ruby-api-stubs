# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to changes in camera
# position (a frame) between one scene page and another. This observer's
# callback method is called when the user manually makes a scene change,
# or the internal animation feature runs.
#
# This abstract observer is any object that implements a callback method
# +frameChange+ with 3 arguments: +from_scene+ (the scene that you
# transition from), +to_scene+ (the scene that you transition toward)
# and a +percent_done+ between +0.0+ and +1.0+ (that indicates the percentage
# of transition between the two scenes.)
#
#   # Basic Class Definition:
#   class MyFrameChangeObserver
#     def frameChange(from_scene, to_scene, percent_done)
#      # Actual code here.
#     end
#   end
#
# The observer is attached using the {Sketchup::Pages.add_frame_change_observer}
# class method, which returns an integer id that can be stored and later
# used to detach the observer.
#
#   # Attach an observer to the global Pages object:
#   @id = Sketchup::Pages.add_frame_change_observer(MyFrameChangeObserver.new)
#
# Later, detaching this observer is done by passing this +id+ reference to
# the {Sketchup::Pages.remove_frame_change_observer} class method.
#
#   # Basic Observer Detachment:
#   Sketchup::Pages.remove_frame_change_observer(@id)
#
# @abstract Implement the methods described in this class to create a frame
#   change observer. You can not sub-class this class because it is not
#   defined by the API.
#
# @example Draws a progress bar on the status line.
#   class MyFrameChangeObserver
#     def frameChange(from_scene, to_scene, percent_done)
#       if percent_done == 0.0
#         Sketchup.status_text= "% done:"
#         if from_scene.nil? # PC bug!
#           puts "Animating to page: '#{to_scene.name}'"
#         else
#           puts "From page '#{from_scene.name}' to '#{to_scene.name}'"
#         end
#       else
#         Sketchup.status_text= "% done: #{'|'*(percent_done*100).to_i}"
#         UI.messagebox("All Done!") if percent_done >= 1.0
#       end
#     end
#   end
#   @id = Sketchup::Pages.add_frame_change_observer(MyFrameChangeObserver.new)
class Sketchup::FrameChangeObserver

  # Instance Methods

  # This callback method is called during a slide show or creation of an
  # animation after the camera has been set up, but before the frame is
  # displayed. It gives you a chance to perform your own actions during
  # the animation. The arguments for +frameChange+ method are the scene
  # page that you transition from (+from_scene+), the scene page that you
  # transition to (+to_scene+), and a +percent_done+ between +0.0+ and +1.0+
  # that tell you the percentage of the transition between the two scene
  # pages.
  #
  # By watching for +percent_done >= 1.0+, you can activate Ruby code that
  # executes as soon as the user's camera has finished animating.
  #
  # @example
  #   class MyFrameChangeObserver
  #     def frameChange(from_scene, to_scene, percent_done)
  #       if percent_done == 0.0
  #         puts "Animating to scene '#{to_scene.name}':"
  #       else
  #         puts format("% 7.2f %",percent_done*100)
  #       end
  #     end
  #   end
  #   @id = Sketchup::Pages.add_frame_change_observer(MyFrameChangeObserver.new)
  #
  # @note The +from_scene+ argument into this callback does not appear to
  #   be populated on the PC. You can store a variable that keeps track of
  #   the +to_scene+ and then use that on a subsequent Scene selection to
  #   determine the last Page that the user was on.
  #
  # @param [Sketchup::Page] to_scene
  #   The selected scene page the view is transitioning towards.
  #
  # @param [Sketchup::Page, nil] from_scene
  #   The previous scene page the view is transitioning from.
  #
  # @param [Float] percent_done
  #   The percentage of transition between the two scene pages.
  #
  # @return [void] Value can be anything, but is ignored by SketchUp.
  #
  # @version SketchUp 6.0
  def frameChange(from_scene, to_scene, percent_done)
  end

end

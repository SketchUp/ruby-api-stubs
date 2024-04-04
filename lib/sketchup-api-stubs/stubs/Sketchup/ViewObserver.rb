# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to view events.
#
# @abstract To implement this observer, create a Ruby class of this type,
#   override the desired methods, and add an instance of the observer to the
#   view object.
#
# @example
#   # This is an example of an observer that watches tool interactions.
#   class MyViewObserver < Sketchup::ViewObserver
#     def onViewChanged(view)
#       puts "onViewChanged: #{view}"
#     end
#   end
#
#   # Attach the observer.
#   Sketchup.active_model.active_view.add_observer(MyViewObserver.new)
#
# @version SketchUp 6.0
class Sketchup::ViewObserver

  # Instance Methods

  # The {#onViewChanged} method is called whenever the view is altered, such as
  # when the user uses the Pan, Orbit, or Zoom tools are used.
  #
  # @bug Prior to SketchUp 2019.2 this event did not trigger when the viewport
  #   size changed.
  #
  # @example
  #   def onViewChanged(view)
  #     puts "onViewChanged: #{view}"
  #   end
  #
  # @param [Sketchup::View] view
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onViewChanged(view)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to view events. To implement
# this observer, create a Ruby class of this type, override the desired
# methods, and add an instance of the observer to the view object.
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
  # @example
  #   def onViewChanged(view)
  #     pust "onViewChanged: #{view}"
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

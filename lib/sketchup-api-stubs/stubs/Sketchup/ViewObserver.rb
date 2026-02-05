# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to {Sketchup::View} events.
#
# @abstract To implement this observer, create a Ruby class of this type,
#   override the desired methods, and add an instance of the observer to the
#   {Sketchup::View} object.
#
# @example
#   class MyViewObserver < Sketchup::ViewObserver
#     def onViewChanged(view)
#       puts "onViewChanged: #{view}"
#     end
#   end
#
#   Sketchup.active_model.active_view.add_observer(MyViewObserver.new)
#
# @see Sketchup::View#add_observer
#
# @version SketchUp 6.0
class Sketchup::ViewObserver

  # Instance Methods

  # The {#onScaleFactorChange} method is called whenever the view DPI of the view
  # changes. This can be the SketchUp window being moved to another monitor with
  # a different DPI or the user changing the DPI settings of the monitor.
  #
  # @example
  #   class MyViewObserver < Sketchup::ViewObserver
  #     def onScaleFactorChange(view)
  #       puts "onScaleFactorChange: #{view}"
  #       puts "UI.scale_factor(view): #{UI.scale_factor(view)}"
  #     end
  #   end
  #
  #   Sketchup.active_model.active_view.add_observer(MyViewObserver.new)
  #
  # @param [Sketchup::View] view
  #
  # @return [nil]
  #
  # @version SketchUp 2025.0
  def onScaleFactorChange(view)
  end

  # The {#onViewChanged} method is called whenever the view is altered, such as
  # when the user uses the Pan, Orbit, or Zoom tools.
  #
  # @bug Prior to SketchUp 2019.2 this event did not trigger when the viewport
  #   size changed.
  #
  # @example
  #   class MyViewObserver < Sketchup::ViewObserver
  #     def onViewChanged(view)
  #       puts "onViewChanged: #{view}"
  #     end
  #   end
  #
  #   Sketchup.active_model.active_view.add_observer(MyViewObserver.new)
  #
  # @param [Sketchup::View] view
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onViewChanged(view)
  end

end

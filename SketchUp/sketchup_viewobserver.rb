# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

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

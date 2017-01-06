# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to rendering options events.
# To implement this observer, create a Ruby class of this type, implement the
# desired methods, and add an instance of the observer to the objects of
# interests.
#
# @example
#   # This is an example of an observer that watches the rendering options
#   # for changes.
#   class MyRenderingOptionsObserver < Sketchup::RenderingOptionsObserver
#     def onRenderingOptionsChanged(rendering_options, type)
#       puts "onRenderingOptionsChanged(#{rendering_options}, #{type})"
#     end
#   end
#
#   # Attach the observer.
#   rendering_options = Sketchup.active_model.rendering_options
#   rendering_options.add_observer(MyRenderingOptionsObserver.new)
class Sketchup::RenderingOptionsObserver

  # Instance Methods

  # The onRenderingOptionsChanged method is invoked whenever the user changes
  # their rendering options.
  #
  # @example
  #   def onRenderingOptionsChanged(rendering_options, type)
  #     puts "onRenderingOptionsChanged(#{rendering_options}, #{type})"
  #   end
  #
  # @param [Integer] type
  #   A number indicating which option was changed
  #   represented by one of the constants defined in
  #   {Sketchup::RenderingOptions}.
  #
  # @param [Sketchup::RenderingOptions] rendering_options
  #
  # @version SketchUp 6.0
  def onRenderingOptionsChanged(rendering_options, type)
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

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

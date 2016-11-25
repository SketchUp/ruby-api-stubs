# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::ShadowInfoObserver

  # Instance Methods

  # The {#onShadowInfoChanged} method is invoked whenever the user alters a
  # setting inside the Shadows and Model Info dialogs. The type parameter
  # contains a number identifying which option was altered. Here are the types to
  # expect:
  # 
  # - 0 = Time/Date sliders
  # - 1 = Display Shadows checkbox
  # - 2 = Light/Dark sliders
  # - 3 = Geographic Location (in Model Info > Location)
  # - 4 = Solar Orientation (in Model Info > Location)
  # - 7 = Use Sun for Shading checkbox
  # - 8 = Display from Edges checkbox
  # - 9 = Display on Ground checkbox
  # - 10 = Display on Faces checkbox
  #
  # @example 
  #   def onShadowInfoChanged(shadow_info, type)
  #     puts "onShadowInfoChanged: #{type}"
  #   end
  #
  # @param [Sketchup::ShadowInfo] shadow_info
  #
  # @param [Integer] type
  #   A number identifying which setting was changed.
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onShadowInfoChanged(type)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to changes to the shadow
# settings. To implement this observer, create a Ruby class of this type,
# override the desired methods, and add an instance of the observer to the
# {Sketchup::ShadowInfo} object.
#
# @example
#   # This is an example of an observer that watches the selection for
#   # changes.
#   class MyShadowInfoObserver < Sketchup::ShadowInfoObserver
#     def onShadowInfoChanged(shadow_info, type)
#       puts "onShadowInfoChanged: #{type}"
#     end
#   end
#
#   # Attach the observer.
#   Sketchup.active_model.shadow_info.add_observer(MyShadowInfoObserver.new)
#
# @version SketchUp 6.0
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
  def onShadowInfoChanged(shadow_info, type)
  end

end

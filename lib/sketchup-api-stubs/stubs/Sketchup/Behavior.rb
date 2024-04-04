# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Behavior class is used to control the "behavior" of components, which
# roughly correlates to the series of options that you see in the
# Components dialog under the "edit" tab, such as whether it casts shadows,
# glues to walls, etc.
#
# A Behavior object is accessed from a ComponentDefinition object, not created
# with a Behavior.new call.
#
# @example
#   # Grab the Behavior object from the first component definition.
#   model = Sketchup.active_model
#   definition = model.definitions[0]
#   behavior = definition.behavior
#
# @version SketchUp 6.0
class Sketchup::Behavior < Sketchup::Entity

  # Instance Methods

  # The always_face_camera= method is used to set the always_face_camera
  # behavior for a component.
  #
  # If the always_face_camera behavior is true, a component will always try to
  # orient itself so that the Y axis of the component is facing the camera.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   status = behavior.always_face_camera = false
  #
  # @param setting
  #   Sets the always_face_camera behavior to true or false.
  #
  # @return status - the status of the always_face_camera behavior.
  #
  # @version SketchUp 6.0
  def always_face_camera=(setting)
  end

  # The always_face_camera? method is used to retrieve the  always_face_camera
  # behavior for a component.
  #
  # If the always_face_camera behavior is true, then a component will always try
  # to orient itself so that the -Y axis of the component is facing the camera.
  #
  # @example
  #   model = Sketchup.active_model
  #   # Returns a DefinitionList
  #   definitions = model.definitions
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #
  #   begin
  #     definition = definitions.load path
  #   rescue
  #     UI.messagebox $!.message
  #   end
  #
  #   behavior = definition.behavior
  #   b = behavior.always_face_camera?
  #   if (b)
  #     UI.messagebox b
  #   else
  #     UI.messagebox "Always Face Camera is equal to false"
  #   end
  #   status = behavior.always_face_camera = true
  #   b = behavior.always_face_camera?
  #   if (b)
  #     UI.messagebox b
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Boolean] behavior - true if the component is set to always face
  #   the camera, false if the component is not set to always
  #   face camera.
  #
  # @version SketchUp 6.0
  def always_face_camera?
  end

  # The cuts_opening= method is used to set the cut opening behavior for a
  # component.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   behavior.cuts_opening = false
  #
  # @note To enable cut opening, also set {#is2d=} to true.
  #
  # @param setting
  #   Sets the cuts_opening behavior to true or false.
  #
  # @return status - the status of the cuts_opening behavior
  #   (either true or false)
  #
  # @version SketchUp 6.0
  def cuts_opening=(setting)
  end

  # The cuts_opening? method is used to get the status of a component's cut
  # opening behavior.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   status = behavior.cuts_opening?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def cuts_opening?
  end

  # The {#is2d=} method is used to set whether the component can glue to other
  # entities or not.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   behavior.is2d = false
  #
  # @param [Boolean] is2d
  #
  # @version SketchUp 6.0
  def is2d=(is2d)
  end

  # The {#is2d?} method is used to get whether the component can glue to other
  # entities or not.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   if behavior.is2d?
  #     # We can also set what planes component can glue to.
  #     behavior.snapto = SnapTo_Arbitrary
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def is2d?
  end

  # Sets an integer that is really a bit-by-bit description of which scale
  # tool handles are hidden on a given component. This is useful for creating
  # definitions that can only be scaled in particular ways. If a bit contains a
  # a 1, then a certain handle set will be hidden when the user selects the
  # component and activates the Scale tool. Here is the map of which bits
  # control which handles.
  #
  # - Bit0: disable scale along red (X),
  # - Bit1: disable scale along green (Y),
  # - Bit2: disable scale along blue (Z),
  # - Bit3: disable scale in red/blue plane (X+Z),
  # - Bit4: disable scale in green/blue plane (Y+Z),
  # - Bit5: disable scale in red/green plane (X+Y),
  # - Bit6: disable scale uniform (from corners) (XYZ).
  #
  # Note that for 2-dimensional components (such as face-me components), not all
  # of the handles in the list above are even used. Also, if the component you
  # are modifying is already selected with the scale tool, then you or your user
  # must deactivate and reactivate the scale tool for your new behavior to take
  # effect.
  #
  # @example
  #   # Disable the green and red-axes handles by setting bits 1 and 2 to 1.
  #   definition = Sketchup.active_model.definitions[0]
  #   behavior = definition.behavior
  #   behavior.no_scale_mask = (1 << 1) + (1 << 2)
  #
  # @param scale_mask
  #   An integer describing which scale tool
  #   handles are hidden.
  #
  # @return behavior - the Behavior object
  #
  # @version SketchUp 7.0
  def no_scale_mask=(scale_mask)
  end

  # The no_scale_mask? method returns an integer that is a bit-by-bit
  # description of which scale tool handles are hidden when the user selects
  # this single component with the scale tool. See the no_scale_mask=
  # method for details on the bit encodings used.
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   behavior = definition.behavior
  #   no_scale_mask = behavior.no_scale_mask?
  #
  # @return [Boolean] scale_mask - an integer describing which scale tool
  #   handles are hidden.
  #
  # @version SketchUp 7.0
  def no_scale_mask?
  end

  # The shadows_face_sun= method is used to identify whether the component's
  # shadow will be cast from the component's current position as though the
  # component were facing the sun. See the Component entity within the SketchUp
  # User's guide for more information on this feature.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   behavior = behavior.shadows_face_sun = true
  #
  # @param status
  #   true if the component's is to be cast from the
  #   component's current position as though the component
  #   were facing the sun. False to cause the shadow to be
  #   cast from the component's current position.
  #
  # @return behavior - the Behavior object
  #
  # @version SketchUp 6.0
  def shadows_face_sun=(status)
  end

  # The shadows_face_sun? method is used to determine whether the component's
  # shadow is being cast from the component's current position (as though the
  # component were facing the sun). See the Component entity within the SketchUp
  # User's guide for more information on this feature.
  #
  # @example
  #   model = Sketchup.active_model
  #   # Returns a DefinitionList
  #   definitions = model.definitions
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   begin
  #     definition = definitions.load path
  #   rescue
  #     UI.messagebox $!.message
  #   end
  #
  # @return [Boolean] status - true if the component's is to be cast from the
  #   component's current position as though the component
  #   were facing the sun. False to cause the shadow to be
  #   cast from the component's current position.
  #
  # @version SketchUp 6.0
  def shadows_face_sun?
  end

  # The {#snapto} method is used to see how a component can glue to other
  # entities.
  #
  # Returns a value indicating the snapping behavior of the component. Snapping
  # behavior is how the x-y plane of a component instance will be snapped against
  # a face. Possible values are:
  #
  # - +SnapTo_Arbitrary+ => Snap to any arbitrary face,
  # - +SnapTo_Horizontal+ => Snap to horizontal face like floors,
  # - +SnapTo_Vertical+ => Snap to vertical face like walls,
  # - +SnapTo_Sloped+ => Snap to sloped face like sloping roofs.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   snapto = behavior.snapto
  #
  # @return [Integer]
  #
  # @version SketchUp 6.0
  def snapto
  end

  # The {#snapto=} method is used to set how a component can glue to other
  # entities.
  #
  # Snapping behavior is how the x-y plane of a component instance will be
  # snapped against a face. Possible constant values are:
  #
  # - +SnapTo_Arbitrary+ => Snap to any arbitrary face,
  # - +SnapTo_Horizontal+ => Snap to horizontal face like floors,
  # - +SnapTo_Vertical+ => Snap to vertical face like walls,
  # - +SnapTo_Sloped+ => Snap to sloped face like sloping roofs.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.definitions[0].behavior
  #   behavior.is2d = true
  #   behavior.snapto = SnapTo_Horizontal
  #
  # @note To enable gluing, also set {#is2d=} to true.
  #
  # @note To disable gluing, set {#is2d=} to false.
  #
  # @param [Integer] snapto
  #
  # @version SketchUp 6.0
  def snapto=(snapto)
  end

end

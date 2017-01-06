# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Camera class contains methods for creating and manipulating a camera.
# The camera in SketchUp is the "point of view" from which you look at the
# model.
#
# @example
#   # Create a camera from scratch with an "eye" position in
#   # x, y, z coordinates, a "target" position that
#   # defines what to look at, and an "up" vector.
#   eye = [1000,1000,1000]
#   target = [0,0,0]
#   up = [0,0,1]
#   my_camera = Sketchup::Camera.new eye, target, up
#
#   # Get a handle to the current view and change its camera.
#   view = Sketchup.active_model.active_view
#   view.camera = my_camera
#
# @version SketchUp 6.0
class Sketchup::Camera

  # Instance Methods

  # The aspect_ratio method is used to retrieve the aspect ratio of the Camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   ar = camera.aspect_ratio
  #   if (ar)
  #     UI.messagebox ar.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return aspectratio - an aspect ratio, such as 1.85, if
  #   successful
  #
  # @version SketchUp 6.0
  def aspect_ratio
  end

  # The aspect_ratio= method is used to set the aspect ratio for a Camera.
  # Changing this value will cause SketchUp to show gray bars over the screen
  # to show the resulting view.
  #
  # If you set the value to 0.0, then the aspect ratio of the Camera will match
  # the aspect ratio of its View.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   ar = camera.aspect_ratio = 1.85
  #   if (ar)
  #     UI.messagebox ar.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Float] ratio
  #
  # @return aspectratio - an aspect ratio, such as 1.85, if
  #   successful
  #
  # @version SketchUp 6.0
  def aspect_ratio=(ratio)
  end

  # The center_2d method returns a point with the x and y offset of the camera
  # when it's in 2d mode. When the camera is in two-point perspective and the
  # user pans around, the x and y values will change. These values are in
  # normalized device coordinates, so for instance, the range [-1.0, 1.0] spans
  # the full width or height of the screen.
  #
  # The z value is unused and it is always zero.
  #
  # @example
  #   Sketchup.active_model.active_view.camera.center_2d
  #
  # @return Point3d
  #
  # @version SketchUp 2015
  def center_2d
  end

  # The description method is used to retrieve the description for a Camera
  # object.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   description = camera.description
  #   if (description)
  #     UI.messagebox description
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return description - a string description for the camera if
  #   successful
  #
  # @version SketchUp 6.0
  def description
  end

  # The description= method is used to set the description for the Camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   description = camera.description = "35 mm Camera"
  #
  # @param [String] description
  #
  # @return description - a string description for the camera if
  #   successful
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The direction method is used to retrieve a Vector3d object in the direction
  # that the Camera is pointing.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # Returns 0,0,-1 which indicates it is pointed down the Z axis
  #   direction = camera.direction
  #   if (direction)
  #     UI.messagebox direction.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return direction - a Vector3d object pointing in the direction
  #   that the Camera is pointing if successful
  #
  # @version SketchUp 6.0
  def direction
  end

  # The eye method is used to retrieve the eye Point3d object for the Camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # Returns 0,0,1 which indicates it is right in line with the Z axis.
  #   eye = camera.eye
  #   if (eye)
  #     UI.messagebox eye
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return eye - a Point3d object if successful
  #
  # @version SketchUp 6.0
  def eye
  end

  # The focal_length method is used to get the focal length in millimeters of
  # perspective Camera.
  #
  # This value is computed based on the field of view (see the fov method) and
  # the image width (see image_width).
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   l = camera.focal_length
  #   if (l)
  #     UI.messagebox l.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param length
  #   The focal length for the camera if successful.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def focal_length(length)
  end

  # The focal_length= method allows you to sent the focal length (in
  # millimeters) of a perspective camera. It must be between 1 and 3000,
  # inclusive. This is an alternate way of setting the field of view.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   l = camera.focal_length=120
  #   if (l)
  #     UI.messagebox l
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Float] value
  #
  # @return length - the new focal length for the camera if
  #   successful
  #
  # @version SketchUp 6.0
  def focal_length=(value)
  end

  # The fov method retrieves the field of view of the camera (in degrees).
  #
  # This is only applicable to perspective cameras.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   fov = camera.fov
  #   if (fov)
  #     UI.messagebox fov.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return fov - field of view, in degrees, if successful
  #
  # @version SketchUp 6.0
  def fov
  end

  # The fov= method sets the field of view, in millimeters, for a Camera. It
  # must be between 1 and 120, inclusive.
  #
  # This is only valid on a perspective camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   fov = camera.fov = 56.78
  #   if (fov)
  #     UI.messagebox fov.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param fov
  #   A field of view in millimeters.
  #
  # @return fov - the new field of view if successful
  #
  # @version SketchUp 6.0
  def fov=(fov)
  end

  # The fov_is_height? method indicates whether the field of view is horizontal
  # or vertical.
  #
  # @example
  #   camera = Sketchup.active_model.active_view.camera
  #   if camera.fov_is_height?
  #     fov_vertical = camera.fov
  #     # Compute the horizontal FOV.
  #   else
  #     fov_horizontal = camera.fov
  #     # Compute the vertical FOV.
  #   end
  #
  # @return bool - true if vertical, false otherwise
  #
  # @return [Boolean]
  #
  # @version SketchUp 2015
  def fov_is_height?
  end

  # The height method retrieves the height of a Camera in inches.
  #
  # This is only valid if it is not a perspective camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.perspective = false
  #   h = camera.height
  #   if (h)
  #     UI.messagebox h.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return height - height in current units if successful
  #
  # @version SketchUp 6.0
  def height
  end

  # The height= method is used to set the height for the Camera in inches.
  #
  # This is only valid if it is not a perspective camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.perspective = false
  #   h = camera.height = 20
  #   if (h)
  #     UI.messagebox h.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Float] value
  #
  # @return height - height in current units if successful
  #
  # @version SketchUp 6.0
  def height=(value)
  end

  # The image_width method retrieves the size of the image on the image plane of
  # the Camera.
  #
  # By default, this value is not set. If it is set, it is used in the
  # calculation of the focal length from the field of view. Unlike most length
  # values in SketchUp, the image_width and focal_length values are specified in
  # millimeters rather than in inches.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   w = camera.image_width
  #   if (w)
  #     UI.messagebox w.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return width - the width of the camera if successful
  #
  # @version SketchUp 6.0
  def image_width
  end

  # The image_width= method is used to set the size of the image on the "film"
  # for a perspective camera.
  #
  # The value is given in millimeters. It is used in the conversions between
  # field of view and focal length.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   w = camera.image_width=1.0
  #   if (w)
  #     UI.messagebox w.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Float] value
  #
  # @return width - the width of the camera if successful
  #
  # @version SketchUp 6.0
  def image_width=(value)
  end

  # Returns a new camera with eye (where the camera is) and targets (where the
  # camera is looking) of type Point3d, up direction of type Vector3d, optional
  # perspective flag of value true or false, and optional field-of-view value in
  # degrees of type Float.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   if (camera)
  #     UI.messagebox camera
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param target
  #   See {#target}.
  #
  # @param eye
  #   See {#eye}.
  #
  # @param up
  #   See {#up}.
  #
  # @param fov
  #   see {#fov}.
  #
  # @param perspective
  #   see {#perspective?}.
  #
  # @return camera - a new Camera object if successful
  #
  # @version SketchUp 6.0
  def initialize(eye, target, up, perspective = true, fov = 30.0)
  end

  # The is_2d? method indicates if the camera is in 2d mode. 2 point
  # perspective mode and PhotoMatch mode are 2d cameras.
  #
  # @example
  #   Sketchup.active_model.active_view.camera.is_2d?
  #
  # @return Boolean - true if camera is in 2d mode, false otherwise
  #
  # @return [Boolean]
  #
  # @version SketchUp 2015
  def is_2d?
  end

  # The perspective= method is used to set whether or not this is a perspective
  # camera or an orthographic camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   status = camera.perspective = false
  #   if (status)
  #     UI.messagebox "Perspective"
  #   else
  #     UI.messagebox "Orthographic"
  #   end
  #
  # @param perspective
  #   true for perspective, false for orthographic
  #
  # @return status - true if perspective, false if orthographic
  #
  # @version SketchUp 6.0
  def perspective=(perspective)
  end

  # The perspective? method is used to determine whether a camera is a
  # perspective or orthographic camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   status = camera.perspective?
  #   if (status)
  #     UI.messagebox "Perspective"
  #   else
  #     UI.messagebox "Orthographic"
  #   end
  #
  # @return status - true if perspective, false if orthographic
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def perspective?
  end

  # The scale_2d method returns a float indicating the scaling factor of 2d
  # cameras.
  #
  # When the camera is in two-point perspective and the user uses the zoom tools,
  # this value will change. Zooming out will produce a value greater than 1.0.
  #
  # @example
  #   Sketchup.active_model.active_view.camera.scale_2d
  #
  # @return float
  #
  # @version SketchUp 2015
  def scale_2d
  end

  # The set method sets the camera orientation. You have to set the camera eye,
  # target and up parameters at the same time to make sure that you have a valid
  # camera definition.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   eye = camera.eye
  #   target = camera.target
  #   up = camera.up
  #   # We just set it to exactly what it was pointing at in the first place
  #   camera.set eye, target, up
  #   if (camera)
  #     UI.messagebox camera.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param eye
  #   See Camera.eye.
  #
  # @param target
  #   See Camera.target.
  #
  # @param up
  #   See Camera.up.
  #
  # @return camera - the modified camera
  #
  # @version SketchUp 6.0
  def set(eye, target, up)
  end

  # The target method retrieves Point3d that the camera is pointing at.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # Target point is 0,0,0
  #   t = camera.target
  #   if (t)
  #     UI.messagebox t.to_s
  #   else
  #     UI.messagebox "Failure".
  #   end
  #
  # @return target - a Point3d object if successful
  #
  # @version SketchUp 6.0
  def target
  end

  # The up method is used to retrieve the up vector for the camera. This is the
  # direction that the top of the camera is facing.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # 0.0, 1.0, 0.0
  #   up = camera.up
  #   if (up)
  #     UI.messagebox up.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return up - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def up
  end

  # The xaxis method is used to retrieve the x axis of the camera coordinate
  # system defined by the camera's direction and up vector.
  #
  # This value is computed from the cross product between the camera direction
  # and the up vector.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # 1.0, 0.0, 0.0
  #   v = camera.xaxis
  #   if (v)
  #     UI.messagebox v.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def xaxis
  end

  # The yaxis method retrieves the y axis of the camera coordinate system
  # defined by the camera's direction and up vector.
  #
  # This value is computed to be perpendicular the camera x and z axes. It is
  # equivalent to the up direction, but is computed to make sure that it is
  # perpendicular to the direction.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # 0.0, 1.0, 0.0
  #   v = camera.yaxis
  #   if (v)
  #     UI.messagebox v.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def yaxis
  end

  # The zaxis method retrieves the z axis of the camera coordinate system
  # defined by the camera's direction and up vector.
  #
  # This value is computed. It is the same as Camera.direction
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # 0.0, 1.0, 0.0
  #   v = camera.zaxis
  #   if (v)
  #     UI.messagebox v.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def zaxis
  end

end

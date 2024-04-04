# Copyright:: Copyright 2024 Trimble Inc.
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

  # The {#aspect_ratio} method is used to retrieve the aspect ratio of the Camera.
  #
  # `0.0` is the default value and denotes an aspect ratio matching that of the
  # View.
  #
  # @example
  #   camera = Sketchup.active_model.active_view.camera
  #   aspect_ratio = camera.aspect_ratio
  #
  # @return [Float]
  #
  # @version SketchUp 6.0
  def aspect_ratio
  end

  # The {#aspect_ratio=} method is used to set the aspect ratio for a Camera.
  # Changing this value will cause SketchUp to show gray bars over the screen
  # to show the resulting view.
  #
  # If you set the value to `0.0`, then the aspect ratio of the Camera will match
  # the aspect ratio of its View.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.aspect_ratio = 1.85
  #
  # @param [Float] ratio
  #
  # @version SketchUp 6.0
  def aspect_ratio=(ratio)
  end

  # The {#center_2d} method returns a point with the x and y offset of the camera
  # when it's in two-point perspective or math photo mode. When the camera is
  # in two-point perspective and the user pans around, the x and y values will
  # change. These values are in normalized device coordinates, so for instance,
  # the range [-1.0, 1.0] spans the full width or height of the screen.
  #
  # The z value is unused and it is always zero.
  #
  # @example
  #   Sketchup.active_model.active_view.camera.center_2d
  #
  # @return [Geom::Point3d] ]
  #
  # @version SketchUp 2015
  def center_2d
  end

  # The {#description} method is used to retrieve the description for a Camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   description = camera.description
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def description
  end

  # The {#description=} method is used to set the description for the Camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   description = camera.description = "35 mm Camera"
  #
  # @param [String] description
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The {#direction} method is used to retrieve a Vector3d object in the
  # direction that the Camera is pointing.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   direction = camera.direction
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def direction
  end

  # The {#eye} method is used to retrieve the eye Point3d object for the Camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   eye = camera.eye
  #
  # @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def eye
  end

  # The focal_length method is used to get the focal length in millimeters of
  # perspective Camera.
  #
  # This value is computed on the fly based on the camera {#fov} value and
  # the camera {#image_width} value.
  #
  # @example
  #   # Calculate focal length based on camera's current #image_width.
  #   camera = Sketchup::Camera.new
  #   focal_length = camera.focal_length
  #
  #   # If you want the 35 mm focal length equivalent, a common measurement of
  #   # camera field of view, you can instead calculate it from the #fov angle.
  #   camera = Sketchup.active_model.active_view.camera
  #   focal_length_35_eqv = 36.0 / (2 * Math.tan(camera.fov.degrees / 2))
  #
  # @return [Float]
  #
  # @version SketchUp 6.0
  def focal_length(length)
  end

  # The {#focal_length=} method allows you to set the field of view by specifying
  # a focal length in millimeters. Focal length must be between 1 and 3000,
  # inclusive.
  #
  # The camera {#fov} value is set based on the provided +focal_length+ and
  # the current {#image_width} for the camera.
  #
  # @example
  #   # Set field of view from focal length using camera's current #image_width.
  #   camera = Sketchup.active_model.active_view.camera
  #   camera.focal_length = 120
  #
  #   # If you instead want to set the 35 mm focal length equivalent, a common
  #   # measurement of camera field of view, you can first convert it to an angle
  #   # and use #fov=.
  #   camera = Sketchup.active_model.active_view.camera
  #   focal_length_35_eqv = 120
  #   camera.fov = 2 * Math.atan(36.0 / (2 * focal_length_35_eqv)).radians
  #
  # @param [Float] focal_length
  #
  # @version SketchUp 6.0
  def focal_length=(focal_length)
  end

  # The {#fov} method retrieves the field of view of the Camera.
  #
  # This is only applicable to perspective cameras.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   fov = camera.fov
  #
  # @return [Float] Field of view in degrees
  #
  # @version SketchUp 6.0
  def fov
  end

  # The {#fov=} method sets the field of view for a Camera. Field of view
  # must be between 1 and 120 degrees, inclusive.
  #
  # This is only valid on a perspective camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   fov = camera.fov = 56.78
  #
  # @param [Numeric] fov
  #   Field of view in degrees
  #
  # @version SketchUp 6.0
  def fov=(fov)
  end

  # The {#fov_is_height?} method indicates whether the field of view is
  # measured vertically, as opposed horizontally.
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
  # @return [Boolean]
  #
  # @version SketchUp 2015
  def fov_is_height?
  end

  # The {#height} method retrieves the height of a Camera.
  #
  # This is only valid if it is not a perspective camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.perspective = false
  #   height = camera.height
  #
  # @return [Float] height in inches.
  #
  # @version SketchUp 6.0
  def height
  end

  # The {#height=} method is used to set the height for the Camera in inches.
  #
  # This is only valid if it is not a perspective camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.perspective = false
  #   camera.height = 20
  #
  # @param [Float] value
  #
  # @version SketchUp 6.0
  def height=(value)
  end

  # The {#image_width} method returns the width of the image, as used to
  # calculate the {#focal_length}. This value has no effect on how the view
  # is displayed in SketchUp.
  #
  # The default value, 0, is interpreted by SketchUp as 36 mm (the width of
  # traditional 35 mm film).
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   width = camera.image_width
  #
  # @return [Float] Width in mm.
  #
  # @version SketchUp 6.0
  def image_width
  end

  # The {#image_width=} method is used to set the width of the image, as used to
  # calculate the {#focal_length}. This value has no effect on how the view
  # is displayed in SketchUp.
  #
  # The default value, 0, is interpreted by SketchUp as 36 mm (the width of
  # traditional 35 mm film).
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.image_width = 1.0
  #   focal_length = camera.focal_length
  #
  # @param [Float] image_width
  #   Width in mm.
  #
  # @version SketchUp 6.0
  def image_width=(image_width)
  end

  # Returns a new camera with eye (where the camera is) and targets (where the
  # camera is looking).
  #
  # @example
  #   eye = Geom::Point3d.new(20, 5, 30)
  #   target = Geom::Point3d.new(20, 60, 25)
  #   up = Z_AXIS
  #   camera = Sketchup::Camera.new(eye, target, up)
  #
  # @example Arbitrary camera
  #   camera = Sketchup::Camera.new
  #
  # @overload initialize
  #
  #   @return [Sketchup::Camera]
  #
  # @overload initialize(eye, target, up, perspective = true, fov = 30.0)
  #
  #   @param [Geom::Point3d] eye  See {#eye}.
  #   @param [Geom::Point3d] target  See {#target}.
  #   @param [Geom::Point3d] up  See {#up}.
  #   @param [Boolean] perspective  see {#perspective?}.
  #   @param [Float] fov  see {#fov}.
  #   @return [Sketchup::Camera]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The {#is_2d?} method indicates if the camera two-point perspective or match photo
  # mode.
  #
  # @example
  #   Sketchup.active_model.active_view.camera.is_2d?
  #
  # @return [Boolean]
  #
  # @version SketchUp 2015
  def is_2d?
  end

  # The {#perspective=} method is used to set whether or not this is a
  # perspective camera or an orthographic camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   camera.perspective = false
  #
  # @param [Boolean] perspective
  #
  #
  # @version SketchUp 6.0
  def perspective=(perspective)
  end

  # The {#perspective?} method is used to determine whether a camera is a
  # perspective or orthographic camera.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   status = camera.perspective?
  #   if (status)
  #     puts "Perspective"
  #   else
  #     puts "Orthographic"
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def perspective?
  end

  # The {#scale_2d} method returns a float indicating the scaling factor of 2
  # point perspective cameras.
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

  # The {#set} method sets the camera orientation. You have to set the camera eye,
  # target and up parameters at the same time to make sure that you have a valid
  # camera definition.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   eye = Geom::Point3d.new(20, 5, 30)
  #   target = Geom::Point3d.new(20, 60, 25)
  #   up = Z_AXIS
  #   camera.set(eye, target, up)
  #
  # @param [Geom::Point3d] eye
  #   See {#eye}.
  #
  # @param [Geom::Point3d] target
  #   See {#target}.
  #
  # @param [Geom::Point3d] up
  #   See {#up}.
  #
  # @return [Sketchup::Camera]
  #
  # @version SketchUp 6.0
  def set(eye, target, up)
  end

  # The {#target} method retrieves Point3d that the camera is pointing at.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   target = camera.target
  #
  # @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def target
  end

  # The {#up} method is used to retrieve the up vector for the camera. This is
  #  the direction that the top of the camera is facing.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   up = camera.up
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def up
  end

  # The {#xaxis} method is used to retrieve the x axis of the camera coordinate
  # system.
  #
  # This value is computed from the cross product between the camera direction
  # and the up vector.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   xaxis = camera.xaxis
  #
  # @return [Geom::Vector3d] ]
  #
  # @version SketchUp 6.0
  def xaxis
  end

  # The {#yaxis} method retrieves the y axis of the camera coordinate system.
  #
  # This value is computed to be perpendicular the camera x and z axes. It is
  # equivalent to the up direction, but is computed to make sure that it is
  # perpendicular to the direction.
  #
  # @example
  #   camera = Sketchup::Camera.new
  #   # 0.0, 1.0, 0.0
  #   yaxis = camera.yaxis
  #
  # @return [Geom::Vector3d] ]
  #
  # @version SketchUp 6.0
  def yaxis
  end

  # The {#zaxis} method retrieves the z axis of the camera coordinate system.
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

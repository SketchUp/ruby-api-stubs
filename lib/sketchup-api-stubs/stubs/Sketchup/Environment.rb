# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# An {Sketchup::Environment} object represents an environment in the model. Environments are used
# to control the background and lighting of the model. Environments can be used as skydomes, for
# reflections, and to link the sun to the environment.
#
# @version SketchUp 2025.0
class Sketchup::Environment < Sketchup::Entity

  # Instance Methods

  # The {#description} method gets the description for an {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.description # Outputs ""
  #
  # @return [String] description
  #
  # @version SketchUp 2025.0
  def description
  end

  # The {#description=} method sets the description for an {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.description = 'This is an example of description'
  #   puts environment.description # Outputs "This is an example of description"
  #
  # @param [String] description
  #   the new description for the environment
  #
  # @version SketchUp 2025.0
  def description=(description)
  end

  # The {#linked_sun=} method is used to set if the {Sketchup::Environment} is linked to the sun.
  # Shadow lighting is used to create realistic shadows in the scene, enhancing the visual quality.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.linked_sun = true
  #   puts environment.linked_sun? # Outputs true
  #
  # @param [Boolean] linked_sun
  #   true if the environment should be linked to the sun, false otherwise
  #
  # @version SketchUp 2025.0
  def linked_sun=(linked_sun)
  end

  # The {#linked_sun?} method is used to determine if the {Sketchup::Environment} is linked to the
  # sun. This function returns a boolean value indicating whether the shadow light
  # feature is currently enabled in the environment. Shadow lighting is used
  # to create realistic shadows in the scene, enhancing the visual quality.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.linked_sun? # Outputs false
  #
  # @return [Boolean] true if the environment is linked to the sun, false otherwise
  #
  # @version SketchUp 2025.0
  def linked_sun?
  end

  # The {#linked_sun_position} method is used to get the position of the sun linked to the
  # {Sketchup::Environment}. The position is a {Geom::Point3d} where the x must be in range
  # +[0.0, 1.0]+ and y must be in range +[-1.0, 1.0]+.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.linked_sun_position # Outputs Geom::Point3d(0, 0, 0)
  #
  # @return [Geom::Point3d] the position of the sun linked to the environment
  #
  # @version SketchUp 2025.0
  def linked_sun_position
  end

  # The {#linked_sun_position=} method is used to set the position of the sun linked to the
  # {Sketchup::Environment}. The position is a {Geom::Point3d} where the x must be in range
  # +[0.0, 1.0]+ and y must be in range +[-1.0, 1.0]+.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.linked_sun_position = Geom::Point3d.new(0, 1)
  #   puts environment.linked_sun_position # Outputs Geom::Point3d(0, 1, 0)
  #
  # @param [Geom::Point3d] sun_position
  #   the new position of the sun linked to the environment
  #
  # @return [Geom::Point3d] the new position of the sun linked to the environment
  #
  # @version SketchUp 2025.0
  def linked_sun_position=(sun_position)
  end

  # The {#name} method retrieves the name of the {Sketchup::Environment}. This is the
  # unique internal name of the object which should be used for retrieving
  # the {Sketchup::Environment} from the model's {Sketchup::Environments}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.name # Outputs "Example"
  #
  # @return [String] the name of the environment
  #
  # @version SketchUp 2025.0
  def name
  end

  # The {#name=} method sets the name for an {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.name = 'New Name'
  #   puts environment.name # Outputs "New Name"
  #
  # @param [String] name
  #   the new name for the environment
  #
  # @return [String] the new name of the environment
  #
  # @version SketchUp 2025.0
  def name=(name)
  end

  # The {#path} method is used to get the file name of the image or SKE file used for the
  # {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.path # Outputs 'environment.hdr'
  #
  # @return [String] the file name of the image or SKE file used for the environment
  #
  # @version SketchUp 2025.0
  def path
  end

  # The {#reflection_exposure} method is used to get the exposure of the {Sketchup::Environment} for
  # reflections.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.reflection_exposure # Outputs 1
  #   environment.reflection_exposure = 0.5
  #   puts environment.reflection_exposure # Outputs 0.5
  #
  # @note Reflection exposure is a value between +0.0+ and +10.0+, where +0.0+ is no exposure and
  #   +10.0+ is full exposure.
  #
  # @return [Float] the exposure of the environment for reflections
  #
  # @version SketchUp 2025.0
  def reflection_exposure
  end

  # The {#reflection_exposure=} method is used to set the exposure of the {Sketchup::Environment} for
  # reflections.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.reflection_exposure # Outputs 1
  #   environment.reflection_exposure = 0.5
  #   puts environment.reflection_exposure # Outputs 0.5
  #
  # @note Reflection exposure is a value between +0.0+ and +10.0+, where +0.0+ is no exposure and
  #   +10.0+ is full exposure.
  #
  # @param [Float] reflection_exposure
  #   the new exposure of the environment for reflections
  #
  # @return [Float] the new exposure of the environment for reflections
  #
  # @version SketchUp 2025.0
  def reflection_exposure=(reflection_exposure)
  end

  # The {#rotation} method is used to get the vertical rotation angle in degrees to apply to the
  # {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.rotation # Outputs 0.0 degrees
  #   environment.rotation = 90.0
  #   puts environment.rotation # Outputs 90.0 degrees
  #
  # @return [Float] rotation in degrees
  def rotation
  end

  # The {#rotation=} method is used to set the the vertical rotation angle in degrees to apply to the
  # {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.rotation # Outputs 0.0 degrees
  #   environment.rotation = 90.0
  #   puts environment.rotation # Outputs 90.0 degrees
  #
  # @note Rotation is a value between +0.0+ and +360.0+ degrees.
  #
  # @param [Float] rotation
  #
  # @return [Float]
  #
  # @version SketchUp 2025.0
  def rotation=(rotation)
  end

  # The {#skydome_exposure} method is used to get the exposure of the {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.skydome_exposure # Outputs 1
  #   environment.skydome_exposure = 0.5
  #   puts environment.skydome_exposure # Outputs 0.5
  #
  # @note Skydome exposure is a value between +0.0+ and +20.0+, where +0.0+ is no exposure and +20.0+
  #   is full exposure.
  #
  # @return [Float] the exposure of the environment
  #
  # @version SketchUp 2025.0
  def skydome_exposure
  end

  # The {#skydome_exposure=} method is used to set the exposure of the {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.skydome_exposure # Outputs 1
  #   environment.skydome_exposure = 0.5
  #   puts environment.skydome_exposure # Outputs 0.5
  #
  # @note Skydome exposure is a value between +0.0+ and +20.0+, where +0.0+ is no exposure and +20.0+
  #   is full exposure.
  #
  # @param [Float] skydome_exposure
  #   the new exposure of the environment
  #
  # @return [Float] the new exposure of the environment
  #
  # @version SketchUp 2025.0
  def skydome_exposure=(skydome_exposure)
  end

  # The {#thumbnail} method is used to get the thumbnail image of the {Sketchup::Environment}.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   thumbnail = environment.thumbnail
  #
  # @return [Sketchup::ImageRep]
  #
  # @version SketchUp 2025.0
  def thumbnail
  end

  # The {#use_as_skydome=} method is used to set if the {Sketchup::Environment} is used as a skydome.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.use_as_skydome = true
  #   puts environment.use_as_skydome? # Outputs true
  #
  # @param [Boolean] use_as_skydome
  #   true if the environment should be used as a skydome, false
  #   otherwise
  #
  # @version SketchUp 2025.0
  def use_as_skydome=(use_as_skydome)
  end

  # The {#use_as_skydome?} method is used to determine if the {Sketchup::Environment}
  # is used as a skydome.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.use_as_skydome? # Outputs false
  #
  # @return [Boolean] true
  #
  # @version SketchUp 2025.0
  def use_as_skydome?
  end

  # The {#use_for_reflections=} method is used to set if the {Sketchup::Environment} is used for
  # reflections.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.use_for_reflections = true
  #   puts environment.use_for_reflections? # Outputs true
  #
  # @param [Boolean] use_for_reflection
  #   true if the environment should be used for reflections, false
  #   otherwise
  #
  # @version SketchUp 2025.0
  def use_for_reflections=(use_for_reflection)
  end

  # The {#use_for_reflections?} method is used to determine if the {Sketchup::Environment}
  # is used for reflections.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   puts environment.use_for_reflections? # Outputs false
  #
  # @return [Boolean] true if the environment is used for reflections, false otherwise
  #
  # @version SketchUp 2025.0
  def use_for_reflections?
  end

  # The {#write_hdr} method writes the HDR, EXR or SKE image of the environment to a file in its
  # original file type.
  #
  # @example
  #   model = Sketchup.active_model
  #   environments = model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('Example', path)
  #   environment.write_hdr('path/to/directory')
  #
  # @param [String] path
  #   the directory where the image should be written
  #
  # @raise [ArgumentError] if the image is invalid.
  #
  # @raise [ArgumentError] if the file name is empty.
  #
  # @raise [RuntimeError] if the file cannot be written.
  #
  # @return [String] the full path of the written file
  #
  # @version SketchUp 2025.0
  def write_hdr(path)
  end

end

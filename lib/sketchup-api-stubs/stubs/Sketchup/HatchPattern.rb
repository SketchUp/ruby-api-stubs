# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# An {Sketchup::HatchPattern} object represents an hatch pattern in the model.
#
# @version SketchUp 2027.0
class Sketchup::HatchPattern < Sketchup::Entity

  # Instance Methods

  # The {#clear_fill_pattern} method removes the .pat line-pattern definition from the
  # {Sketchup::HatchPattern}.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.clear_fill_pattern
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def clear_fill_pattern
  end

  # The {#clear_fill_texture} method removes the texture fill from the {Sketchup::HatchPattern}.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.clear_fill_texture
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def clear_fill_texture
  end

  # The {#fill_color} method retrieves the solid fill color of the {Sketchup::HatchPattern}.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   color = hatch_pattern.fill_color
  #
  # @return [Sketchup::Color] the fill color
  #
  # @version SketchUp 2027.0
  def fill_color
  end

  # The {#fill_color=} method sets the solid fill color of the {Sketchup::HatchPattern}.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.fill_color = Sketchup::Color.new(255, 0, 0)
  #
  # @param [Sketchup::Color] color
  #
  # @version SketchUp 2027.0
  def fill_color=(color)
  end

  # The {#fill_pattern_file_name} method retrieves the file path the .pat line-pattern definition
  # was loaded from.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   path = hatch_pattern.fill_pattern_file_name
  #
  # @return [String] the .pat source file path
  #
  # @version SketchUp 2027.0
  def fill_pattern_file_name
  end

  # The {#fill_texture_file_name} method retrieves the file path the fill texture image was loaded
  # from.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   path = hatch_pattern.fill_texture_file_name
  #
  # @return [String] the texture source file path
  #
  # @version SketchUp 2027.0
  def fill_texture_file_name
  end

  # The {#fill_texture_image} method retrieves the fill texture image of the
  # {Sketchup::HatchPattern}, or +nil+ if the pattern has no texture fill.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   image = hatch_pattern.fill_texture_image
  #
  # @return [Sketchup::ImageRep, nil] the texture image, or +nil+
  #
  # @version SketchUp 2027.0
  def fill_texture_image
  end

  # The {#name} method retrieves the name of the {Sketchup::HatchPattern}.
  #
  # @example
  #   model = Sketchup.active_model
  #   hatch_patterns = model.hatch_patterns
  #   path = 'path/to/pattern.skh'
  #   hatch = hatch_patterns.add('Pattern', path)
  #   puts hatch.name # Outputs "Pattern"
  #
  # @return [String] the name of the hatch pattern
  #
  # @version SketchUp 2027.0
  def name
  end

  # The {#name=} method sets the name for an {Sketchup::HatchPattern}. The name must be non-empty and
  # unique within the model.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.name = 'New name'
  #
  # @param [String] name
  #
  # @raise [ArgumentError] if the name is empty or already used by another hatch pattern.
  #
  # @version SketchUp 2027.0
  def name=(name)
  end

  # The {#rotation_angle} method retrieves the rotation angle applied to the
  # {Sketchup::HatchPattern}, in degrees.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   angle = hatch_pattern.rotation_angle
  #
  # @return [Float] the rotation angle in degrees
  #
  # @version SketchUp 2027.0
  def rotation_angle
  end

  # The {#rotation_angle=} method sets the rotation angle applied to the {Sketchup::HatchPattern},
  # in degrees.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.rotation_angle = 45.0
  #
  # @param [Float] angle
  #
  # @version SketchUp 2027.0
  def rotation_angle=(angle)
  end

  # The {#save_fill_pattern_to_file} method writes the .pat line-pattern definition to a file. This
  # writes only the pattern definition, not the whole hatch pattern; use {#write} for the latter.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.save_fill_pattern_to_file('C:/patterns/ansi31.pat')
  #
  # @param [String] file_name
  #   the path to write the .pat file to.
  #
  # @raise [ArgumentError] if the pattern has no .pat definition or the file could not be written.
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def save_fill_pattern_to_file(file_name)
  end

  # The {#set_fill_pattern_from_file} method loads a .pat line-pattern definition from a file.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   hatch_pattern.set_fill_pattern_from_file('C:/patterns/ansi31.pat')
  #
  # @param [String] file_name
  #   the path to the .pat file to load.
  #
  # @raise [ArgumentError] if the .pat file could not be loaded.
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def set_fill_pattern_from_file(file_name)
  end

  # The {#set_fill_texture_image_and_file_name} method sets the fill texture image and the file path
  # it came from together, as a unit.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   image_rep = Sketchup::ImageRep.new('C:/textures/brick.png')
  #   hatch_pattern.set_fill_texture_image_and_file_name(image_rep, 'C:/textures/brick.png')
  #
  # @param [Sketchup::ImageRep] image
  #
  # @param [String] file_name
  #   the file path the texture was loaded from.
  #
  # @raise [ArgumentError] if +image+ is not a {Sketchup::ImageRep} or does not contain valid image
  #   data.
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def set_fill_texture_image_and_file_name(image, file_name)
  end

  # The {#set_uv_scale} method sets the UV scale of the {Sketchup::HatchPattern}. Both values must be
  # positive. The scale is a factor applied to the pattern's repeat; it is not a percentage.
  #
  # @example
  #   model = Sketchup.active_model
  #   hatch_pattern = model.hatch_patterns['Pattern']
  #   hatch_pattern.set_uv_scale(12.0, 12.0)
  #
  # @param [Float] u_scale
  #
  # @param [Float] v_scale
  #
  # @raise [ArgumentError] if either scale is not a positive value.
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def set_uv_scale(u_scale, v_scale)
  end

  # The {#thumbnail_image} method retrieves the cached preview image of the {Sketchup::HatchPattern}.
  #
  # @example
  #   hatch_pattern = Sketchup.active_model.hatch_patterns['Pattern']
  #   image = hatch_pattern.thumbnail_image
  #
  # @return [Sketchup::ImageRep, nil] the thumbnail image, or +nil+ if none is available
  #
  # @version SketchUp 2027.0
  def thumbnail_image
  end

  # The {#uv_scale} method retrieves the UV scale of the {Sketchup::HatchPattern} as a
  # +u+ and +v+ pair. The scale is a positive factor applied to the pattern's repeat; it is not
  # a percentage.
  #
  # @example
  #   model = Sketchup.active_model
  #   hatch_pattern = model.hatch_patterns['Pattern']
  #   u_scale, v_scale = hatch_pattern.uv_scale
  #
  # @return [Array(Float, Float)] the u and v scale factors
  #
  # @version SketchUp 2027.0
  def uv_scale
  end

  # Writes the hatch pattern to file as a .skh file.
  #
  # @example
  #   hp = Sketchup.active_model.hatch_patterns['Pattern']
  #   hp.write('path/to/pattern.skh')
  #
  # @param [String] path
  #
  # @raise [RuntimeError] if the hatch pattern could not be written to file.
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def write(path)
  end

end

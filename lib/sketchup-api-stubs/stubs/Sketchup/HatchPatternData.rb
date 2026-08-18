# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# A {Sketchup::HatchPatternData} object holds the appearance settings of a hatch pattern detached
# from any named {Sketchup::HatchPattern} in the model. It is used to read and write the default
# section fill style stored in {Sketchup::RenderingOptions#hatch_pattern}.
#
# The object returned by {Sketchup::RenderingOptions#hatch_pattern} is frozen, since it is a
# snapshot detached from the model. Mutate a +dup+ of it (or a new instance) and assign it back
# to apply a change.
#
# @example
#   model = Sketchup.active_model
#   data = model.rendering_options.hatch_pattern.dup
#   data.rotation_angle = 45.0
#   model.rendering_options.hatch_pattern = data
#
# @version SketchUp 2027.0
class Sketchup::HatchPatternData

  # Instance Methods

  # Two {Sketchup::HatchPatternData} objects are equal when all their settings match.
  #
  # @example
  #   data == other_data
  #
  # @param [Object] other
  #
  # @return [Boolean]
  #
  # @version SketchUp 2027.0
  def ==(other)
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.clear_fill_pattern
  #
  # @return [Sketchup::HatchPatternData]
  #
  # @version SketchUp 2027.0
  def clear_fill_pattern
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.clear_fill_texture
  #
  # @return [Sketchup::HatchPatternData]
  #
  # @version SketchUp 2027.0
  def clear_fill_texture
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   color = data.fill_color
  #
  # @return [Sketchup::Color]
  #
  # @version SketchUp 2027.0
  def fill_color
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.fill_color = Sketchup::Color.new(255, 0, 0)
  #
  # @param [Sketchup::Color] color
  #
  # @version SketchUp 2027.0
  def fill_color=(color)
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   path = data.fill_pattern_file_name
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def fill_pattern_file_name
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   path = data.fill_texture_file_name
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def fill_texture_file_name
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   image = data.fill_texture_image
  #
  # @return [Sketchup::ImageRep, nil]
  #
  # @version SketchUp 2027.0
  def fill_texture_image
  end

  # The rotation angle is in degrees.
  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   angle = data.rotation_angle
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def rotation_angle
  end

  # The rotation angle is in degrees.
  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.rotation_angle = 45.0
  #
  # @param [Float] angle
  #
  # @version SketchUp 2027.0
  def rotation_angle=(angle)
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.save_fill_pattern_to_file('C:/patterns/ansi31.pat')
  #
  # @param [String] file_name
  #
  # @raise [ArgumentError] if the pattern has no .pat definition or the file could not be written.
  #
  # @return [Sketchup::HatchPatternData]
  #
  # @version SketchUp 2027.0
  def save_fill_pattern_to_file(file_name)
  end

  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.set_fill_pattern_from_file('C:/patterns/ansi31.pat')
  #
  # @param [String] file_name
  #
  # @raise [ArgumentError] if the .pat file could not be loaded.
  #
  # @return [Sketchup::HatchPatternData]
  #
  # @version SketchUp 2027.0
  def set_fill_pattern_from_file(file_name)
  end

  # The image and the file path it came from are set together, as a unit.
  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   image_rep = Sketchup::ImageRep.new('C:/textures/brick.png')
  #   data.set_fill_texture_image_and_file_name(image_rep, 'C:/textures/brick.png')
  #
  # @param [Sketchup::ImageRep] image
  #
  # @param [String] file_name
  #
  # @raise [TypeError] if +image+ is not a {Sketchup::ImageRep}.
  #
  # @raise [ArgumentError] if +image+ does not contain valid image data.
  #
  # @return [Sketchup::HatchPatternData]
  #
  # @version SketchUp 2027.0
  def set_fill_texture_image_and_file_name(image, file_name)
  end

  # Both values must be positive.
  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   data.set_uv_scale(12.0, 12.0)
  #
  # @param [Float] u_scale
  #
  # @param [Float] v_scale
  #
  # @raise [ArgumentError] if either scale is not a positive value.
  #
  # @return [Sketchup::HatchPatternData]
  #
  # @version SketchUp 2027.0
  def set_uv_scale(u_scale, v_scale)
  end

  # The scale is a factor applied to the pattern's repeat; it is not a percentage.
  #
  # @example
  #   data = Sketchup.active_model.rendering_options.hatch_pattern
  #   u_scale, v_scale = data.uv_scale
  #
  # @return [Array(Float, Float)]
  #
  # @version SketchUp 2027.0
  def uv_scale
  end

end

# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The Texture class contains methods for obtaining information about textures
# that are part of your materials in your model (within the In-Model section
# of the Materials Browser). Remember, textures are repeatable images that
# "tile" when painted on a surface.
#
# @version SketchUp 6.0
class Sketchup::Texture < Sketchup::Entity

  # Instance Methods

  # The average_color method retrieves a color object with the average color
  # found in the texture.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials=model.materials
  #   # Adds a material as an in model material
  #   m = materials.add "Test Color"
  #   begin
  #     # Returns nil if not successful, path if successful
  #     m.texture = "c:\\Materials\\Carpet.jpg"
  #   rescue
  #     puts $!.message
  #   end
  #   texture = m.texture
  #   # Returns a color object
  #   color = texture.average_color
  #
  # @return [Sketchup::Color, nil] a color object (if successful), nil if
  #   unsuccessful.
  #
  # @version SketchUp 6.0
  def average_color
  end

  # The {#filename} method retrieves the full path, if available, for a texture object.
  #
  # Textures for materials shipping with SketchUp might only have a filename,
  # since the path would be invalid on the end user's machine. Textures
  # dynamically created from ImageRep objects may have an empty path unless
  # saved with {Sketchup::ImageRep#save_file} or until the texture is saved with
  # {Sketchup::Texture#write}.
  #
  # If you need only the filename of the texture use +filename = File.basename(texture.filename)+.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add("Test Color")
  #   material.texture = "c:\\Materials\\Carpet.jpg"
  #   texture = material.texture
  #   filename = texture.filename
  #
  # @note Since SketchUp 2021.0 this method will append a file extension matching
  #   the image format if the file extension is missing from stored filepath.
  #
  # @return [String] a string representation of the path and
  #   filename used for the texture.
  #
  # @version SketchUp 6.0
  def filename
  end

  # The height method is used to get the height of a repeatable texture image,
  # in inches.
  #
  # @example
  #   height = texture.height
  #
  # @return [Integer] the height, in inches, of the texture pattern
  #
  # @version SketchUp 6.0
  def height
  end

  # The image_height method retrieves the height of the repeatable texture
  # image, in pixels.
  #
  # @example
  #   imageheight = texture.image_height
  #
  # @return [Integer] the height, in pixels, of the texture
  #   pattern
  #
  # @version SketchUp 6.0
  def image_height
  end

  # The {#image_rep} method returns a copy of a {Sketchup::ImageRep} object
  # representing the texture pixel data.
  #
  # @example
  #   texture = Sketchup.active_model.materials[0].texture
  #   image_rep = texture.image_rep
  #
  # @param [Boolean] colorized
  #   Set to +true+ to obtain the colorized version.
  #
  # @return [Sketchup::ImageRep]
  #
  # @version SketchUp 2018
  def image_rep(colorized = false)
  end

  # The image_width method retrieves the width of the repeatable texture image,
  # in pixels.
  #
  # @example
  #   imagewidth = texture.image_width
  #
  # @return [Integer] the width, in pixels, of the texture
  #   pattern
  #
  # @version SketchUp 6.0
  def image_width
  end

  # The size= method allows you to set the size of the repeatable texture image,
  # in inches,
  #
  # @example
  #   size = texture.size = 60
  #   imagewidth = texture.width
  #
  #   if (imagewidth)
  #     puts imagewidth
  #   else
  #     puts "Failure"
  #   end
  #
  #   # Using two values which will not preserve ratio
  #   width_height = texture.size = [10,100]
  #
  # @param [Integer, Array(Integer, Integer)] size
  #   The size, in inches, of the texture. This number will
  #   apply to height and width to keep aspect ratio.
  #   You can also pass as a parameter an array of two
  #   numeric values which will set width and height
  #   regardless of maintaining the height/width ratio.
  #
  # @return [Integer, Array(Integer, Integer)] the size, in inches, of the texture. This number
  #   will apply to height and width to keep aspect ratio.
  #   If you have passed in an array of two numbers for width
  #   and height, the same array will be returned if
  #   successful.
  #
  # @version SketchUp 6.0
  def size=(size)
  end

  # The valid? method ensures that a texture is valid.
  #
  # @example
  #   status = texture.valid?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def valid?
  end

  # The width method is used to get the width of a repeatable texture image,
  # in inches.
  #
  # @example
  #   width = texture.width
  #
  # @return [Integer] the width, in inches, of the texture pattern
  #
  # @version SketchUp 6.0
  def width
  end

  # Writes the texture to file with option to preserve the color adjustments made
  # by the material.
  #
  # @example
  #   material = Sketchup.active_model.materials[0]
  #   basename = File.basename(material.texture.filename)
  #   path = File.join(Sketchup.temp_dir, basename)
  #   material.texture.write(path)
  #
  # @param [String] path
  #   The file path to write the texture to.
  #
  # @param [Boolean] colorize
  #   Boolean - Allows for the texture to
  #   be exported with the color adjustments.
  #
  # @return [Boolean] true if the method succeeded
  #
  # @version SketchUp 2016
  def write(path, colorize = false)
  end

end

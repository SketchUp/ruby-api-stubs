# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# References an image representation object.
#
# @example
#   # Get the color of the center of the first material texture found in model.
#   texture = Sketchup.active_model.materials.map(&:texture).compact.first
#   image_rep = texture.image_rep
#   color = image_rep.color_at_uv(0.5, 0.5)
#
# @version SketchUp 2018
class Sketchup::ImageRep

  # Instance Methods

  # The {#bits_per_pixel} method gets the number of bits per pixel in the
  # image.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   bpp = image_rep.bits_per_pixel
  #
  # @return [Integer]
  #
  # @version SketchUp 2018
  def bits_per_pixel
  end

  # The {#color_at_uv} method returns a color corresponding to the UV texture
  # coordinates. +0.0, 0.0+ maps to the bottom left and +1.0, 1.0+ to the top
  # right of the image.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   color = image_rep.color_at_uv(0.7, 0.5, false)
  #
  # @param [Float] u
  #   The U texture coordinate.
  #
  # @param [Float] v
  #   The V texture coordinate.
  #
  # @param [Boolean] bilinear
  #   Use bilinear texture filtering. This
  #   interpolates the colors instead of picking
  #   the nearest neighbor.
  #
  # @return [Sketchup::Color, nil]
  #
  # @version SketchUp 2018
  def color_at_uv(u, v, bilinear = false)
  end

  # The {#colors} method returns an array of {Sketchup::Color} for each pixel in
  # the image.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   colors = image_rep.colors
  #
  # @return [Array<Sketchup::Color>, nil]
  #
  # @version SketchUp 2018
  def colors
  end

  # The {#data} method gets the pixel data for an image in a string of bytes.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   byte_string = image_rep.data
  #   byte_string.each_byte { |byte| puts byte, ' ' }
  #
  # @note The byte order of the pixels are RGB(A) on macOS and BGR(A) on Windows.
  #
  # @return [String, nil]
  #
  # @version SketchUp 2018
  def data
  end

  # The {#height} method returns the height of an image.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   image_rep.height
  #
  # @return [Integer]
  #
  # @version SketchUp 2018
  def height
  end

  # The {#initialize} method creates a new image object. The image object will
  # have no data if a path to the image is not provided.
  #
  # @example Default constructor
  #   image_rep = Sketchup::ImageRep.new
  #   # Use #set_data or #load_file to add image data.
  #
  # @example Construct from file
  #   image_rep = Sketchup::ImageRep.new("/path/to/image.jpg")
  #
  # @overload initialize
  #
  #
  # @overload initialize(filepath)
  #
  #   @param [String] filepath
  #
  # @raise [ArgumentError] if the file path or image is invalid.
  #
  # @return [Sketchup::ImageRep]
  #
  # @version SketchUp 2018
  def initialize(*args)
  end

  # The {#load_file} method loads image data from the specified file.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #
  # @param [String] filepath
  #
  # @raise [ArgumentError] if the filepath or image is invalid.
  #
  # @version SketchUp 2018
  def load_file(filepath)
  end

  # The {#row_padding} method returns the size of the row padding of an image
  # in bytes.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   image_rep.row_padding
  #
  # @return [Integer]
  #
  # @version SketchUp 2018
  def row_padding
  end

  # The {#save_file} method saves an image data object to an image file
  # specified by a path.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image1.jpg")
  #   # do stuff with the image representation
  #   image_rep.save_file("/path/to/save/image2.jpg")
  #
  # @param [String] filepath
  #
  # @version SketchUp 2018
  def save_file(filepath)
  end

  # The {#set_data} method discards any existing data and sets new pixel data for
  # the {Sketchup::ImageRep}.
  #
  # @example Setting new data
  #   image_rep = Sketchup::ImageRep.new
  #   width = 800
  #   height = 600
  #   bpp = 24
  #   pixel = [127, 127, 127].pack("C*")
  #   pixels = pixel * width * height
  #   image_rep.set_data(width, height, bpp, 0, pixels)
  #   image_rep.save_file(UI.savepanel)
  #
  # @example Handling system color differences
  #   # Generates red image on Mac and blue on Windows.
  #   image_rep = Sketchup::ImageRep.new
  #   color = Sketchup::Color.new("Red")
  #   rgba = color.to_a # Red, green , blue, alpha
  #   color_data = rgba.pack("C*")
  #   image_rep.set_data(1, 1, 32, 0, color_data)
  #   image_rep.save_file(UI.savepanel)
  #
  #   # Generates red image on both systems.
  #   image_rep = Sketchup::ImageRep.new
  #   color = Sketchup::Color.new("Red")
  #   color_code = color.to_a # Red, green, blue, alpha
  #   if Sketchup.platform == :platform_win
  #     # Change order to Blue, green, red, alpha on Windows.
  #     color_code = color_code.values_at(2, 1, 0, 3)
  #   end
  #   color_data = color_code.pack("C*")
  #   image_rep.set_data(1, 1, 32, 0, color_data)
  #   image_rep.save_file(UI.savepanel)
  #
  # @note The byte order of the pixels are RGB(A) on macOS and BGR(A) on Windows.
  #
  # @note The encoding of the pixel_data {String} parameter should be ASCII-8BIT.
  #   Any other encoding could corrupt the binary data. Using
  #   `Array#pack("C*")` gives correct encoding.
  #
  # @param [Integer] width
  #   The width of the pixel data. Must be greater than 0.
  #
  # @param [Integer] height
  #   The height of the pixel data.
  #   Must be greater than 0.
  #
  # @param [Integer] bits_per_pixel
  #   The bits per pixel for the pixel data.
  #   Must be either 8/24/32.
  #
  # @param [Integer] row_padding
  #   The row padding for the pixel data which is
  #   sized in bytes. Row padding is used to pad each row with zeros so that each
  #   scanline on the pixel data will end on the data-type boundary.
  #
  # @param [String] pixel_data
  #   The binary string containing the pixel data
  #   representing the new image.
  #
  # @raise [ArgumentError] If width, height, bits_per_pixel or pixel_data are
  #   invalid.
  #
  # @raise [TypeError] If width, height, bits_per_pixel or pixel_data are wrong
  #   data types.
  #
  # @return [Sketchup::ImageRep]
  #
  # @version SketchUp 2018
  def set_data(width, height, bits_per_pixel, row_padding, pixel_data)
  end

  # The {#size} method gets the total size of the image data in bytes.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   data_size = image_rep.size
  #
  # @return [Integer]
  #
  # @version SketchUp 2018
  def size
  end

  # The {#width} method returns the width of an image.
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   image_rep.width
  #
  # @return [Integer]
  #
  # @version SketchUp 2018
  def width
  end

end

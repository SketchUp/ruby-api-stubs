# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# References an image representation object.
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
  # coordinates
  #
  # @example
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   color = image_rep.color_at_uv(0.7, 0.5, false)
  #
  # @param [Float] v
  #   The V texture coordinate.
  #
  # @param [Boolean] bilinear
  #   Use bilinear texture filtering. This
  #   interpolates the colors instead of picking
  #   the nearest neighbor.
  #
  # @param [Float] u
  #   The U texture coordinate.
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
  #
  # @example Construct from file
  #   image_rep = Sketchup::ImageRep.new("/path/to/image.jpg")
  #
  # @overload initialize(filepath)
  #
  #   @param [String] filepath
  #
  # @overload initialize
  #
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

  # The {#set_data} method sets the pixel data of the {Sketchup::ImageRep}.
  #
  # @example Setting new data
  #   image_rep = Sketchup::ImageRep.new
  #   image_rep.load_file("/path/to/image.jpg")
  #   new_image_rep = image_rep.set_data(800, 600, 24, 0, pixel_data)
  #
  # @note The encoding of the pixel_data {String} parameter should be ASCII-8BIT.
  #   Any other encoding could corrupt the binary data.
  #
  # @param [Integer] height
  #   The height of the pixel data.
  #   Must be greater than 0.
  #
  # @param [Integer] width
  #   The width of the pixel data. Must be greater than 0.
  #
  # @param [Integer] row_padding
  #   The row padding for the pixel data which is
  #   sized in bytes. Row padding is used to pad each row with zeros so that each
  #   scanline on the pixel data will end on the data-type boundry.
  #
  # @param [Integer] bits_per_pixel
  #   The bits per pixel for the pixel data.
  #   Must be either 8/24/32.
  #
  # @param [String] pixel_data
  #   The binary string containing the pixel data
  #   representing the new image.
  #
  # @raise [TypeError] If width, height, bits_per_pixel or pixel_data are wrong
  #   data types.
  #
  # @raise [ArgumentError] If width, height, bits_per_pixel or pixel_data are
  #   invalid.
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

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Color class is used to create and manipulate colors within SketchUp
# models.
# 
# For methods that accept a Color object, such as the
# face.material method, you can pass in an actual Color object, or an object
# that can be converted to a Color. For example:
# 
# SketchUp ships with several built in colors in the Materials Browser.
# These colors are listed in the following table.
# 
# {include:file:assets/colors.html}
#
# @example 
#   face.material = Sketchup::Color.new(255, 0, 0)
#   face.material = 255
#   face.material = 0xff
#   face.material = "red"
#   face.material = "#ff0000"
#   face.material = [1.0, 0.0, 0.0]
#   face.material = [255, 0, 0]
#
# @version SketchUp 6.0
class Sketchup::Color

  # Class Methods

  # The names method is used to retrieve an array of all color names recognized
  # by SketchUp.
  # 
  # In general, whenever a method wants a color, you can pass in a String with
  # one of these names.
  #
  # @example 
  #   array = Sketchup::Color.names
  #
  # @return names - an array of all SketchUp color names if
  #   successful
  #
  # @version SketchUp 6.0
  def self.names
  end

  # Instance Methods

  # The alpha method is used to retrieve the opacity of the color. A value of 0
  # is transparent, 255 is opaque.
  #
  # @example 
  #   color = Sketchup::Color.new "OldLace"
  #   alpha = color.alpha
  #
  # @return alpha - the opacity of the color if successful
  #
  # @version SketchUp 6.0
  def alpha
  end

  # The alpha= method is used to set the opacity of the color. A value of 0 is
  # transparent, 255 is opaque.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   alpha = color.alpha = 255
  #
  # @param alpha
  #   The new opacity value.
  #
  # @return alpha - the newly set opacity value if successful
  #
  # @version SketchUp 8.0 M1
  def alpha=(alpha)
  end

  # The blend method is used to blend two colors.
  # 
  # The blended color will be the result of taking (1 - weight) * color1 +
  # weight * color2. If weight = 0, you will get color2. If weight = 1 you will
  # get color1.
  #
  # @example 
  #   color1 = Sketchup::Color.new "OldLace"
  #   color2 = Sketchup::Color.new "AliceBlue"
  #   color3 = color1.blend color2, 0.5
  #
  # @param color2
  #   The second color to be blended (with this color).
  #
  # @param weight
  #   A Float between 0.0 and 1.0
  #
  # @return color3 - the newly blended Color object if successful
  #
  # @version SketchUp 6.0
  def blend(color2, weight)
  end

  # The blue method is used to retrieve the blue value of a color. Colors are
  # comprised of red, green, and blue values.
  # 
  # Value range is 0 to 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   setting = color.blue
  #
  # @return blue - the blue value for the color if successful
  #
  # @version SketchUp 6.0
  def blue
  end

  # The blue= method is used to set the blue value of a color. Colors are
  # comprised of red, green, and blue values.
  # 
  # Value range is 0 to 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   setting = color.blue = 200
  #   if (setting)
  #     UI.messagebox setting
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param blue
  #   The blue value for the color.
  #
  # @return blue - the new blue value for the color if successful
  #
  # @version SketchUp 6.0
  def blue=(blue)
  end

  # The green method is used to retrieve the green value of a color. Colors are
  # comprised of red, green, and blue values.
  # 
  # Value range is 0 to 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   setting = color.green
  #   if (setting)
  #     UI.messagebox setting
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return green - the green value for the color if successful
  #
  # @version SketchUp 6.0
  def green
  end

  # The green= method is used to set the green component of a RGB Color.
  # 
  # Value range is 0 to 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   setting = color.green = 200
  #   if (setting)
  #     UI.messagebox setting
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param green
  #   The green value for the color.
  #
  # @return green - the new green value for the color if successful
  #
  # @version SketchUp 6.0
  def green=(green)
  end

  # The new method is used to create a new Color object.
  #
  # @example 
  #   color_from_name = Sketchup::Color.new "OldLace"
  #   color_from_rgb = Sketchup::Color.new(0, 128, 255)
  #   color_from_rgba = Sketchup::Color.new(0, 128, 255, 128)
  #   
  #   # You can then assign colors to the material of DrawingElements.
  #   # Note that this creates a new Material object, and the alpha value
  #   # of the color does NOT get applied to the new Material. You must
  #   # manually set the alpha to get transparent materials.
  #   face.material = color_from_rgba
  #   face.material.alpha = 0.5
  #
  # @overload initialize(red, green, blue)
  # 
  #   @param [Integer] red   A red value between 0 and 255.
  #   @param [Integer] green A green value between 0 and 255.
  #   @param [Integer] blue  A blue value between 0 and 255.
  #   @return [Sketchup::Color]
  #
  # @overload initialize(name)
  # 
  #   @param [String] name  A string name of a color that currently exists in
  #     SketchUp. See the table at the start of this class description for more
  #     info.
  #   @return [Sketchup::Color]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The red method is used to retrieve the red component of a RGB Color.
  # 
  # Value range is 0 to 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   setting = color.red
  #   if (setting)
  #     UI.messagebox setting
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return red - the red value for the color if successful
  #
  # @version SketchUp 6.0
  def red
  end

  # The red= method is used to set the red component of a RGB Color.
  # 
  # Value range is 0 to 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   setting = color.red=200
  #
  # @param red
  #   The red value for the color.
  #
  # @return red - the new red value for the color if successful
  #
  # @version SketchUp 6.0
  def red=(red)
  end

  # The to_a method is used to convert a Color object to an Array object. The
  # returned array will contain 4 integer values (RGBA) between 0 and 255.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   color_array = color.to_a
  #   if (color_array)
  #     UI.messagebox color_array.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return array - an Array object if successful
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The to_i method is used to convert a Color object to an 32 bit integer.
  #
  # @example 
  #   color = Sketchup::Color.new "AliceBlue"
  #   integer = color.to_i
  #
  # @return integer - a 32 bit integer if successful
  #
  # @version SketchUp 6.0
  def to_i
  end

  # Returns a string representation of a Color object, in the form
  # of "Color(255, 255, 255, 255)".
  #
  # @example 
  #   color = Sketchup::Color.new "OldLace"
  #   color.to_s
  #
  # @return string - a String name for the Color.
  #
  # @version SketchUp 6.0
  def to_s
  end

end

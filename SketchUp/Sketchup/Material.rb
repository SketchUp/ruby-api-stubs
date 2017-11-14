# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Material class represents a texture or color that can be applied to
# Drawingelements. It is most often applied to Faces.
#
# You can pass any object that can be used as a material to a method that
# requires a material. Objects include actual materials, color, and classes
# that can be converted to a color.
#
# The following are valid (assuming the existence of a Material mat1.)
#
# @example
#   face.material = mat1
#   face.material = "red"
#   face.material = 0xff0000
#
# @version SketchUp 6.0
class Sketchup::Material < Sketchup::Entity

  # Includes

  include Comparable

  # Constants

  COLORIZE_SHIFT = nil # Stub value.
  COLORIZE_TINT = nil # Stub value.

  MATERIAL_COLORIZED_TEXTURED = nil # Stub value.
  MATERIAL_SOLID = nil # Stub value.
  MATERIAL_TEXTURED = nil # Stub value.

  # Instance Methods

  # The <=> method is used to compare two materials based on name. The number
  # returned relates to the "string distance" between the names.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   m1 = materials.add('Joe')
  #   m2 = materials.add('Fred')
  #   p m1 <=> m2
  #
  # @param [Sketchup::Material] material2
  #   A Material object.
  #
  # @return [Integer] 0 if they are equal, positive number if
  #   material1 > material2, negative if material1 < material2
  #
  # @version SketchUp 6.0
  def <=>(material2)
  end

  # The == method is used to test if two materials are the same.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   m1 = materials.add('Joe')
  #   m2 = materials.add('Fred')
  #   if (m1 == m2)
  #     UI.messagebox('The Materials are equal.')
  #   else
  #     UI.messagebox('The Materials are not equal.')
  #   end
  #
  # @param [Sketchup::Material] material2
  #   A Material object.
  #
  # @return [Boolean] true if the materials are the same, false if
  #   they are different
  #
  # @version SketchUp 6.0
  def ==(material2)
  end

  # The alpha method is used to get the opacity of the material.
  #
  # The value will be between 0.0 and 1.0. A value of 0.0 means that the material is
  # completely transparent. A value of 1.0 means that the Material is completely
  # opaque.
  #
  # @example
  #   alpha_value = Sketchup.active_model.materials[0].alpha
  #
  # @return [Float] a number between 0 and 1
  #
  # @version SketchUp 6.0
  def alpha
  end

  # The alpha= method is used to set the opacity of the material.
  #
  # The value must be between 0.0 and 1.0. A value of 0.0 means that the material is
  # completely transparent. A value of 1.0 means that the Material is completely
  # opaque.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.alpha = 0.5
  #
  # @param [Float] alpha
  #   An opacity value.
  #
  # @return [Float] the newly set opacity value
  #
  # @version SketchUp 6.0
  def alpha=(alpha)
  end

  # The color method is used to retrieve the color of the material.
  #
  # If it uses a Texture, this will return the average color.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.color = 'red'
  #   color = material.color
  #
  # @return [Sketchup::Color] a Color object
  #
  # @version SketchUp 6.0
  def color
  end

  # The color= method is used to set the color of the material.
  #
  # If the Material has a texture, then this turns it into a colorized
  # texture.
  #
  # To reset the color of a Material with a texture, set the color
  # to nil.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.color = 'red'
  #
  # @param [Sketchup::Color, String, nil] color
  #   A Color object.
  #
  # @return [Sketchup::Color, String, nil] the newly set Color object
  #
  # @version SketchUp 6.0
  def color=(color)
  end

  # The colorize_deltas method retrieves the HLS delta for colorized materials.
  #
  # @example
  #   material = Sketchup.active_model.materials[0]
  #   h, l, s = material.colorize_deltas
  #
  # @return [Array(Float, Float, Float)] An array of floats representing the HLS delta.
  #
  # @version SketchUp 2015
  def colorize_deltas
  end

  # The colorize_type method retrieves the type of colorization of the material.
  # This value is only relevant when the materialType is set to 2
  # (colorized textured).
  # Types include:
  #
  #   - 0 = shift (Sketchup::Material::COLORIZE_SHIFT),
  #   - 1 = tint (Sketchup::Material::COLORIZE_TINT),
  #
  # @example
  #   material = Sketchup.active_model.materials[0]
  #   type = material.colorize_type
  #
  # @return [Integer] the colorize type for the Material object.
  #
  # @version SketchUp 2015
  def colorize_type
  end

  # The colorize_type method set the type of colorization of the material.
  # This value is only relevant when the materialType is set to 2
  # (colorized textured).
  # Types include:
  #
  #   - 0 = shift (Sketchup::Material::COLORIZE_SHIFT),
  #   - 1 = tint (Sketchup::Material::COLORIZE_TINT),
  #
  # @example
  #   material = Sketchup.active_model.materials[0]
  #   material.colorize_type = Sketchup::Material::COLORIZE_TINT
  #
  # @param [Integer] type
  #   the new colorize type for the Material object.
  #
  # @return [Integer] the colorize type for the Material object.
  #
  # @version SketchUp 2015
  def colorize_type=(type)
  end

  # The display_name method retrieves the name that is displayed within SketchUp
  # for the material.
  #
  # This should be used when presenting the name in the UI, but the returned name
  # cannot be used as a key in model.materials.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('[Joe]')
  #   # Use .name for the internal name of a material
  #   puts material.name # Outputs "[Joe]"
  #   # Use .display_name for presenting the material name
  #   # to the UI like SketchUp does.
  #   puts material.display_name # Outputs "Joe"
  #
  # @return [String] the display name for the material
  #
  # @version SketchUp 6.0
  def display_name
  end

  # The materialType method retrieves the type of the material. Types include:
  #
  #   - 0 = solid (Sketchup::Material::MATERIAL_SOLID),
  #   - 1 = textured (Sketchup::Material::MATERIAL_TEXTURED),
  #   - 2 = colorized textured (Sketchup::Material::MATERIAL_COLORIZED_TEXTURED).
  #
  # The constants where added in SketchUp 2015.
  #
  # @example
  #   material = Sketchup.active_model.materials[0]
  #   type = material.materialType
  #
  # @return [Integer] the material type for the Material object. See
  #   summary for details.
  #
  # @version SketchUp 6.0
  def materialType
  end

  # The name method retrieves the name of the material. This is the
  # internal name of the object which should be used for retrieving
  # the material from the model's material list.
  #
  # Use .display_name to display the name in the UI.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('[Joe]')
  #   # Use .name for the internal name of a material
  #   puts material.name # Outputs "[Joe]"
  #   # Use .display_name for presenting the material name
  #   # to the UI like SketchUp does.
  #   puts material.display_name # Outputs "Joe"
  #
  # @return [String] the name of the Material object
  #
  # @version SketchUp 6.0
  def name
  end

  # Sets the name of the material.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   material = materials.add("Joe")
  #   material.name = 'Jeff'
  #
  # @param [String] str
  #   the new material name
  #
  # @raise [ArgumentError] if the name is not unique to the model.
  #   (Added in SU2018)
  #
  # @return [String] the newly set material name.
  #
  # @version SketchUp 8.0 M1
  def name=(str)
  end

  # The {#save_as} method is used to write a material to a SKM file.
  #
  # You must remember to append ".skm" to the filename as this will not be done
  # automatically.
  #
  # @example
  #   filename = File.join(ENV['HOME'], 'Desktop', 'su_test.skm')
  #   materials = Sketchup.active_model.materials
  #   material = materials.add("Hello World")
  #   material.color = 'red'
  #   material.save_as(filename)
  #
  # @param [String] filename
  #   the path to the SKM file to load.
  #
  # @return [Boolean] `true` if successful
  #
  # @version SketchUp 2017
  def save_as(filename)
  end

  # The texture method retrieves the texture of the material.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.texture = "C:/Materials/Carpet.jpg"
  #   texture = material.texture
  #
  # @return [Sketchup::Texture, nil] the Texture object within the Material.
  #   Returns nil if the Material does not have a texture.
  #
  # @version SketchUp 6.0
  def texture
  end

  # The texture= method sets the texture for the material.
  #
  # Setting the texture to +nil+ will turn it into a solid color
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.texture = "C:/Materials/Carpet.jpg"
  #
  # @overload texture=(filename)
  #
  #   @param filename [String] The file path to the texture the material should use.
  #   @return [String]
  #
  # @overload texture=(image_rep)
  #
  #   @param [Sketchup::ImageRep] image_rep The pixel data representing the
  #     texture. (Added in SketchUp 2018)
  #   @return [Sketchup::ImageRep]
  #
  # @overload texture=(properties)
  #
  #   @param properties [Array(String, Integer, Integer)] An array with the
  #     texture filename and optionally the width and height in model units.
  #   @return [Array(String, Integer, Integer)]
  #
  # @version SketchUp 6.0
  def texture=(arg)
  end

  # The use_alpha? method tells if the material uses transparency.
  #
  # Note that this is not affected by the alpha value of the color object. Only
  # the .alpha value and transparent texture will make this method return true.
  #
  # @example
  #   material = Sketchup.active_model.materials[0]
  #   is_alpha = material.use_alpha?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def use_alpha?
  end

  # The write_thumbnail method writes a bitmap thumbnail to the given file name.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.materials.each { |material|
  #     thumbnail_file = "C:/tmp/materials/#{material.display_name}.png"
  #     material.write_thumbnail(thumbnail_file, 128)
  #   }
  #
  # @param [String] filename
  #   The file name for the thumbnail.
  #
  # @param [Integer] resolution
  #   The resolution of the thumbnail.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 8.0 M1
  def write_thumbnail(filename, resolution)
  end

end

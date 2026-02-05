# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::Material} class represents a {Sketchup::Texture}
# or {Sketchup::Color} that can be applied to {Sketchup::Drawingelement}s.
# It is most often applied to {Sketchup::Face}s.
#
# You can pass any object that can be used as a material to a method that
# requires a material. Objects include actual {Sketchup::Material},
# {Sketchup::Color}, and classes that can be converted to a color.
#
# @example
#   model = Sketchup.active_model
#   face = model.entities.add_face([0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0])
#   material = model.materials.add('Example')
#   # The following will all assign a red material to the face:
#   material.color = Sketchup::Color.new(255, 0, 0)
#   face.material = material
#   face.material = Sketchup::Color.new(255, 0, 0)
#   face.material = [255, 0, 0]
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

  NORMAL_STYLE_DIRECTX = nil # Stub value.
  NORMAL_STYLE_OPENGL = nil # Stub value.

  OWNER_IMAGE = nil # Stub value.
  OWNER_LAYER = nil # Stub value.
  OWNER_MANAGER = nil # Stub value.

  WORKFLOW_CLASSIC = nil # Stub value.
  WORKFLOW_PBR_METALLIC_ROUGHNESS = nil # Stub value.

  # Instance Methods

  # The {#<=>} method is used to compare two materials based on #{display_name}.
  #
  # @example
  #   materials =  Sketchup.active_model.materials
  #   m1 = materials.add('Joe')
  #   m2 = materials.add('Fred')
  #   m1 <=> m2
  #   # > 1
  #
  # @param [Sketchup::Material] material
  #
  # @return [Integer] +0+ if they are equal,
  #   +1+ if material1 > material2, +-1+ if material1 < material2
  #
  # @version SketchUp 6.0
  def <=>(material)
  end

  # The {#==} method is used to test if two materials are the same.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   m1 = materials.add('Joe')
  #   m2 = materials.add('Fred')
  #   m1 == m2
  #   # > false
  #
  # @param [Sketchup::Material] material
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def ==(material)
  end

  # The {#alpha} method is used to get the opacity of the material.
  #
  # The value will be between +0.0+ and +1.0+. A value of +0.0+ means that the
  # material is completely transparent. A value of +1.0+ means that the material
  # is completely opaque.
  #
  # @example
  #   material = Sketchup.active_model.materials.add('Example')
  #   material.alpha
  #   # > 1.0
  #
  # @return [Float] A value between +0.0+ and +1.0+.
  #
  # @see #use_alpha?
  #
  # @version SketchUp 6.0
  def alpha
  end

  # The {#alpha=} method is used to set the opacity of the material.
  #
  # The value must be between +0.0+ and +1.0+. A value of +0.0+ means that the
  # material is completely transparent. A value of +1.0+ means that the material
  # is completely opaque.
  #
  # @example
  #   material =  Sketchup.active_model.materials.add('Example')
  #   material.alpha = 0.5
  #
  # @param [Float] alpha
  #   An alpha value between +0.0+ and +1.0+.
  #
  # @return [Float]
  #
  # @see #use_alpha?
  #
  # @version SketchUp 6.0
  def alpha=(alpha)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("Material")
  #   material.ao_enabled = true
  #
  # @raise [ArgumentError] if the ambient occlusion texture is not set before enabling ambient
  #   occlusion.
  #
  # @see ao_enabled?
  #
  # @see #ao_texture
  #
  # @see #ao_texture=
  #
  # @see #ao_strength
  #
  # @see #ao_strength=
  #
  # @version SketchUp 2025.0.2
  def ao_enabled=(enabled)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("Material")
  #   material.ao_enabled?
  #   # > false
  #
  # @note There is no setter for this property. Instead it's dictated whether a
  #   {#ao_texture} is set.
  #
  # @return [Boolean]
  #
  # @see #ao_enabled=
  #
  # @see #ao_texture
  #
  # @see #ao_texture=
  #
  # @see #ao_strength
  #
  # @see #ao_strength=
  #
  # @version SketchUp 2025.0
  def ao_enabled?
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.ao_texture = 'path/to/ao_texture.png'
  #   material.ao_strength
  #   # > 1.0
  #
  # @return [Float] A value between +0.0+ and +1.0+.
  #
  # @see #ao_enabled?
  #
  # @see #ao_texture
  #
  # @see #ao_texture=
  #
  # @version SketchUp 2025.0
  def ao_strength
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.ao_texture = 'path/to/ao_texture.png'
  #   material.ao_strength = 1.0
  #
  # @param [Float] strenght
  #   A value between +0.0+ and +1.0+.
  #
  # @see #ao_enabled?
  #
  # @see #ao_texture
  #
  # @see #ao_texture=
  #
  # @version SketchUp 2025.0
  def ao_strength=(strenght)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.ao_texture = 'path/to/ao_texture.png'
  #   material.ao_texture
  #   # > nil
  #
  # @return [Sketchup::Texture]
  #
  # @see #ao_enabled?
  #
  # @see #ao_strength
  #
  # @see #ao_strength=
  #
  # @version SketchUp 2025.0
  def ao_texture
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.texture = 'path/to/texture.png'
  #   material.ao_texture = 'path/to/ao_texture.png'
  #
  # @overload ao_texture=(image_path)
  #
  #   @param [String] image_path
  #
  # @overload ao_texture=(image_rep)
  #
  #   @param [Sketchup::ImageRep] image_rep
  #
  # @overload ao_texture=(texture)
  #
  #   Copies another texture to this texture.
  #   @param [Sketchup::Texture] texture
  #
  # @raise [ArgumentError] if the image data of the texture is invalid or corrupt.
  #
  # @see #ao_enabled?
  #
  # @see #ao_strength
  #
  # @see #ao_strength=
  #
  # @version SketchUp 2025.0
  def ao_texture=(texture)
  end

  # The {#color} method is used to retrieve the color of the material.
  #
  # If it uses a colorized {Sketchup::Texture}, this will return the average
  # color of the texture.
  #
  # @example
  #   materials = Sketchup.active_model.materials.add('Example')
  #   material.color = 'red'
  #   color = material.color
  #
  # @note The alpha value of the {Sketchup::Color} object is not used for the
  #   material's transparency. This is controlled by the {#alpha} property in
  #   order for textured materials to also have transparency.
  #
  # @return [Sketchup::Color]
  #
  # @see #alpha
  #
  # @see #texture
  #
  # @version SketchUp 6.0
  def color
  end

  # The {#color=} method is used to set the color of the material.
  #
  # If the material has a {Sketchup::Texture}, then this turns it into a colorized
  # texture.
  #
  # To reset the color of a material with a colorized texture, set the color
  # to +nil+. If the texture is not colorized it'll be reset to some undefined
  # default color.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.color = 'red'
  #
  # @note The alpha value of the {Sketchup::Color} object is not used for the
  #   material's transparency. This is controlled by the {#alpha} property in
  #   order for textured materials to also have transparency.
  #
  # @param [Sketchup::Color, String, Array(Numeric, Numeric, Numeric, Numeric), Integer, nil] color
  #   Any value you can create a {Sketchup::Color} from or +nil+.
  #
  # @see #alpha=
  #
  # @see #texture=
  #
  # @see #colorize_deltas
  #
  # @see #colorize_type
  #
  # @see #materialType
  #
  # @see Sketchup::Color#initialize
  #
  # @version SketchUp 6.0
  def color=(color)
  end

  # The {#colorize_deltas} method retrieves the HLS delta for colorized materials.
  #
  # @example
  #   material = Sketchup.active_model.materials.add('Example')
  #   h, l, s = material.colorize_deltas
  #
  # @return [Array(Float, Float, Float)] An array of floats representing the HLS delta.
  #
  # @version SketchUp 2015
  def colorize_deltas
  end

  # The {#colorize_type} method retrieves the type of colorization of the material.
  #
  # {Material Colorize Types}[#normal_style_summary]:
  #
  # - {Sketchup::Material::COLORIZE_SHIFT}
  # - {Sketchup::Material::COLORIZE_TINT}
  #
  # @example
  #   material = Sketchup.active_model.materials.add('Example')
  #   type = material.colorize_type
  #
  # @note This value is only relevant when the {#materialType} is set to
  #   {Sketchup::Material::MATERIAL_COLORIZED_TEXTURED}.
  #
  # @return [Integer] One of +Sketchup::Material::COLORIZE_*+ values.
  #
  # @version SketchUp 2015
  def colorize_type
  end

  # The {#colorize_type=} method set the type of colorization of the material.
  #
  # {Material Colorize Types}[#normal_style_summary]:
  #
  # - {Sketchup::Material::COLORIZE_SHIFT}
  # - {Sketchup::Material::COLORIZE_TINT}
  #
  # @example
  #   material = Sketchup.active_model.materials.add('Example')
  #   material.colorize_type = Sketchup::Material::COLORIZE_TINT
  #
  # @note This value is only relevant when the {#materialType} is set to
  #   {Sketchup::Material::MATERIAL_COLORIZED_TEXTURED}.
  #
  # @param [Integer] type
  #   One of +Sketchup::Material::COLORIZE_*+ values.
  #
  # @version SketchUp 2015
  def colorize_type=(type)
  end

  # The {#display_name} method retrieves the name that is displayed within SketchUp
  # for the material.
  #
  # This should be used when presenting the name in the UI, but the returned name
  # cannot be used as a key in {Sketchup::Model#materials}.
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
  # @return [String]
  #
  # @see #name
  #
  # @version SketchUp 6.0
  def display_name
  end

  # The {#materialType} method retrieves the type of the material.
  #
  # {Material Types}[#material_type_constant_summary]:
  #
  # - +0+ = solid ({Sketchup::Material::MATERIAL_SOLID})
  # - +1+ = textured ({Sketchup::Material::MATERIAL_TEXTURED})
  # - +2+ = colorized textured ({Sketchup::Material::MATERIAL_COLORIZED_TEXTURED})
  #
  # The constants were added in SketchUp 2015.
  #
  # @example
  #   material = Sketchup.active_model.materials.add('Example')
  #   material.materialType == Sketchup::Material::MATERIAL_SOLID
  #   # > true
  #
  # @return [Integer] One of +Sketchup::Material::MATERIAL_*+ values.
  #
  # @version SketchUp 6.0
  def materialType
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.metalness_enabled = true
  #   material.metallic_factor
  #   # > 1.0
  #
  # @return [Float] A value between +0.0+ and +1.0+.
  #
  # @see #metalness_enabled?
  #
  # @see #metalness_enabled=
  #
  # @see #metallic_texture
  #
  # @see #metallic_texture=
  #
  # @version SketchUp 2025.0
  def metallic_factor
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.metalness_enabled = true
  #   material.metallic_factor = 1.0
  #
  # @param [Float] factor
  #   A value between +0.0+ and +1.0+.
  #
  # @see #metalness_enabled?
  #
  # @see #metalness_enabled=
  #
  # @see #metallic_texture
  #
  # @see #metallic_texture=
  #
  # @version SketchUp 2025.0
  def metallic_factor=(factor)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.metalness_enabled = true
  #   material.metallic_texture
  #   # > nil
  #
  # @return [Sketchup::Texture]
  #
  # @see #metalness_enabled?
  #
  # @see #metalness_enabled=
  #
  # @see #metallic_factor
  #
  # @see #metallic_factor=
  #
  # @version SketchUp 2025.0
  def metallic_texture
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.texture = 'path/to/texture.png'
  #   material.metallic_texture = 'path/to/metallic_texture.png'
  #
  # @overload metallic_texture=(image_path)
  #
  #   @param [String] image_path
  #
  # @overload metallic_texture=(image_rep)
  #
  #   @param [Sketchup::ImageRep] image_rep
  #
  # @overload metallic_texture=(texture)
  #
  #   Copies another texture to this texture.
  #   @param [Sketchup::Texture] texture
  #
  # @raise [ArgumentError] if the image data of the texture is invalid or corrupt.
  #
  # @see #metalness_enabled?
  #
  # @see #metalness_enabled=
  #
  # @see #metallic_factor
  #
  # @see #metallic_factor=
  #
  # @version SketchUp 2025.0
  def metallic_texture=(texture)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.metalness_enabled = true
  #
  # @param [Boolean] enabled
  #
  # @see #metallic_texture
  #
  # @see #metallic_texture=
  #
  # @see #metallic_factor
  #
  # @see #metallic_factor=
  #
  # @version SketchUp 2025.0
  def metalness_enabled=(enabled)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("Material")
  #   material.metalness_enabled?
  #   # > false
  #
  # @return [Boolean]
  #
  # @see #metallic_texture
  #
  # @see #metallic_texture=
  #
  # @see #metallic_factor
  #
  # @see #metallic_factor=
  #
  # @version SketchUp 2025.0
  def metalness_enabled?
  end

  # The {#name} method retrieves the name of the material. This is the
  # unique internal name of the object which should be used for retrieving
  # the material from the model's material list.
  #
  # Use {#display_name} to display the name in the UI.
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
  # @return [String]
  #
  # @see #display_name
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#name=} method sets the name of the material.
  #
  # @bug SketchUp 2018 would raise an error if you named material the name it
  #   already had.
  #
  # @example Safely change name without raising errors
  #   materials = Sketchup.active_model.materials
  #   material = materials.add("Joe")
  #   material.name = materials.unique_name('Jeff')
  #
  # @note Since SketchUp 2018 this method will raise an +ArgumentError+ if the
  #   name is not unique.
  #
  # @param [String] str
  #   the new material name
  #
  # @raise [ArgumentError] if the name is not unique to the model.
  #   (Added in SU2018)
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def name=(str)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.normal_enabled = true
  #
  # @param [Boolean] enabled
  #
  # @raise [ArgumentError] if the normal texture is not set before enabling normal mapping.
  #
  # @see #normal_enabled?
  #
  # @see #normal_texture
  #
  # @see #normal_texture=
  #
  # @see #normal_scale
  #
  # @see #normal_scale=
  #
  # @see #normal_style
  #
  # @see #normal_style=
  #
  # @version SketchUp 2025.0.2
  def normal_enabled=(enabled)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("Material")
  #   material.normal_enabled?
  #   # > false
  #
  # @return [Boolean]
  #
  # @see #normal_enabled=
  #
  # @see #normal_texture
  #
  # @see #normal_texture=
  #
  # @see #normal_scale
  #
  # @see #normal_scale=
  #
  # @see #normal_style
  #
  # @see #normal_style=
  #
  # @version SketchUp 2025.0
  def normal_enabled?
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.normal_texture = 'path/to/normal_texture.png'
  #   material.normal_scale
  #   # > 1.0
  #
  # @return [Float] A value larger than or equal to +0.0+.
  #
  # @see #normal_enabled?
  #
  # @see #normal_texture
  #
  # @see #normal_texture=
  #
  # @see #normal_style
  #
  # @see #normal_style=
  #
  # @version SketchUp 2025.0
  def normal_scale
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.normal_texture = 'path/to/normal_texture.png'
  #   material.normal_scale = 1.0
  #
  # @param [Float] scale
  #   A value larger than or equal to +0.0+.
  #
  # @see #normal_enabled?
  #
  # @see #normal_texture
  #
  # @see #normal_texture=
  #
  # @see #normal_style
  #
  # @see #normal_style=
  #
  # @version SketchUp 2025.0
  def normal_scale=(scale)
  end

  # {Material Normal Styles}[#normal_style_summary]:
  #
  # - {NORMAL_STYLE_OPENGL}
  # - {NORMAL_STYLE_DIRECTX}
  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.normal_texture = 'path/to/normal_texture.png'
  #   material.normal_style
  #   # > Sketchup::Material::NORMAL_STYLE_OPENGL
  #
  # @return [Integer] One of +Sketchup::Material::NORMAL_STYLE_*+ values.
  #
  # @see #normal_enabled?
  #
  # @see #normal_texture
  #
  # @see #normal_texture=
  #
  # @see #normal_scale
  #
  # @see #normal_scale=
  #
  # @version SketchUp 2025.0
  def normal_style
  end

  # {Material Normal Styles}[#normal_style_summary]:
  #
  # - {NORMAL_STYLE_OPENGL}
  # - {NORMAL_STYLE_DIRECTX}
  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.normal_texture = 'path/to/normal_texture.png'
  #   material.normal_style = Sketchup::Material::NORMAL_STYLE_DIRECTX
  #
  # @param [Integer] style
  #
  # @see #normal_enabled?
  #
  # @see #normal_texture
  #
  # @see #normal_texture=
  #
  # @see #normal_scale
  #
  # @see #normal_scale=
  #
  # @version SketchUp 2025.0
  def normal_style=(style)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.normal_texture = 'path/to/normal_texture.png'
  #   material.normal_texture
  #   # > #<Sketchup::Texture>
  #
  # @return [Sketchup::Texture]
  #
  # @see #normal_enabled?
  #
  # @see #normal_scale
  #
  # @see #normal_scale=
  #
  # @see #normal_style
  #
  # @see #normal_style=
  #
  # @version SketchUp 2025.0
  def normal_texture
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.texture = 'path/to/texture.png'
  #   material.normal_texture = 'path/to/normal_texture.png'
  #
  # @overload normal_texture=(image_path)
  #
  #   @param [String] image_path
  #
  # @overload normal_texture=(image_rep)
  #
  #   @param [Sketchup::ImageRep] image_rep
  #
  # @overload normal_texture=(texture)
  #
  #   Copies another texture to this texture.
  #   @param [Sketchup::Texture] texture
  #
  # @raise [ArgumentError] if the image data of the texture is invalid or corrupt.
  #
  # @raise [ArgumentError] if the image data is not 24 bits per pixels or higher.
  #
  # @see #normal_enabled?
  #
  # @see #normal_scale
  #
  # @see #normal_scale=
  #
  # @see #normal_style
  #
  # @see #normal_style=
  #
  # @version SketchUp 2025.0
  def normal_texture=(texture)
  end

  # The {#owner_type} method is used to determine what owns the material.
  #
  # {Material Owner Types}[#owner_type_constant_summary]:
  #
  # - {Sketchup::Material::OWNER_MANAGER}
  # - {Sketchup::Material::OWNER_IMAGE}
  # - {Sketchup::Material::OWNER_LAYER}
  #
  # @return [Integer]
  #
  # @version SketchUp 2019.2
  def owner_type
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.roughness_enabled = true
  #
  # @param [Boolean] enabled
  #
  # @see #roughness_texture
  #
  # @see #roughness_texture=
  #
  # @see #roughness_factor
  #
  # @see #roughness_factor=
  #
  # @version SketchUp 2025.0
  def roughness_enabled=(enabled)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("Material")
  #   material.roughness_enabled?
  #   # > false
  #
  # @return [Boolean]
  #
  # @see #roughness_texture
  #
  # @see #roughness_texture=
  #
  # @see #roughness_factor
  #
  # @see #roughness_factor=
  #
  # @version SketchUp 2025.0
  def roughness_enabled?
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.roughness_enabled = true
  #   material.roughness_factor
  #   # > 1.0
  #
  # @return [Float] A value between +0.0+ and +1.0+.
  #
  # @see #roughness_enabled?
  #
  # @see #roughness_enabled=
  #
  # @see #roughness_texture
  #
  # @see #roughness_texture=
  #
  # @version SketchUp 2025.0
  def roughness_factor
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.roughness_enabled = true
  #   material.roughness_factor = 1.0
  #
  # @param [Float] factor
  #   A value between +0.0+ and +1.0+.
  #
  # @see #roughness_enabled?
  #
  # @see #roughness_enabled=
  #
  # @see #roughness_texture
  #
  # @see #roughness_texture=
  #
  # @version SketchUp 2025.0
  def roughness_factor=(factor)
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.roughness_enabled = true
  #   material.roughness_texture
  #   # > nil
  #
  # @return [Sketchup::Texture]
  #
  # @see #roughness_enabled?
  #
  # @see #roughness_enabled=
  #
  # @see #roughness_factor
  #
  # @see #roughness_factor=
  #
  # @version SketchUp 2025.0
  def roughness_texture
  end

  #
  # @example
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.texture = 'path/to/texture.png'
  #   material.roughness_texture = 'path/to/roughness_texture.png'
  #
  # @overload roughness_texture=(image_path)
  #
  #   @param [String] image_path
  #
  # @overload roughness_texture=(image_rep)
  #
  #   @param [Sketchup::ImageRep] image_rep
  #
  # @overload roughness_texture=(texture)
  #
  #   Copies another texture to this texture.
  #   @param [Sketchup::Texture] texture
  #
  # @raise [ArgumentError] if the image data of the texture is invalid or corrupt.
  #
  # @see #roughness_enabled?
  #
  # @see #roughness_enabled=
  #
  # @see #roughness_factor
  #
  # @see #roughness_factor=
  #
  # @version SketchUp 2025.0
  def roughness_texture=(texture)
  end

  # The {#save_as} method is used to write a material to a SKM file.
  #
  # @example
  #   filename = File.join(Sketchup.temp_dir, 'su_test.skm')
  #   materials = Sketchup.active_model.materials
  #   material = materials.add("Hello World")
  #   material.color = 'red'
  #   material.save_as(filename)
  #
  # @note You must remember to append ".skm" to the filename as this will not be
  #   done automatically.
  #
  # @param [String] filename
  #   the path to the SKM file to load.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def save_as(filename)
  end

  # The {#texture} method retrieves the texture of the material.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.texture = 'path/to/metallic_texture.png'
  #   texture = material.texture
  #
  # @return [Sketchup::Texture, nil]
  #
  # @version SketchUp 6.0
  def texture
  end

  # The {#texture=} method sets the texture for the material.
  #
  # Setting the texture to +nil+ will turn remove it and the material will use
  # {#color}.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   material.texture = 'path/to/metallic_texture.png'
  #
  # @overload texture=(filename)
  #
  #   @param [String] filename
  #     The file path to the texture the material should use.
  #
  # @overload texture=(properties)
  #
  #   @param [Array(String, Length, Length)] properties
  #     An array with the texture file path and optionally a width and height
  #     which sets {Sketchup::Texture#width} and {Sketchup::Texture#height}.
  #
  # @overload texture=(properties)
  #
  #   @param [Array(String, Length)] properties
  #     An array with the texture file path and optionally a size
  #     which sets {Sketchup::Texture#width} and {Sketchup::Texture#height}.
  #
  # @overload texture=(image_rep)
  #
  #   @version SketchUp 2018
  #   @param [Sketchup::ImageRep] image_rep The pixel data representing the
  #     texture.
  #
  # @version SketchUp 6.0
  def texture=(arg)
  end

  # The {#use_alpha?} method tells if the material uses transparency. It uses
  # some tolerance checking to account for floating point precision noise.
  #
  # @example
  #   material = Sketchup.active_model.materials.add('Example')
  #   material.use_alpha?
  #   # > false
  #
  #   material.alpha = 0.5
  #   material.use_alpha?
  #   # > true
  #
  # @note that this is not affected by the alpha value of the {#color} object.
  #   Only the {#alpha} value will make this method return +true+.
  #
  # @return [Boolean]
  #
  # @see #alpha
  #
  # @see #alpha=
  #
  # @version SketchUp 6.0
  def use_alpha?
  end

  # {Material Workflows}[#workflow_constant_summary]:
  #
  # - {WORKFLOW_CLASSIC}
  # - {WORKFLOW_PBR_METALLIC_ROUGHNESS}
  #
  # When the workflow returns +WORKFLOW_PBR_METALLIC_ROUGHNESS+ the properties
  # listed under {PBR Metallic Roughness Workflow}[#pbr_metallic_roughness_workflow]
  # are relevant.
  #
  # @example Classic material
  #   material = Sketchup.active_model.materials.add("Material")
  #   workflow = material.workflow
  #   # > workflow == Sketchup::Material::WORKFLOW_CLASSIC
  #
  # @example PBR material
  #   material = Sketchup.active_model.materials.add("PBR Material")
  #   material.metalness_enabled = true # Or any of the other PBR properties.
  #   workflow = material.workflow
  #   # > workflow == Sketchup::Material::WORKFLOW_PBR_METALLIC_ROUGHNESS
  #
  # @return [Integer] One of +Sketchup::Material::WORKFLOW_*+ values.
  #
  # @version SketchUp 2025.0
  def workflow
  end

  # The {#write_thumbnail} method writes a bitmap thumbnail to the given file name.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.materials.each { |material|
  #     thumbnail_file = File.join(Sketchup.temp_dir, "#{material.display_name}.png")
  #     material.write_thumbnail(thumbnail_file, 128)
  #   }
  #
  # @param [String] path
  #   The file path for the thumbnail.
  #
  # @param [Integer] max_size
  #   The maximum width or height of the generated image.
  #
  # @return [Boolean, nil] +true+ if successful, +false+ if unsuccessful.
  #   +nil+ if arguments are invalid.
  #
  # @version SketchUp 8.0 M1
  def write_thumbnail(path, max_size)
  end

end

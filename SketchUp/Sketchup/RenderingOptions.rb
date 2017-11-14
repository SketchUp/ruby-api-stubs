# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The RenderingOptions class contains method to extract the rendering
# information for a model. The majority of the rendering information returned
# exists in the Styles dialog. The following
# rendering information keys are maintained in SketchUp:
#
# - +BackgroundColor+
# - +BandColor+
# - +ConstructionColor+
# - +DepthQueWidth+
# - +DisplayColorByLayer+
# - +DisplayFog+
# - +DisplayInstanceAxes+
# - +DisplayWatermarks+
# - +DrawDepthQue+
# - +DrawGround+
# - +DrawHidden+
# - +DrawHorizon+
# - +DrawLineEnds+
# - +DrawProfilesOnly+
# - +DrawSilhouettes+
# - +DrawUnderground+
# - +EdgeColorMode+
# - +EdgeDisplayMode+
# - +EdgeType+
# - +ExtendLines+
# - +FaceBackColor+
# - +FaceColorMode+
# - +FaceFrontColor+
# - +FogColor+
# - +FogEndDist+
# - +FogStartDist+
# - +FogUseBkColor+
# - +ForegroundColor+
# - +GroundColor+
# - +GroundTransparency+
# - +HideConstructionGeometry+
# - +HighlightColor+
# - +HorizonColor+
# - +InactiveHidden+
# - +InstanceHidden+
# - +JitterEdges+
# - +LineEndWidth+
# - +LineExtension+
# - +LockedColor+
# - +MaterialTransparency+
# - +ModelTransparency+
# - +RenderMode+
# - +SectionActiveColor+
# - +SectionCutWidth+
# - +SectionDefaultCutColor+
# - +SectionInactiveColor+
# - +ShowViewName+
# - +SilhouetteWidth+
# - +SkyColor+
# - +Texture+
# - +TransparencySort+ SketchUp 2017 treats Medium transparency as Faster.
#
# Added in SketchUp 7:
# - +DisplayDims+
# - +DisplaySketchAxes+
# - +DisplayText+
#
# Added in SketchUp 8:
# - +InactiveFade+
# - +InstanceFade+
#
# Added in SketchUp 2014:
# - +DisplaySectionPlanes+
#
# Added in SketchUp 2015:
# - +DisplaySectionCuts+
# - +DrawBackEdges+
# - +SectionCutDrawEdges+
#
# Added in SketchUp 2018:
# - +SectionCutFilled+
# - +SectionDefaultFillColor+
#
# @version SketchUp 6.0
class Sketchup::RenderingOptions < Sketchup::Entity

  # Includes

  include Enumerable

  # Constants

  ROPAssign = nil # Stub value.
  ROPDrawHidden = nil # Stub value.
  ROPEditComponent = nil # Stub value.
  ROPSetBackgroundColor = nil # Stub value.
  ROPSetConstructionColor = nil # Stub value.
  ROPSetDepthQueEdges = nil # Stub value.
  ROPSetDepthQueWidth = nil # Stub value.
  ROPSetDisplayColorByLayer = nil # Stub value.
  ROPSetDisplayDims = nil # Stub value.
  ROPSetDisplayFog = nil # Stub value.
  ROPSetDisplayInstanceAxes = nil # Stub value.
  ROPSetDisplaySketchAxes = nil # Stub value.
  ROPSetDisplayText = nil # Stub value.
  ROPSetDisplayWatermarks = nil # Stub value.
  ROPSetDrawBackEdges = nil # Stub value.
  ROPSetDrawGround = nil # Stub value.
  ROPSetDrawHorizon = nil # Stub value.
  ROPSetDrawUnderground = nil # Stub value.
  ROPSetEdgeColorMode = nil # Stub value.
  ROPSetEdgeDisplayMode = nil # Stub value.
  ROPSetEdgeType = nil # Stub value.
  ROPSetExtendEdges = nil # Stub value.
  ROPSetExtendLines = nil # Stub value.
  ROPSetFaceColor = nil # Stub value.
  ROPSetFaceColorMode = nil # Stub value.
  ROPSetFogColor = nil # Stub value.
  ROPSetFogDist = nil # Stub value.
  ROPSetFogHint = nil # Stub value.
  ROPSetFogUseBkColor = nil # Stub value.
  ROPSetForegroundColor = nil # Stub value.
  ROPSetGroundColor = nil # Stub value.
  ROPSetGroundTransparency = nil # Stub value.
  ROPSetHideConstructionGeometry = nil # Stub value.
  ROPSetHighlightColor = nil # Stub value.
  ROPSetJitterEdges = nil # Stub value.
  ROPSetLineEndEdges = nil # Stub value.
  ROPSetLineEndWidth = nil # Stub value.
  ROPSetLineExtension = nil # Stub value.
  ROPSetLockedColor = nil # Stub value.
  ROPSetMaterialTransparency = nil # Stub value.
  ROPSetModelTransparency = nil # Stub value.
  ROPSetPhotomatchBackgroundOpacity = nil # Stub value.
  ROPSetPhotomatchDrawBackground = nil # Stub value.
  ROPSetPhotomatchDrawOverlay = nil # Stub value.
  ROPSetPhotomatchOverlayOpacity = nil # Stub value.
  ROPSetProfileEdges = nil # Stub value.
  ROPSetProfileWidth = nil # Stub value.
  ROPSetProfilesOnlyEdges = nil # Stub value.
  ROPSetRenderMode = nil # Stub value.
  ROPSetSectionActiveColor = nil # Stub value.
  ROPSetSectionCutFilled = nil # Stub value.
  ROPSetSectionCutWidth = nil # Stub value.
  ROPSetSectionDefaultCutColor = nil # Stub value.
  ROPSetSectionDefaultFillColor = nil # Stub value.
  ROPSetSectionDisplayMode = nil # Stub value.
  ROPSetSectionInactiveColor = nil # Stub value.
  ROPSetSkyColor = nil # Stub value.
  ROPSetTexture = nil # Stub value.
  ROPSetTransparencyObsolete = nil # Stub value.
  ROPSetXRayOpacity = nil # Stub value.
  ROPTransparencySortMethod = nil # Stub value.

  # Class Methods

  # The each_key method iterates through all of the rendering options keys.
  #
  # @example
  #   Sketchup.active_model.rendering_options.each_key { |key|
  #     puts key
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [key] Variable to hold each key as they are found.
  def self.each_key
  end

  # The keys method returns an array with all of the attribute keys.
  #
  # @example
  #   keys = Sketchup.active_model.rendering_options.keys
  #
  # @return [Array<String>] an array of keys
  #
  # @version SketchUp 6.0
  def self.keys
  end

  # Instance Methods

  # The {#[]} method is used to get the value of a rendering option.
  #
  # @example
  #   result = Sketchup.active_model.rendering_options["DisplayInstanceAxes"]
  #
  # @param [String] key
  #   The key of the rendering option value to get.
  #
  # @return [Object, nil]
  #
  # @version SketchUp 6.0
  def [](key)
  end

  # The set value []= method is used to set the value in the array of
  # rendering options.
  #
  # @example
  #   Sketchup.active_model.rendering_options["DisplayInstanceAxes"] = false
  #
  # @param [String] key
  #   The key of the rendering option value to set.
  #
  # @param [Object] value
  #   The value to be set.
  #
  # @return [Object] the value that was set
  #
  # @version SketchUp 6.0
  def []=(key, value)
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   observer = Sketchup::RenderingOptionsObserver.new # Dummy observer.
  #   result = Sketchup.active_model.rendering_options.add_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The {#count} method is inherited from the +Enumerable+ mix-in module.
  #
  # @example
  #   options = Sketchup.active_model.rendering_options
  #   number = options.count
  #
  # @return [Integer]
  #
  # @version SketchUp 2014
  def count
  end

  # The {#each} method iterates through all of the rendering options key/value
  # pairs.
  #
  # @example
  #   Sketchup.active_model.rendering_options.each { |key, value|
  #     puts "#{key} : #{value}"
  #   }
  #
  # @return [nil]
  #
  # @see #each_pair
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value]
  #
  # @yieldparam [Object] value
  #   The value of each pair found.
  #
  # @yieldparam [String] key
  #   The key of each pair found.
  def each
  end

  # The each_key method iterates through all of the rendering options keys.
  #
  # @example
  #   Sketchup.active_model.rendering_options.each_key { |key|
  #     puts key
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [key] Variable to hold each key as they are found.
  def each_key
  end

  # The {#each_pair} method is an alias for {#each}.
  #
  # @example
  #   Sketchup.active_model.rendering_options.each_pair { |key, value|
  #     puts "#{key} : #{value}"
  #   }
  #
  # @return [nil]
  #
  # @see #each
  #
  # @version SketchUp 6.0
  def each_pair
  end

  # The keys method returns an array with all of the attribute keys.
  #
  # @example
  #   keys = Sketchup.active_model.rendering_options.keys
  #
  # @return [Array<String>] an array of keys
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method returns the number of options in the rendering options
  # collection.
  #
  # @example
  #   options = Sketchup.active_model.rendering_options
  #   number = options.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2014
  def length
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   observer = Sketchup::RenderingOptionsObserver.new # Dummy observer.
  #   options = Sketchup.active_model.rendering_options
  #   options.add_observer(observer)
  #   result = options.remove_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#size} method is an alias for {#length}.
  #
  # @example
  #   options = Sketchup.active_model.rendering_options
  #   number = options.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

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
  ROPSetSectionCutWidth = nil # Stub value.
  ROPSetSectionDefaultCutColor = nil # Stub value.
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
  # @return nil
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
  # @return keys - an array of keys
  #
  # @version SketchUp 6.0
  def self.keys
  end

  # Instance Methods

  # The set value [] method is used to get the value in the array of
  # rendering options.
  #
  # @example 
  #   result = Sketchup.active_model.rendering_options["DisplayInstanceAxes"]
  #
  # @param key
  #   The key of the rendering option value to set.
  #
  # @return value - the value that was found.
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
  # @param key
  #   The key of the rendering option value to set.
  #
  # @param value
  #   The value to be set.
  #
  # @return value - the value that was set
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
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
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
  # @return integer
  #
  # @version SketchUp 2014
  def count
  end

  # An alias for each. See RenderingOptions.each.
  #
  # @example 
  #   Sketchup.active_model.rendering_options.each_pair { |key, value|
  #     puts "#{key} : #{value}"
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def each
  end

  # The each_key method iterates through all of the rendering options keys.
  #
  # @example 
  #   Sketchup.active_model.rendering_options.each_key { |key|
  #     puts key
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key] Variable to hold each key as they are found.
  def each_key
  end

  # An alias for each. See RenderingOptions.each.
  #
  # @example 
  #   Sketchup.active_model.rendering_options.each_pair { |key, value|
  #     puts "#{key} : #{value}"
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def each_pair
  end

  # The keys method returns an array with all of the attribute keys.
  #
  # @example 
  #   keys = Sketchup.active_model.rendering_options.keys
  #
  # @return keys - an array of keys
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method returns the number of options in the rendering options
  # collection
  # 
  # The {#size} method is an alias for {#length}.
  #
  # @example 
  #   options = Sketchup.active_model.rendering_options
  #   number = options.length
  #
  # @return integer
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
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#length} method returns the number of options in the rendering options
  # collection
  # 
  # The {#size} method is an alias for {#length}.
  #
  # @example 
  #   options = Sketchup.active_model.rendering_options
  #   number = options.length
  #
  # @return integer
  #
  # @version SketchUp 2014
  def size
  end

end

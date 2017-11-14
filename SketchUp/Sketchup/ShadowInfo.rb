# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The ShadowInfo class contains method to extract the shadow information for a
# model. The majority of the shadow information returned exists in the Model
# Info > Location and Model Info > Shadows dialogs inside SketchUp.
#
# The following shadow information keys are maintained in SketchUp:
#
# - +City+ (in Model Info > Geo-location > Set Manual Location...) Note that 'City' is called 'Location' in the UI
# - +Country+ (in Model Info > Geo-location > Set Manual Location...)
# - +Dark+ (in Window > Shadows)
# - +DayOfYear+
# - +DaylightSavings+
# - +DisplayNorth+ (in View > Toolbars > Solar North) Note that 'Toolbar' is called 'Tool Palettes' on Mac
# - +DisplayOnAllFaces+ (in Window > Shadows)
# - +DisplayOnGroundPlane+ (in Window > Shadows)
# - +DisplayShadows+ (in Window > Shadows)
# - +EdgesCastShadows+ (in Window > Shadows)
# - +Latitude+ (in Model Info > Geo-location > Set Manual Location...)
# - +Light+ (in Window > Shadows)
# - +Longitude+ (in Model Info > Geo-location > Set Manual Location...)
# - +North+ Angle (in View > Toolbars > Solar North) Note that 'Toolbar' is called 'Tool Palettes' on Mac
# - +ShadowTime+ (in Window > Shadows)
# - +ShadowTime_time_t+ (ShadowTime in Epoch time)
# - +SunDirection+ (Generated based on ShadowTime)
# - +SunRise+ (Generated based on ShadowTime)
# - +SunRise_time_t+ (SunRise in Epoch time)
# - +SunSet+ (Generated based on ShadowTime)
# - +SunSet_time_t+ (SunSet in Epoch time)
# - +TZOffset+ (in Window > Shadows)
# - +UseSunForAllShading+ (in Window > Shadows)
#
# You access the ShadowInfo object by calling Model.shadow_info:
#
# @example
#   model = Sketchup.active_model
#   shadowinfo = model.shadow_info
#   UI.messagebox("My city is: " + shadowinfo["City"].to_s)
#
# @version SketchUp 6.0
class Sketchup::ShadowInfo < Sketchup::Entity

  # Includes

  include Enumerable

  # Class Methods

  # The each_key method iterates through all of the shadow information keys.
  #
  # @example
  #   shadowinfo.each_key { |key| UI.messagebox(key) }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [key] Variable to hold each key as they are found.
  def self.each_key
  end

  # The keys method is a class method that returns an array with all of the
  # attribute keys
  #
  # @example
  #   keys = Sketchup::ShadowInfo.keys
  #
  # @return [Array<String>] an array of keys
  #
  # @version SketchUp 6.0
  def self.keys
  end

  # Instance Methods

  # The [] method retrieves a value from the array of keys
  #
  # @example
  #   value = shadowinfo["key"]
  #
  # @param [String] key
  #   The key of the shadowinfo value to retrieve.
  #
  # @return [Object, nil] the value that is retrieved.
  #
  # @version SketchUp 6.0
  def [](key)
  end

  # The set value []= method is used to set the value in the array of shadow
  # info options.
  #
  # @example
  #   model = Sketchup.active_model
  #   shadowinfo = model.shadow_info
  #   value = shadowinfo["City"]
  #   UI.messagebox value
  #   value = shadowinfo["City"]="Denver, CO"
  #   UI.messagebox value
  #
  # @param [String] key
  #   The key of the shadowinfo value to set.
  #
  # @param [Object] value
  #   The value to be set.
  #
  # @return [Object] the value that was set if successful, or false
  #   if unsuccessful.
  #
  # @version SketchUp 6.0
  def []=(key, value)
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   status = object.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The count method is inherited from the Enumerable mix-in module.
  #
  # @example
  #   shadow_info = Sketchup.active_model.shadow_info
  #   number = shadow_info.count
  #
  # @return [Integer]
  #
  # @version SketchUp 2014
  def count
  end

  # The {#each} method iterates through all of the shadow information key/value
  # pairs.
  #
  # @example
  #   model = Sketchup.active_model
  #   shadow_info = model.shadow_info
  #   shadow_info.each { |key, value|
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
  #
  # @yieldparam [String] key
  def each
  end

  # The each_key method iterates through all of the shadow information keys.
  #
  # @example
  #   shadowinfo.each_key { |key| UI.messagebox(key) }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [key] Variable to hold each key as they are found.
  def each_key
  end

  # The #{each_pair} method is an alias for {#each}.
  #
  # @example
  #   model = Sketchup.active_model
  #   shadow_info = model.shadow_info
  #   shadow_info.each_pair { |key, value|
  #     puts "#{key} : #{value}"
  #   }
  #
  # @return [nil]
  #
  # @see #each
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value]
  #
  # @yieldparam [String] key
  #
  # @yieldparam [Object] value
  def each_pair
  end

  # The keys method is a class method that returns an array with all of the
  # attribute keys
  #
  # @example
  #   keys = Sketchup::ShadowInfo.keys
  #
  # @return [Array<String>] an array of keys
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method returns the number of options in the shadow options
  # collection
  #
  # @example
  #   shadow_info = Sketchup.active_model.shadow_info
  #   number = shadow_info.length
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
  #   status = object.remove_observer observer
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
  #   shadow_info = Sketchup.active_model.shadow_info
  #   number = shadow_info.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

end

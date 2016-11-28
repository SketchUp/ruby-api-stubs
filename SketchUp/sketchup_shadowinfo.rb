# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::ShadowInfo < Sketchup::Entity

  # Includes

  include Enumerable

  # Class Methods

  # The each_key method iterates through all of the shadow information keys.
  #
  # @example 
  #   shadowinfo.each_key { |key| UI.messagebox(key) }
  #
  # @return nil
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
  # @return keys - an array of keys
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
  # @param key
  #   The key of the shadowinfo value to retrieve.
  #
  # @return value - the value that is retrieved.
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
  # @param key
  #   The key of the shadowinfo value to set.
  #
  # @param value
  #   The value to be set.
  #
  # @return value - the value that was set if successful, or false
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
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
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
  # @return integer
  #
  # @version SketchUp 2014
  def count
  end

  # An alias for each. See ShadowInfo.each.
  #
  # @example 
  #   model = Sketchup.active_model
  #   shadowinfo = model.shadow_info
  #   shadowinfo.each_pair { |key, value|
  #     UI.messagebox(key.to_s + '=' + value.to_s)
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value] 
  #
  # @yieldparam key
  #   A variables that will hold each key as it is found.
  #
  # @yieldparam value
  #   A variables that will hold each value as it is found.
  def each
  end

  # The each_key method iterates through all of the shadow information keys.
  #
  # @example 
  #   shadowinfo.each_key { |key| UI.messagebox(key) }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key] Variable to hold each key as they are found.
  def each_key
  end

  # An alias for each. See ShadowInfo.each.
  #
  # @example 
  #   model = Sketchup.active_model
  #   shadowinfo = model.shadow_info
  #   shadowinfo.each_pair { |key, value|
  #     UI.messagebox(key.to_s + '=' + value.to_s)
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value] 
  #
  # @yieldparam key
  #   A variables that will hold each key as it is found.
  #
  # @yieldparam value
  #   A variables that will hold each value as it is found.
  def each_pair
  end

  # The keys method is a class method that returns an array with all of the
  # attribute keys
  #
  # @example 
  #   keys = Sketchup::ShadowInfo.keys
  #
  # @return keys - an array of keys
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method returns the number of options in the shadow options
  # collection
  # 
  # The {#size} method is an alias for {#length}.
  #
  # @example 
  #   shadow_info = Sketchup.active_model.shadow_info
  #   number = shadow_info.length
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
  #   status = object.remove_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#length} method returns the number of options in the shadow options
  # collection
  # 
  # The {#size} method is an alias for {#length}.
  #
  # @example 
  #   shadow_info = Sketchup.active_model.shadow_info
  #   number = shadow_info.length
  #
  # @return integer
  #
  # @version SketchUp 2014
  def size
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# An OptionsProvider class provides various kinds of options on a Model. You
# get an OptionsProvider from the OptionsManager. The options are given as
# name/value pairs.
#
# @version SketchUp 6.0
class Sketchup::OptionsProvider

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to get a value by name or index of the key.
  #
  # @example
  #   model = Sketchup.active_model
  #   manager = model.options
  #   provider = manager[0]
  #   # Retrieves the provider at index 1
  #   option = provider[1]
  #
  # @overload [](index)
  #
  #   @param index         The index for a specific key.
  #   @return              value - the value if successful
  #
  # @overload [](name)
  #
  #   @param name          The name of the specific key.
  #   @return              value - the value if successful
  #
  # @version SketchUp 6.0
  def [](arg)
  end

  # The []= method is used to set the value of a specific key.
  #
  # Creates a new attribute for the given key if needed.
  #
  # @example
  #   option = provider[1]=10
  #
  # @param key
  #   The valid key.
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

  #
  # @example
  #   optionsprovider = Sketchup.active_model.options['UnitsOptions']
  #   number = optionsprovider.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The {#each} method is used to iterate through all of the options.
  #
  # @example
  #   model = Sketchup.active_model.options
  #   provider = model.options['UnitsOptions']
  #   provider.each { |key, value| puts "#{key} = #{value}" }
  #
  # @return [nil]
  #
  # @see #each_key
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

  # The {#each_key} method is used to iterate through all of the attribute keys.
  #
  # @example
  #   provider.each_key { |key| UI.messagebox key }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [key]
  #
  # @yieldparam [String] key
  def each_key
  end

  # The {#each} method is used to iterate through all of the options.
  #
  # @example
  #   model = Sketchup.active_model.options
  #   provider = model.options['UnitsOptions']
  #   provider.each { |key, value| puts "#{key} = #{value}" }
  #
  # @return [nil]
  #
  # @see #each_key
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value]
  #
  # @yieldparam [Object] value
  #
  # @yieldparam [String] key
  def each_pair
  end

  # The each_value method is used to iterate through all of the attribute
  # values.
  #
  # Throws an exception if there are no keys.
  #
  # @example
  #   provider.each_value { |value| UI.messagebox value }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [value] A variable that will hold each value as they are found.
  def each_value
  end

  # The {#has_key?} method is an alias for {#key?}.
  #
  # @example
  #   model = Sketchup.active_model.options
  #   provider = model.options['UnitsOptions']
  #   p provider.has_key?("LengthFormat")
  #
  # @param [String] name
  #   The name of the key you are looking for.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @see #key?
  #
  # @version SketchUp 6.0
  def has_key?(name)
  end

  # The {#key?} method is used to determine if the options provider has a
  # specific key.
  #
  # @example
  #   model = Sketchup.active_model.options
  #   provider = model.options['UnitsOptions']
  #   p provider.key?("LengthFormat")
  #
  # @param [String] name
  #   The name of the key you are looking for.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @see #has_key?
  #
  # @version SketchUp 6.0
  def key?(name)
  end

  # The keys method is used to retrieve an array with all of the attribute keys.
  #
  # @example
  #   keys = provider.keys
  #   key = keys[0]
  #   if (key)
  #     UI.messagebox key
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return keys - an array of keys within the options provider if
  #   successful
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method is an alias of {#size}.
  #
  # @example
  #   optionsprovider = Sketchup.active_model.options['UnitsOptions']
  #   number = optionsprovider.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2014
  def length
  end

  # The name method is used to retrieve the name of an options provider.
  #
  # @example
  #   name = provider.name
  #
  # @return name - the name of the options provider if successful
  #
  # @version SketchUp 6.0
  def name
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

  # The {#size} method is used to retrieve the size (number of elements) of an
  # options provider.
  #
  # @example
  #   optionsprovider = Sketchup.active_model.options['UnitsOptions']
  #   number = optionsprovider.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def size
  end

end

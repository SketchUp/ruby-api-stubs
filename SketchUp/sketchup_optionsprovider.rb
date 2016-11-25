# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

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
  # @return integer - the size of the options provider if
  #   successful
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through all of the attributes.
  # 
  # Throws an exception if there are no keys.
  # 
  # The {#each_pair} method is an alias of {#each}.
  #
  # @example 
  #   # Retrieves each key
  #   provider.each { |key, value| UI.messagebox key }
  #   # Retrieves each corresponding value
  #   provider.each { |key, value| UI.messagebox value }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value] Variables that will hold each key and value as they are
  #   found.
  def each
  end

  # The each_key method is used to iterate through all of the attribute keys.
  # 
  # Throws an exception if there are no keys.
  #
  # @example 
  #   provider.each_key { |key| UI.messagebox key }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key] A variable that will hold each key as they are found.
  def each_key
  end

  # The each method is used to iterate through all of the attributes.
  # 
  # Throws an exception if there are no keys.
  # 
  # The {#each_pair} method is an alias of {#each}.
  #
  # @example 
  #   # Retrieves each key
  #   provider.each { |key, value| UI.messagebox key }
  #   # Retrieves each corresponding value
  #   provider.each { |key, value| UI.messagebox value }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value] Variables that will hold each key and value as they are
  #   found.
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

  # The key? method is used to determine if the options provider has a specific
  # key. This method is the same as has_key? See also OptionsManager.has_key
  #
  # @example 
  #   status = provider.key? "name"
  #
  # @param name
  #   The name of the key you are looking for.
  #
  # @return status - true if the key exists, false if the key does
  #   not exist.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def has_key?(name)
  end

  # The key? method is used to determine if the options provider has a specific
  # key. This method is the same as has_key? See also OptionsManager.has_key
  #
  # @example 
  #   status = provider.key? "name"
  #
  # @param name
  #   The name of the key you are looking for.
  #
  # @return status - true if the key exists, false if the key does
  #   not exist.
  #
  # @return [Boolean] 
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

  # The {#size} method is used to retrieve the size (number of elements) of an
  # options provider.
  # 
  # The {#length} method is an alias of {#size}.
  #
  # @example 
  #   optionsprovider = Sketchup.active_model.options['UnitsOptions']
  #   number = optionsprovider.size
  #
  # @return integer - the size of the options provider if
  #   successful
  #
  # @version SketchUp 6.0
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
  # The {#length} method is an alias of {#size}.
  #
  # @example 
  #   optionsprovider = Sketchup.active_model.options['UnitsOptions']
  #   number = optionsprovider.size
  #
  # @return integer - the size of the options provider if
  #   successful
  #
  # @version SketchUp 6.0
  def size
  end

end

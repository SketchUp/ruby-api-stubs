# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::AttributeDictionary < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to retrieve the attribute with a given key.
  #
  # @example 
  #   model = Sketchup.active_model
  #   value = model.set_attribute "testdictionary", "test", 115
  #   attrdicts = model.attribute_dictionaries
  #   attrdict = attrdicts["testdictionary"]
  #   
  #   # value will contain 115
  #   value = attrdict["test"]
  #
  # @param key
  #   The name of the attribute.
  #
  # @return attribute - the attribute stored under your key, or
  #   nil if not found
  #
  # @version SketchUp 6.0
  def [](key)
  end

  # The set value ([]=) method is used to set the value of an attribute with a
  # given key.
  # 
  # Creates a new attribute for the given key if needed.
  #
  # @example 
  #   model = Sketchup.active_model
  #   value = model.set_attribute "testdictionary", "test", 110
  #   attrdicts = model.attribute_dictionaries
  #   attrdict = attrdicts["testdictionary"]
  #   value = attrdict["test2"] = 120
  #   if (value)
  #     UI.messagebox value
  #   end
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

  # The count method is inherited from the Enumerable mix-in module.
  #
  # @example 
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionary = model.attribute_dictionary('Example')
  #   number = dictionary.count
  #
  # @return [Integer] the size of the attribute dictionary.
  #
  # @version SketchUp 2014
  def count
  end

  # The delete_key method is used to delete an attribute with a given key.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # Gets an array of values
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   value = attrdict.delete_key("attr_one")
  #
  # @param key
  #   The key to be deleted.
  #
  # @return value - the value of the key
  #
  # @version SketchUp 6.0
  def delete_key(key)
  end

  # An alias for each. See AttributeDictionary.each.
  # 
  # Throws an exception if there are no keys.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # iterates through all attributes and prints the key to the screen
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   attrdict.each_pair { | key, value |
  #     UI.messagebox key.to_s + '=' + value.to_s
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value] @yieldparam key           The key of each attribute as it is found.
  #   @yieldparam value         The value of each attribute as it is found.
  def each
  end

  # The each_key method is used to iterate through all of the attribute keys.
  # This is the same method as AttributeDictionary.each.
  # 
  # Throws an exception if there are no keys.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # iterates through all attributes and prints the key to the screen
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   attrdict.each_key { | key | UI.messagebox key }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key] A variable that will hold each key as they are found.
  def each_key
  end

  # An alias for each. See AttributeDictionary.each.
  # 
  # Throws an exception if there are no keys.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # iterates through all attributes and prints the key to the screen
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   attrdict.each_pair { | key, value |
  #     UI.messagebox key.to_s + '=' + value.to_s
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value] @yieldparam key           The key of each attribute as it is found.
  #   @yieldparam value         The value of each attribute as it is found.
  def each_pair
  end

  # The keys method is used to retrieve an array with all of the attribute keys.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # Gets an array of keys
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   keys = attrdict.keys
  #
  # @return keys - an array of keys within the attribute dictionary
  #   if successful
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method is used to retrieve the size (number of elements) of an
  # attribute dictionary.
  # 
  # The {#size} method is an alias for {#length}.
  #
  # @example 
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionary = model.attribute_dictionary('Example')
  #   number = dictionary.length
  #
  # @return [Integer] the size of the attribute dictionary if
  #   successful
  #
  # @version SketchUp 6.0
  def length
  end

  # The name method is used to retrieve the name of an attribute dictionary.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # Show the name.
  #   UI.messagebox attrdict.name
  #
  # @return name - the name of the attribute dictionary if
  #   successful
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#length} method is used to retrieve the size (number of elements) of an
  # attribute dictionary.
  # 
  # The {#size} method is an alias for {#length}.
  #
  # @example 
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionary = model.attribute_dictionary('Example')
  #   number = dictionary.length
  #
  # @return [Integer] the size of the attribute dictionary if
  #   successful
  #
  # @version SketchUp 6.0
  def size
  end

  # The values method is used to retrieve an array with all of the attribute
  # values.
  #
  # @example 
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary "test_dict", create_if_nil
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #   
  #   # Gets an array of values
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   values = attrdict.values
  #
  # @return keys - an array of keys within the attribute dictionary
  #   if successful
  #
  # @version SketchUp 6.0
  def values
  end

end

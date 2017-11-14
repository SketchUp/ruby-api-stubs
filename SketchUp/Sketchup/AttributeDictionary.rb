# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The AttributeDictionary class allows you to attach arbitrary collections of
# attributes to a SketchUp entity. The attributes are defined by key/value
# pairs where the keys are strings.  An Entity or Model object can have any
# number of AttributeDictionary objects (see the AttributeDictionaries class).
#
# The Entity class is a popular parent class in SketchUp, meaning you can
# attach attribute dictionaries to almost anything, from geometric items
# like edges and faces and components to more conceptual things like pages
# or materials.
#
# @version SketchUp 6.0
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
  # @param [String] key
  #   The name of the attribute.
  #
  # @return [Object, nil] the attribute stored under your key, or
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
  # @param [String] key
  #   The valid key.
  #
  # @param [Boolean, Fixnum, Float, Length, nil, String, Time, Array, Geom::Point3d, Geom::Vector3d] value
  #   The value to be set.
  #
  # @return [Object, nil] the value that was set if successful, or false
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
  # @return [Integer]
  #
  # @version SketchUp 2014
  def count
  end

  # The delete_key method is used to delete an attribute with a given key.
  #
  # @example
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary("test_dict", create_if_nil)
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #
  #   # Delete a key/value pair and get the deleted value.
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   value = attrdict.delete_key("attr_one")
  #
  # @param [String] key
  #   The key to be deleted.
  #
  # @return [Object, nil] the value of the key
  #
  # @version SketchUp 6.0
  def delete_key(key)
  end

  # The {#each} method iterate through all of the attributes.
  #
  # @example
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary("test_dict", create_if_nil)
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #
  #   # Iterates through all attributes and prints the key to the screen.
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   attrdict.each { | key, value |
  #     puts "#{key} = #{value}"
  #   }
  #
  # @see #each_pair
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value]
  #
  # @yieldparam [Object] value
  #   The value of each attribute as it is found.
  #
  # @yieldparam [String] key
  #   The key of each attribute as it is found.
  def each
  end

  # The {#each_key} method is used to iterate through all of the attribute keys.
  #
  # @example
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary("test_dict", create_if_nil)
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #
  #   # iterates through all attributes and prints the key to the screen
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   attrdict.each_key { |key| puts key }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yieldparam [String] key
  #   The key of each attribute as it is found.
  def each_key
  end

  # The {#each_pair} method is an alias for {#each}.
  #
  # @example
  #   create_if_nil = true
  #   model = Sketchup.active_model
  #   attrdict = model.attribute_dictionary("test_dict", create_if_nil)
  #   attrdict["attr_one"] = "one"
  #   attrdict["attr_two"] = "two"
  #
  #   # iterates through all attributes and prints the key to the screen
  #   attrdict = model.attribute_dictionaries['test_dict']
  #   attrdict.each_pair { | key, value |
  #     puts "#{key} = #{value}"
  #   }
  #
  # @see #each
  #
  # @version SketchUp 6.0
  #
  # @yield [key, value]
  #
  # @yieldparam [Object] value
  #   The value of each attribute as it is found.
  #
  # @yieldparam [String] key
  #   The key of each attribute as it is found.
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
  # @return [Array<String>] an array of keys within the attribute dictionary
  #   if successful
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#length} method is used to retrieve the size (number of elements) of an
  # attribute dictionary.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionary = model.attribute_dictionary('Example')
  #   number = dictionary.length
  #
  # @return [Integer]
  #
  # @see #size
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
  # @return [String] the name of the attribute dictionary if
  #   successful
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#size} method is an alias of {#length}.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionary = model.attribute_dictionary('Example')
  #   number = dictionary.size
  #
  # @return [Integer]
  #
  # @see #length
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
  # @return [Array<Object>] an array of values within the attribute dictionary
  #   if successful
  #
  # @version SketchUp 6.0
  def values
  end

end

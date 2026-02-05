# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# This is the interface to a LayOut dictionary. A {Layout::Dictionary} wraps key/value pairs.
#
# @example
#   dict = Layout::Dictionary.new
#
# @version LayOut 2026.0
class Layout::Dictionary

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method retrieves the value for a given key.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary['test'] = 115
  #
  #   # value will contain 115
  #   value = dictionary["test"]
  #
  # @param [String] key
  #   The name of the attribute.
  #
  # @return [String, Boolean, Integer, Float, Layout::Dictionary, nil]
  #
  # @version LayOut 2026.0
  def [](key)
  end

  # The {#[]=} method sets a value for a given key.
  #
  # Creates a new dictionary entry for the given key if needed.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary['test'] = 110
  #   value = dictionary['test2'] = 120
  #   p value
  #
  # @param [String] key
  #   The valid key.
  #
  # @param [String, Boolean, Integer, Float, Hash, Layout::Dictionary, nil] value
  #
  # @version LayOut 2026.0
  def []=(key, value)
  end

  # The {#delete_key} method deletes a key/value pair from the dictionary.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attr_one"] = "one"
  #   dictionary["attr_two"] = "two"
  #
  #   # Delete a key/value pair and get the deleted value.
  #   value = dictionary.delete_key("attr_one")
  #
  # @param [String] key
  #   The key to be deleted.
  #
  # @return [String, Boolean, Integer, Float, Layout::Dictionary, nil]
  #
  # @version LayOut 2026.0
  def delete_key(key)
  end

  # The {#each_pair} method is an alias for {#each}.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attr_one"] = "one"
  #   dictionary["attr_two"] = "two"
  #
  #   # iterates through all attributes and prints the key to the screen
  #   dictionary.each_pair { | key, value |
  #     puts "#{key} = #{value}"
  #   }
  #
  # @see #each
  #
  # @version LayOut 2026.0
  #
  # @yield [key, value]
  #
  # @yieldparam [String] key
  #
  # @yieldparam [Object] value
  def each
  end

  # The {#each_key} method iterates through all of the dictionary keys.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attr_one"] = "one"
  #   dictionary["attr_two"] = "two"
  #
  #   # iterates through all attributes and prints the key to the screen
  #   dictionary.each_key { |key| puts key }
  #
  # @version LayOut 2026.0
  #
  # @yieldparam [String] key
  def each_key
  end

  # The {#each_pair} method is an alias for {#each}.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attr_one"] = "one"
  #   dictionary["attr_two"] = "two"
  #
  #   # iterates through all attributes and prints the key to the screen
  #   dictionary.each_pair { | key, value |
  #     puts "#{key} = #{value}"
  #   }
  #
  # @see #each
  #
  # @version LayOut 2026.0
  #
  # @yield [key, value]
  #
  # @yieldparam [String] key
  #
  # @yieldparam [Object] value
  def each_pair
  end

  # The {#empty?} method checks if the dictionary is empty.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attribute_one"] = "1"
  #   dictionary.empty? # Returns false
  #
  # @return [Boolean]
  #
  # @version LayOut 2026.0
  def empty?
  end

  # The {#initialize} method creates a new {Layout::Dictionary}.
  #
  # @example
  #   doc = Layout::Dictionary.new
  #   doc2 = Layout::Dictionary.new({"String key" => "string value", "Number key" => 42})
  #
  # @overload initialize
  #
  #   @return [Layout::Dictionary]
  #
  # @overload initialize(dict)
  #
  #   @param [Hash, Layout::Dictionary] hash
  #   @return [Layout::Dictionary]
  #
  # @raise [ArgumentError] if dict isn't a dictionary or hash
  #
  # @version LayOut 2026.0
  def initialize(*args)
  end

  # The {#keys} method retrieves an array with all of the dictionary keys.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attr_one"] = "one"
  #   dictionary["attr_two"] = "two"
  #
  #   # Gets an array of keys
  #   keys = dictionary.keys
  #
  # @return [Array<String>] an array of keys within the dictionary if successful
  #
  # @version LayOut 2026.0
  def keys
  end

  # The {#length} method retrieves the size (number of elements) of a dictionary.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary['Hello'] = 'World'
  #   number = dictionary.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version LayOut 2026.0
  def length
  end

  # The {#length} method retrieves the size (number of elements) of a dictionary.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary['Hello'] = 'World'
  #   number = dictionary.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version LayOut 2026.0
  def size
  end

  # The {#values} method retrieves an array with all of the dictionary values.
  #
  # @example
  #   dictionary = Layout::Dictionary.new
  #   dictionary["attr_one"] = "one"
  #   dictionary["attr_two"] = "two"
  #
  #   # Gets an array of values
  #   values = dictionary.values
  #
  # @return [Array<Object>] an array of values within the dictionary if successful
  #
  # @version LayOut 2026.0
  def values
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The AttributeDictionaries class is a collection of all of the
# AttributeDictionary objects that are attached to a given Entity object.
#
# The Entity class is a popular parent class in SketchUp, meaning you can
# attach AttributeDictionaries to almost anything, from geometric items
# like edges and faces and components to more conceptual things like pages
# or materials.
#
# You access this class not by performing an AttributeDictionaries.new but
# by grabbing a handle from an existing entity.
#
# @example
#   # Grab the first entity from the model.
#   my_layer = Sketchup.active_model.entities[0]
#
#   # Grab a handle to its attribute dictionaries.
#   attrdicts = my_layer.attribute_dictionaries
#
# @version SketchUp 6.0
class Sketchup::AttributeDictionaries < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # Get an AttributeDictionary by name. Returns nil if there is none with the
  # given name.
  #
  # @example
  #   model = Sketchup.active_model
  #   attrdicts = model.attribute_dictionaries
  #   # Iterates through all dictionaries and prints to screen.
  #   dict = attrdicts['my_dictionary']
  #   if dict
  #     UI.messagebox("Found: " + dict.to_s)
  #   else
  #     UI.messagebox("No dictionary found.")
  #   end
  #
  # @param key
  #   The name of the attribute dictionary.
  #
  # @return dictionary - the dictionary
  #
  # @version SketchUp 6.0
  def [](key)
  end

  # The count method is inherited from the Enumerable mix-in module.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionaries = model.attribute_dictionaries
  #   number = dictionaries.count
  #
  # @return [Integer] the number of attribute dictionary objects
  #   in the collection.
  #
  # @see #length
  #
  # @version SketchUp 2014
  def count
  end

  # The delete method destroys a given AttributeDictionary. This
  # AttributeDictionary can be passed directly or identified by its
  # string name.
  #
  # @example
  #   model = Sketchup.active_model
  #   attrdicts = model.attribute_dictionaries
  #   # Deletes a dictionary called 'my_dictionary'
  #   attrdicts.delete 'my_dictionary'
  #
  # @param key_or_dict
  #   The name of the attribute dictionary to delete, or
  #   the dictionary object itself.
  #
  # @return dictionaries - the modified AttributeDictionaries object
  #
  # @version SketchUp 6.0
  def delete(key_or_dict)
  end

  # The each method is used to iterate through all of the attributes
  # dictionaries.
  #
  # Throws an exception if there are no keys.
  #
  # @example
  #   model = Sketchup.active_model
  #   attrdicts = model.attribute_dictionaries
  #   # Iterates through all dictionaries and prints to screen.
  #   attrdicts.each { | dict | UI.messagebox dict }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [dict] Each AttributeDictionary as it is found.
  def each
  end

  # The {#length} method returns the number of attribute dictionary objects in
  # the collection.
  #
  # The {#size} method is an alias for {#length}.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionaries = model.attribute_dictionaries
  #   number = dictionaries.length
  #
  # @return [Integer] the number of attribute dictionary objects in the
  #   collection.
  #
  # @version SketchUp 2014
  def length
  end

  # The {#length} method returns the number of attribute dictionary objects in
  # the collection.
  #
  # The {#size} method is an alias for {#length}.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.set_attribute('Example', 'Hello', 'World')
  #   dictionaries = model.attribute_dictionaries
  #   number = dictionaries.length
  #
  # @return [Integer] the number of attribute dictionary objects in the
  #   collection.
  #
  # @version SketchUp 2014
  def size
  end

end

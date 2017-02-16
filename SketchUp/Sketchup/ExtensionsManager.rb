# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The ExtensionsManager class provides a way of accessing the
# SketchupExtensions that have been registered via the
# Sketchup.register_extension method.
#
# There is only one ExtensionsManager available. You access it via the
# Sketchup.extensions method.
#
# @version SketchUp 8.0 M2
class Sketchup::ExtensionsManager

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to get an extension by name, index or ID.
  #
  # @example
  #   manager = Sketchup.extensions
  #   extension = manager[0]
  #   if (extension)
  #     UI.messagebox extension.name
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  #   # You can also get extensions by name.
  #   solarnorth = manager['Solar North Toolbar']
  #
  #   # You can also get extensions by ID.
  #   my_extension = manager['2475A758-6503-46D5-AC5E-16AEA0A3162A']
  #
  # @param index_or_name
  #   The index, name or ID of the SketchupExtension object.
  #
  # @return extension - an SketchupExtension object if
  #   successful, otherwise nil.
  #
  # @version SketchUp 8.0 M2
  def [](index_or_name)
  end

  #
  # @example
  #   manager = Sketchup.extensions
  #   number = manager.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 8.0 M2
  def count
  end

  # The each method is used to iterate through extensions.
  #
  # @example
  #   manager = Sketchup.extensions
  #   # Retrieves each extension
  #   manager.each { |extension| UI.messagebox extension.name }
  #
  # @return nil
  #
  # @version SketchUp 8.0 M2
  #
  # @yield [extension] A variable that will hold each SketchupExtension object
  #   as they are found.
  def each
  end

  # The keys method is used to get a list of keys in the ExtensionsManager,
  # which are the same as the names of the extensions.
  #
  # @example
  #   manager = Sketchup.extensions
  #   keys = manager.keys
  #   for key in keys
  #     UI.messagebox('The next extension is named: ' + key)
  #   end
  #
  # @return keys - Array of string keys
  #
  # @version SketchUp 8.0 M2
  def keys
  end

  # The {#length} method returns the number of {SketchupExtension} objects inside
  # this ExtensionsManager.
  #
  # @example
  #   manager = Sketchup.extensions
  #   number = manager.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 8.0 M2
  def length
  end

  # The {#size} method is an alias of {#length}.
  #
  # @example
  #   manager = Sketchup.extensions
  #   number = manager.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 8.0 M2
  def size
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::OptionsManager

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to get an option provider by name or index.
  # 
  # For example, to get the UnitsOptions on the Model, you could use the
  # command:
  #
  # @example 
  #   Sketchup.active_model.options["UnitsOptions"]
  #
  # @example 
  #   model = Sketchup.active_model
  #   manager = model.options
  #   provider = manager[0]
  #   if (provider)
  #     UI.messagebox provider.name
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @overload [](index)
  # 
  #   @param index         The index of the OptionsProvider object.
  #   @return              optionprovider - an OptionsProvider object if
  #                        successful, otherwise nil.
  #
  # @overload [](name)
  # 
  #   @param name          The name of the OptionsProvider object.
  #   @return              optionprovider - an OptionsProvider object if
  #                        successful, otherwise nil.
  #
  # @version SketchUp 6.0
  def [](arg)
  end

  #
  # @example 
  #   optionsmanager = Sketchup.active_model.options
  #   number = manager.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return integer - number of OptionsProvider objects if
  #   successful
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through options providers.
  #
  # @example 
  #   model = Sketchup.active_model
  #   manager = model.options
  #   # Retrieves each provider
  #   manager.each { |provider| UI.messagebox provider.name }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [opsprovider] A variable that will hold each OptionsProvider object
  #   as they are found.
  def each
  end

  # The keys method is used to get a list of keys in the OptionsManager.
  #
  # @example 
  #   model = Sketchup.active_model
  #   manager = model.options
  #   optionproviderarray = manager.keys
  #   if (optionproviderarray)
  #     UI.messagebox optionproviderarray
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return keys - Array of string keys
  #
  # @version SketchUp 6.0
  def keys
  end

  # The {#size} method returns the number of OptionsProvider objects inside this
  # OptionsManager.
  # 
  # The {#length} method is an alias for {#size} added in SketchUp 2014.
  #
  # @example 
  #   optionsmanager = Sketchup.active_model.options
  #   number = manager.size
  #
  # @return integer - number of OptionsProvider objects if
  #   successful
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#size} method returns the number of OptionsProvider objects inside this
  # OptionsManager.
  # 
  # The {#length} method is an alias for {#size} added in SketchUp 2014.
  #
  # @example 
  #   optionsmanager = Sketchup.active_model.options
  #   number = manager.size
  #
  # @return integer - number of OptionsProvider objects if
  #   successful
  #
  # @version SketchUp 6.0
  def size
  end

end

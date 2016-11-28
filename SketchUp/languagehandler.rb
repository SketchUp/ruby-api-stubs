# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class LanguageHandler

  # Instance Methods

  # Looks up and returns the localized version of a given string, based on the
  # language SketchUp is currently running in, and the available translations
  # in the Resources folder.
  #
  # @example 
  #   swiveldriver_langHandler = LanguageHandler.new('swiveldriver.strings')
  #   localized_string = swiveldriver_langHandler['String 1']
  #
  # @param key
  #   The key for the string to be retrieved.
  #
  # @return the localized string.
  #
  # @version SketchUp 2014
  def [](key)
  end

  # The new method is used to create a new LanguageHandler object.
  #
  # @example 
  #   swiveldriver_langHandler = LanguageHandler.new('swiveldriver.strings')
  #
  # @param filename
  #   The name of the file that contains the localized strings
  #   with their keys in UTF-8 encoding.
  #
  # @return the new LanguageHandler object
  #
  # @version SketchUp 2014
  def initialize(filename)
  end

  # Returns a string containing the path to the given filename if it can be found
  # in the Resources folder.
  #
  # @example 
  #   swiveldriver_langHandler = LanguageHandler.new('swiveldriver.strings')
  #   image = swiveldriver_langHandler.resource_path('fancy_image.png')
  #
  # @return path - the location of the file in the Resources folder.
  #
  # @version SketchUp 2014
  def resource_path
  end

  # Returns a Hash object containing the localization dictionary.
  #
  # @example 
  #   swiveldriver_langHandler = LanguageHandler.new('swiveldriver.strings')
  #   hash = swiveldriver_langHandler.strings
  #
  # @return hash - the localization dictionary.
  #
  # @version SketchUp 2014
  def strings
  end

end

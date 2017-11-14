# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The LanguageHandler class contains methods used to help make SketchUp
# extensions easier to localize across different languages. It looks for
# translated resources within the Resources folder in the extension's directory
# structure. All translated resources should be located within the appropriate
# language folder and encoded in UTF-8. The strings file should include
# "key"="value" string pairs in the following format:
#
# @example Example code that uses LanguageHandler:
#   # Create a global language handler object
#   swiveldriver_lang_handler = LanguageHandler.new('swiveldriver.strings')
#
#   # Get localized string
#   localizedStr = swiveldriver_lang_handler.GetString('String 1')
#
# @example
#   "String 1"="Localized String 1";
#   "String 2"="Localized String 2";
#
# @example Here's an example extension directory structure:
#   gocorp_swiveldriver.rb <- creates the SketchupExtension instance
#   gocorp_swiveldriver/
#   gocorp_swiveldriver/Resources/
#   gocorp_swiveldriver/Resources/en/swiveldriver.strings <- OPTIONAL localization files by language code
#   gocorp_swiveldriver/Resources/fr/swiveldriver.strings
#   gocorp_swiveldriver/Resources/es/swiveldriver.strings
#
# @version SketchUp 2014
class LanguageHandler

  # Instance Methods

  # Looks up and returns the localized version of a given string, based on the
  # language SketchUp is currently running in, and the available translations
  # in the Resources folder.
  #
  # @example
  #   swiveldriver_lang_handler = LanguageHandler.new('swiveldriver.strings')
  #   localized_string = swiveldriver_lang_handler['String 1']
  #
  # @param [String] key
  #   The key for the string to be retrieved.
  #
  # @return [String] the localized string.
  #
  # @version SketchUp 2014
  def [](key)
  end

  # The new method is used to create a new LanguageHandler object.
  #
  # @example
  #   swiveldriver_lang_handler = LanguageHandler.new('swiveldriver.strings')
  #
  # @param [String] filename
  #   The name of the file that contains the localized strings
  #   with their keys in UTF-8 encoding.
  #
  # @return [LanguageHandler] the new LanguageHandler object
  #
  # @version SketchUp 2014
  def initialize(filename)
  end

  # Returns a string containing the path to the given filename if it can be found
  # in the Resources folder.
  #
  # @example
  #   swiveldriver_lang_handler = LanguageHandler.new('swiveldriver.strings')
  #   image = swiveldriver_lang_handler.resource_path('fancy_image.png')
  #
  # @return [String] the location of the file in the Resources folder.
  #
  # @version SketchUp 2014
  def resource_path
  end

  # Returns a Hash object containing the localization dictionary.
  #
  # @example
  #   swiveldriver_lang_handler = LanguageHandler.new('swiveldriver.strings')
  #   hash = swiveldriver_lang_handler.strings
  #
  # @return [Hash] the localization dictionary.
  #
  # @version SketchUp 2014
  def strings
  end

end

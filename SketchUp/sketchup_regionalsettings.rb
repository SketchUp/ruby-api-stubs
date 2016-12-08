# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

module Sketchup::RegionalSettings

  # Class Methods

  # Returns the decimal character for the current user's locale.
  #
  # @example 
  #   # Format a Float using the user's locale settings.
  #   # Ruby's Float.to_s always use period as decimal separator.
  #   formatted = 0.123.to_s.tr('.', Sketchup::RegionalSettings.decimal_separator)
  #
  # @return [String] the decimal separator character
  #
  # @version SketchUp 2016 M1
  def self.decimal_separator
  end

  # Returns the list separator character for the current user's locale.
  #
  # @example 
  #   # Format a CSV list in user's locale:
  #   decimal = Sketchup::RegionalSettings.decimal_separator
  #   list = Sketchup::RegionalSettings.list_separator
  #   row = [3.14, 1.618, 2.718]
  #   csv = row.map { |value| value.to_s.tr('.', decimal) }.join(list)
  #
  # @return [String] the list separator character
  #
  # @version SketchUp 2016 M1
  def self.list_separator
  end

end

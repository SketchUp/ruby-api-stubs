# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The CRSMapUnit class represents a length unit and the conversion factor from that unit to meters.
#
# @version SketchUp 2027.0
class Sketchup::CRSMapUnit

  # Constants

  FEET = nil # Stub value.

  METERS = nil # Stub value.

  US_SURVEY_FEET = nil # Stub value.

  # Instance Methods

  # The {#==} method returns whether two {Sketchup::CRSMapUnit} are equal within tolerance.
  #
  # @param [Sketchup::CRSMapUnit] other
  #
  # @return [Boolean]
  #
  # @version SketchUp 2027.0
  def ==(other)
  end

  # The {#conversion} method is used to retrieve the conversion factor between this map unit and
  # meters.
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def conversion
  end

  # Creates a CRSMapUnit object.
  #
  # @example
  #   map_unit = Sketchup::CRSMapUnit.new("METRE", 1.0)
  #
  # @param [String] name
  #
  # @param [Float] conversion
  #
  # @raise [ArgumentError] If +name+ is empty or +conversion+ is <= 0.
  #
  # @return [Sketchup::CRSMapUnit]
  #
  # @version SketchUp 2027.0
  def initialize(name, conversion)
  end

  # The {#inspect} method returns a string representation of the CRSMapUnit.
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def inspect
  end

  # The {#name} method is used to retrieve the name of the CRSMapUnit.
  #
  # standard.
  #
  # @note For best interoperability with other BIM and GIS software this should follow the IFC
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def name
  end

  # The {#to_s} method returns a string containing a human-readable representation of the CRSMapUnit.
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def to_s
  end

end

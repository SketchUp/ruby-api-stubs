# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A number of methods have been added to the Ruby Numeric class to do units
# conversions.
#
# @version SketchUp 6.0
class Numeric

  # Instance Methods

  # The cm method is used to convert from centimeters to inches.
  #
  # @example
  #   cm = 10
  #   inches = cm.cm
  #
  # @return [Length] a value in inches if successful
  #
  # @version SketchUp 6.0
  def cm
  end

  # The degrees method is used to convert from degrees to radians.
  #
  # For example 90.degrees would return 1.5707963267949
  #
  # @example
  #   degrees = 90
  #   radians = degrees.degrees
  #
  # @return [Float] a value in radians if successful
  #
  # @version SketchUp 6.0
  def degrees
  end

  # The feet method is used to convert from feet to inches.
  #
  # @example
  #   feet = 1
  #   inches = feet.feet
  #
  # @return [Length] a value in inches if successful
  #
  # @version SketchUp 6.0
  def feet
  end

  # The to_l is used to convert from a number to a length.
  #
  # @example
  #   number = 12
  #   length = number.to_l
  #
  # @return [Length] a Length object if successful
  #
  # @version SketchUp 6.0
  def inch
  end

  # The km method is used to convert from kilometers to inches.
  #
  # @example
  #   value = 1
  #   inches = value.km
  #
  # @return [Length] a value in inches if successful
  #
  # @version SketchUp 6.0
  def km
  end

  # The m method is used to convert meters to inches.
  #
  # @example
  #   meters = 1
  #   inches = meters.m
  #
  # @return [Length] a value in inches if successful
  #
  # @version SketchUp 6.0
  def m
  end

  # The mile method is used to convert from miles to inches.
  #
  # @example
  #   miles = 1
  #   inches = miles.mile
  #
  # @return [Length] a value in inches if successful
  #
  # @version SketchUp 6.0
  def mile
  end

  # The mm method is used to convert a number to millimeters.
  #
  # It returns a Length value which is the same length as the given value. For
  # example len = 25.4.mm returns 1 inch.
  #
  # @example
  #   value = 10
  #   mm = value.mm
  #
  # @return [Length] a value in millimeters if successful
  #
  # @version SketchUp 6.0
  def mm
  end

  # The radians method is used to convert from radians to degrees.
  #
  # For example, 1.5707963267949.radians would return 90.0
  #
  # @example
  #   radians = 1.5707963267949
  #   degrees = radians.radians
  #
  # @return [Float] a value in degrees if successful
  #
  # @version SketchUp 6.0
  def radians
  end

  # The to_cm method is used to convert from inches to centimeters.
  #
  # @example
  #   inches = 1
  #   cm = inches.to_cm
  #
  # @return [Float] a value in centimeters if successful
  #
  # @version SketchUp 6.0
  def to_cm
  end

  # The to_feet method is used to convert from inches to feet.
  #
  # @example
  #   inches = 12
  #   feet = inches.to_feet
  #
  # @return [Float] a value in feet if successful
  #
  # @version SketchUp 6.0
  def to_feet
  end

  # The to_inch method converts from inches to inches.
  #
  # This does not change the value.
  #
  # @example
  #   inches = 12
  #   inches = inches.to_inch
  #
  # @return [Float] a value in inches if successful
  #
  # @version SketchUp 6.0
  def to_inch
  end

  # The to_km method is used to convert from inches to kilometers.
  #
  # @example
  #   inches = 1
  #   km = inches.to_km
  #
  # @return [Float] a value in kilometers if successful
  #
  # @version SketchUp 6.0
  def to_km
  end

  # The to_l is used to convert from a number to a length.
  #
  # @example
  #   number = 12
  #   length = number.to_l
  #
  # @return [Length] a Length object if successful
  #
  # @version SketchUp 6.0
  def to_l
  end

  # The to_m method is used to convert from inches to meters.
  #
  # @example
  #   inches = 12
  #   meters = inches.to_m
  #
  # @return [Float] a value in meters if successful
  #
  # @version SketchUp 6.0
  def to_m
  end

  # The to_mile method is used to convert from inches to miles.
  #
  # @example
  #   inches = 10000
  #   miles = inches.to_mile
  #
  # @return [Float] a value in miles if successful
  #
  # @version SketchUp 6.0
  def to_mile
  end

  # The to_mm method is used to convert from inches to millimeters.
  #
  # @example
  #   inches = 1
  #   mm = inches.to_mm
  #
  # @return [Float] a value in millimeters if successful
  #
  # @version SketchUp 6.0
  def to_mm
  end

  # The to_yard method is used to convert from inches to yards.
  #
  # @example
  #   inches = 10000
  #   yards = inches.to_yard
  #
  # @return [Float] a value in yards if successful
  #
  # @version SketchUp 6.0
  def to_yard
  end

  # The yard method is used to convert from yards to inches.
  #
  # @example
  #   yards = 1.to_l
  #   inches = yards.yard
  #
  # @return [Length] a value in inches if successful
  #
  # @version SketchUp 6.0
  def yard
  end

end

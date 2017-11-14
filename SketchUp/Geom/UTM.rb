# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The UTM class lets you work with UTM map coordinates.
#
# @note Valid ranges for {#zone_number} and {#zone_letter} are 1-60 and C-X
#   (omitting I and O). Valid ranges for {#x} and {#y} are 100000-899999.
#
# @version SketchUp 6.0
class Geom::UTM

  # Instance Methods

  # The {#initialize} method is used to create a new UTM coordinate. You will
  # often create UTM objects by calling the method {Sketchup::Model#point_to_utm}
  # instead of calling this method.
  #
  # @example
  #   # Create a copy of an existing UTM object.
  #   utm = Geom::UTM.new(utm2)
  #
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #
  # @overload initialize(zone_number, zone_letter, x, y)
  #
  #   @param [Integer] zone_number A zone number or a UTM object.
  #   @param [String] zone_letter A zone letter.
  #   @param [Float] x The x position.
  #   @param [Float] y The y position.
  #
  # @overload initialize(utm)
  #
  #   @param [Geom::UTM] utm A UTM object.
  #
  # @overload initialize(array)
  #
  #   @param [Array(Integer, String, Float, Float)] An array containing the zone
  #     number, zone letter, x and y positions.
  #
  # @return [Geom::UTM]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The {#to_a} method returns a UTM coordinate as a 4 element array. The Array
  # elements are the zone number, the zone letter, the x coordinate and the y
  # coordinate.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   a = utm.to_a
  #
  # @return [Array(Integer, String, Float, Float)]
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The {#to_latlong} method is used to convert UTM coordinates to latitude
  # and longitude. See the LatLong class for more information.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   ll = utm.to_latlong
  #
  # @return [Geom::LatLong]
  #
  # @version SketchUp 6.0
  def to_latlong
  end

  # The {#to_s} method is used to retrieve a string representation of a UTM.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   string = utm.to_s
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The {#x} method returns the UTM x coordinate.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   x = utm.x
  #
  # @return [Float]
  #
  # @version SketchUp 6.0
  def x
  end

  # The {#y} method returns the UTM y coordinate.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   y = utm.y
  #
  # @return [Float]
  #
  # @version SketchUp 6.0
  def y
  end

  # The {#zone_letter} method returns the UTM zone letter.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   zl = utm.zone_letter
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def zone_letter
  end

  # The {#zone_number} method returns the UTM zone number.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   zn = utm.zone_number
  #
  # @return [Integer]
  #
  # @version SketchUp 6.0
  def zone_number
  end

end

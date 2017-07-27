# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The UTM class lets you work with UTM map coordinates.
#
# @version SketchUp 6.0
class Geom::UTM

  # Instance Methods

  # The new method is used to create a new UTM coordinate. You will often create
  # UTM objects by calling the method Model.point_to_utm instead of calling this
  # method.
  #
  # @example
  #   # Create a copy of an existing UTM object.
  #   utm = Geom::UTM.new(utm2)
  #
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #
  # @param zone_number [Integer]
  #   A zone number or a UTM object. If this first parameter
  #   is a UTM object, then the other parameters are ignored.
  #
  # @param zone_letter [String]
  #   A zone letter.
  #
  # @param y [Numeric]
  #   The y position.
  #
  # @param x [Numeric]
  #   The x position.
  #
  # @return [Geom::UTM] a utm coordinate if successful
  #
  # @version SketchUp 6.0
  def initialize(zone_number, zone_letter, x, y)
  end

  # The to_a method returns a UTM coordinate as a 4 element array. The Array
  # elements are the zone number, the zone letter, the x coordinate and the y
  # coordinate.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   a = utm.to_a
  #
  # @return [Array(Fixnum, String, Float, Float)] a utm array if successful
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The to_latlong method is used to convert UTM coordinates to latitude
  # and longitude. See the LatLong class for more information.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   ll = utm.to_latlong
  #
  # @return [Geom::LatLong] a LatLong object if successful
  #
  # @version SketchUp 6.0
  def to_latlong
  end

  # The to_s method is used to retrieve a string representation of a UTM.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   string = utm.to_s
  #
  # @return [String] a utm string if successful
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The x method returns the UTM x coordinate.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   x = utm.x
  #
  # @return [Float] the UTM x coordinate
  #
  # @version SketchUp 6.0
  def x
  end

  # The x method returns the UTM y coordinate.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   y = utm.y
  #
  # @return [Float] the UTM y coordinate
  #
  # @version SketchUp 6.0
  def y
  end

  # The zone_letter method returns the UTM zone letter.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   zl = utm.zone_letter
  #
  # @return [String] the UTM zone letter
  #
  # @version SketchUp 6.0
  def zone_letter
  end

  # The zone_number method returns the UTM zone number.
  #
  # @example
  #   # Create a new UTM object from scratch.
  #   utm = Geom::UTM.new(13, "T", 475849.37521, 4429682.73749)
  #   zn = utm.zone_number
  #
  # @return [Fixnum] the UTM zone number
  #
  # @version SketchUp 6.0
  def zone_number
  end

end

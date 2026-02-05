# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The LatLong class contains various methods for creating and manipulating
# latitude and longitude coordinates.
#
# @version SketchUp 6.0
class Geom::LatLong

  # Instance Methods

  # The new method creates a LatLong object.
  #
  # @example
  #   # No arguments, creates a latlong with (0, 0)
  #   latlong1 = Geom::LatLong.new
  #
  #   latlong2 = Geom::LatLong.new(40.01700, 105.28300)
  #
  #   array = [40.01700, 105.28300]
  #   latlong3 = Geom::LatLong.new(array)
  #
  # @overload initialize
  #
  #   @return [Geom::LatLong]
  #
  # @overload initialize(latlong)
  #
  #   @param [Geom::LatLong] latlong
  #   @return [Geom::LatLong]
  #
  # @overload initialize(latlong_array)
  #
  #   @param [Array(Numeric, Numeric)] latlong_array
  #   @return [Geom::LatLong]
  #
  # @overload initialize(lat, long)
  #
  #   @param [Numeric] latitude
  #   @param [Numeric] longitude
  #   @return [Geom::LatLong]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The Latitude method retrieves the latitude coordinate from a LatLong object.
  #
  # @example
  #   latlong = Geom::LatLong.new(40.01700, 105.28300)
  #   # The result is 40.01700
  #   latitude = latlong.latitude
  #
  # @return [Float] a latitude coordinate value
  #
  # @version SketchUp 6.0
  def latitude
  end

  # The Latitude method retrieves the longitude coordinate from a LatLong
  # object.
  #
  # @example
  #   latlong = Geom::LatLong.new(40.01700, 105.28300)
  #   # The result is 105.28300
  #   longitude = latlong.longitude
  #
  # @return [Float] a latitude coordinate value
  #
  # @version SketchUp 6.0
  def longitude
  end

  # The {#to_a} method converts a LatLong object to an array of two values.
  #
  # @example
  #   latlong = Geom::LatLong.new(40.01700, 105.28300)
  #   array = latlong.to_a
  #
  # @return [Array(Float, Float)] an array of latitude and longitude
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The {#to_s} method converts a LatLong object to a {String}.
  #
  # @example
  #   latlong = Geom::LatLong.new([40.01700, 105.28300])
  #   string = latlong.to_s
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The to_utm method converts a LatLong object to a UTM object.
  #
  # @example
  #   latlong = Geom::LatLong.new(40.01700, 105.28300)
  #   # The result is UTM(48 T 524150.82056 4429682.40743)
  #   utm = latlong.to_utm
  #
  # @return [Geom::UTM]
  #
  # @version SketchUp 6.0
  def to_utm
  end

end

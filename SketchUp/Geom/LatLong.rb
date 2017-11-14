# Copyright:: Copyright 2017 Trimble Inc.
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
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   if (latlong)
  #     UI.messagebox(latlong)
  #   else
  #     UI.messagebox("Failure")
  #   end
  #
  # @overload initialize
  #
  #   @return [Geom::LatLong]
  #
  # @overload initialize(latlong)
  #
  #   @param latlong [Geom::LatLong]
  #   @return [Geom::LatLong]
  #
  # @overload initialize(lat, long)
  #
  #   @param lat  [Numeric]
  #   @param long [Numeric]
  #   @return [Geom::LatLong]
  #
  # @overload initialize(latlong_array)
  #
  #   @param latlong_array [Array(Numeric, Numeric)]
  #   @return [Geom::LatLong]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The Latitude method retrieves the latitude coordinate from a LatLong object.
  #
  # @example
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   latitude = latlong.latitude
  #   if (latitude)
  #     UI.messagebox(latitude)
  #   else
  #     UI.messagebox("Failure")
  #   end
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
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   longitude = latlong.longitude
  #   if (longitude)
  #     UI.messagebox(longitude)
  #   else
  #     UI.messagebox("Failure")
  #   end
  #
  # @return [Float] a latitude coordinate value
  #
  # @version SketchUp 6.0
  def longitude
  end

  # The {#to_a} method converts a LatLong object to an array of two values.
  #
  # @example
  #   latlong = Geom::LatLong.new([40.01700, 105.28300])
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
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   utm = latlong.to_utm
  #   if (utm)
  #     UI.messagebox(utm)
  #   else
  #     UI.messagebox("Failure")
  #   end
  #
  # @return [Geom::UTM]
  #
  # @version SketchUp 6.0
  def to_utm
  end

end

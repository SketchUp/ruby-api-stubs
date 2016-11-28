# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Geom::LatLong

  # Instance Methods

  # The new method creates a LatLong object.
  #
  # @example 
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   if (latlong)
  #     UI.messagebox latlong
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param latlong
  #   A latitude and longitude coordinate set as an Array.
  #
  # @return latlong - a LatLong object
  #
  # @version SketchUp 6.0
  def initialize(latlong)
  end

  # The Latitude method retrieves the latitude coordinate from a LatLong object.
  #
  # @example 
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   latitude = latlong.latitude
  #   if (latitude)
  #     UI.messagebox latitude
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return latitude - a latitude coordinate value
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
  #     UI.messagebox longitude
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return longitude - a latitude coordinate value
  #
  # @version SketchUp 6.0
  def longitude
  end

  # The to_a method converts a LatLong object to an array of two values.
  #
  # @example 
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   a = latlong.to_a
  #   if (a)
  #     UI.messagebox a
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return array - an array of two values: latitude and longitude
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The to_a method converts a LatLong object to a string.
  #
  # @example 
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   s = latlong.to_s
  #   if (s)
  #     UI.messagebox s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return string - a string representation of a LatLong object
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The to_utm method converts a LatLong object to an array of two values.
  #
  # @example 
  #   ll = [40.01700, 105.28300]
  #   latlong = Geom::LatLong.new(ll)
  #   utm = latlong.to_utm
  #   if (utm)
  #     UI.messagebox utm
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return array - an array of two values: latitude and longitude
  #
  # @version SketchUp 6.0
  def to_utm
  end

end

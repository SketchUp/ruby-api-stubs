# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The CRSLocation class contains information that maps the SketchUp model into a projection
# coordinate system.
#
# @version SketchUp 2027.0
class Sketchup::CRSLocation

  # Constants

  FEET = nil # Stub value.

  METERS = nil # Stub value.

  US_SURVEY_FEET = nil # Stub value.

  # Instance Methods

  # The {#==} method returns whether two {Sketchup::CRSLocation} are equal within tolerance.
  #
  # @param [Sketchup::CRSLocation] other
  #
  # @return [Boolean]
  #
  # @version SketchUp 2027.0
  def ==(other)
  end

  # The {#calibration_file_name} method is used to retrieve the name of the
  # calibration file used in the construction of the CRSLocation.
  #
  # @return [String, nil]
  #
  # @version SketchUp 2027.0
  def calibration_file_name
  end

  # The {#calibration_file_name=} method is used to set the name of the
  # calibration file used in the construction of the CRSLocation.
  #
  # @param [String, nil] calibration_file_name
  #
  #
  # @version SketchUp 2027.0
  def calibration_file_name=(calibration_file_name)
  end

  # The {#description} method is used to retrieve the description of the CRSLocation.
  #
  # @example
  #   Sketchup.active_model.crs_location.description
  #
  # @return [String, nil]
  #
  # @version SketchUp 2027.0
  def description
  end

  # The {#description=} method is used to set the description of the CRSLocation.
  #
  # @example
  #   Sketchup.active_model.crs_location.description = "British National Grid"
  #
  # @param [String, nil] description
  #
  #
  # @version SketchUp 2027.0
  def description=(description)
  end

  # The {#eastings} method is used to retrieve the eastings of the CRSLocation.
  #
  # The eastings represents the offset in the "X" direction of this models origin from the
  # origin of the coordinate system
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def eastings
  end

  # The {#eastings=} method is used to set the eastings of the CRSLocation.
  #
  # Typically {#eastings}, {#northings} and {#height} need to be set together to
  # properly position the model.
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def eastings=(eastings)
  end

  # The {#geodetic_datum} method is used to retrieve the name of the geodetic datum of the
  # CRSLocation.
  #
  # @return [String, nil]
  #
  # @version SketchUp 2027.0
  def geodetic_datum
  end

  # The {#geodetic_datum=} method is used to set the name of the geodetic datum of the CRSLocation.
  #
  # @note If the {#name} is specific enough this may be unnecessary to set.
  #
  # @param [String, nil] geodetic_datum
  #
  # @version SketchUp 2027.0
  def geodetic_datum=(geodetic_datum)
  end

  # The {#height} method is used to retrieve the height of the CRSLocation.
  #
  # The height represents the offset in the "Z" direction of this models origin from
  # some base height.
  #
  # @note this is equivalent to "Orthogonal Height" from the IFC spec.
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def height
  end

  # The {#height=} method is used to set the height of the CRSLocation.
  #
  # Typically {#eastings}, {#northings} and {#height} need to be set together to
  # properly position the model.
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def height=(height)
  end

  # Creates a CRSLocation object.
  #
  # @example
  #   # No arguments, creates an empty CRSLocation
  #   crs_location1 = Sketchup::CRSLocation.new
  #
  #   # Creates a clone of the CRSLocation
  #   crs_location2 = Sketchup::CRSLocation.new(crs_location1)
  #
  #   Sketchup.active_model.crs_location = crs_location2
  #
  # @overload initialize
  #
  #   @return [Sketchup::CRSLocation]
  #
  # @overload initialize(crslocation)
  #
  #   @param [Sketchup::CRSLocation] crs_location
  #   @return [Sketchup::CRSLocation]
  #
  # @version SketchUp 2027.0
  def initialize(*args)
  end

  # The {#map_projection} method is used to retrieve the name of the map projection of the
  # CRSLocation.
  #
  # @return [String, nil]
  #
  # @version SketchUp 2027.0
  def map_projection
  end

  # The {#map_projection=} method is used to set the name of the map projection of the CRSLocation.
  #
  # @note If the {#name} is specific enough this may be unnecessary to set.
  #
  # @param [String, nil] map_projection
  #
  # @version SketchUp 2027.0
  def map_projection=(map_projection)
  end

  # The {#map_unit} method is used to retrieve the map unit of the CRSLocation.
  #
  # @note If there is no map unit defined, meters can be assumed.
  #
  # @return [Sketchup::CRSMapUnit, nil]
  #
  # @version SketchUp 2027.0
  def map_unit
  end

  # The {#map_unit=} method is used to set the map unit of the CRSLocation.
  #
  # @param [Sketchup::CRSMapUnit, nil] map_unit
  #
  # @see Sketchup::CRSMapUnit::METERS
  #
  # @see Sketchup::CRSMapUnit::FEET
  #
  # @see Sketchup::CRSMapUnit::US_SURVEY_FEET
  #
  # @version SketchUp 2027.0
  def map_unit=(map_unit)
  end

  # The {#map_zone} method is used to retrieve the name of the map zone of the CRSLocation.
  #
  # @return [String, nil]
  #
  # @version SketchUp 2027.0
  def map_zone
  end

  # The {#map_zone=} method is used to set the name of the map zone of the CRSLocation.
  #
  # @note If the {#name} is specific enough this may be unnecessary to set.
  #
  # @param [String, nil] map_zone
  #
  # @version SketchUp 2027.0
  def map_zone=(map_zone)
  end

  # The {#name} method is used to retrieve the name of the CRSLocation.
  #
  # @example
  #   Sketchup.active_model.crs_location.name
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def name
  end

  # The {#name=} method is used to set the name of the CRSLocation.
  #
  # For the best interoperability with other BIM and GIS software this should follow the IFC
  # standard.
  #
  # @example
  #   Sketchup.active_model.crs_location.name = "EPSG:27700"
  #
  # @param [String] name
  #
  #
  # @version SketchUp 2027.0
  def name=(name)
  end

  # The {#northings} method is used to retrieve the northings of the CRSLocation.
  #
  # The northings represents the offset in the "Y" direction of this models origin from the
  # origin of the coordinate system
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def northings
  end

  # The {#northings=} method is used to set the northings of the CRSLocation.
  #
  # Typically {#eastings}, {#northings} and {#height} need to be set together to
  # properly position the model.
  #
  # @return [Float]
  #
  # @version SketchUp 2027.0
  def northings=(northings)
  end

  # The {#scale} method is used to retrieve the scale of the CRSLocation.
  #
  # The scale represents the ratio between the Sketchup modelling units (inches) and the
  # modelling units of the coordinate system.
  #
  # For example, if the CRS is in meters, the scale would be +1.m+
  #
  # @note The {#scale} and {#map_unit} properties are related.
  #
  # @return [Float]
  #
  # @see Sketchup::CRSLocation::METERS
  #
  # @see Sketchup::CRSLocation::FEET
  #
  # @see Sketchup::CRSLocation::US_SURVEY_FEET
  #
  # @version SketchUp 2027.0
  def scale
  end

  # The {#scale=} method is used to set the scale of the CRSLocation.
  #
  # @example
  #   crs_location = model.crs_location
  #   crs_location.scale = Sketchup::CRSLocation::FEET
  #   # Alternatively:
  #   crs_location.scale = 1.to_feet
  #
  # @note When calling this method also considering calling {#map_unit=}
  #
  # @param scale
  #
  # @raise [ArgumentError] If the scale is less than or equal to 0.
  #
  # @see Sketchup::CRSLocation::METERS
  #
  # @see Sketchup::CRSLocation::FEET
  #
  # @see Sketchup::CRSLocation::US_SURVEY_FEET
  #
  # @version SketchUp 2027.0
  def scale=(scale)
  end

  # The {#tgl_id} method is used to retrieve the TGL (Trimble Geodetic Library) ID of the
  # CRSLocation.
  #
  # This ID encodes all of the information about the CRS in a compact encoded string.
  #
  # @return [String, nil]
  #
  # @see https://cloud.api.trimble.com/coordinates/1.0/swagger
  #   for the TGL cloud API.
  #
  # @version SketchUp 2027.0
  def tgl_id
  end

  # The {#tgl_id=} method is used to set the TGL (Trimble Geodetic Library) ID of the CRSLocation.
  #
  # @note This is currently a mandatory field when setting the CRSLocation on the model.
  #
  # @param [String, nil] tgl_id
  #
  #
  # @see https://cloud.api.trimble.com/coordinates/1.0/swagger
  #   for the TGL cloud API.
  #
  # @version SketchUp 2027.0
  def tgl_id=(tgl_id)
  end

  # The {#to_s} method converts a CRSLocation object to a {String}.
  #
  # @example
  #   crs_location = Sketchup::CRSLocation.new
  #   str = crs_location.to_s
  #
  # @return [String]
  #
  # @version SketchUp 2027.0
  def to_s
  end

  # The {#vertical_datum} method is used to retrieve the name of the vertical datum of the
  # CRSLocation.
  #
  # @return [String, nil]
  #
  # @version SketchUp 2027.0
  def vertical_datum
  end

  # The {#vertical_datum=} method is used to set the name of the vertical datum of the CRSLocation.
  #
  # @note If the {#name} is specific enough this may be unnecessary to set.
  #
  # @param [String, nil] vertical_datum
  #
  # @version SketchUp 2027.0
  def vertical_datum=(vertical_datum)
  end

  # The {#x_axis} method is used to retrieve the x_axis of the CRSLocation.
  #
  # The x_axis represents the direction of the local "X" axis in terms of the coordinate system.
  #
  # The default value is (1, 0), which means that the local orientation matches the coordinate
  # system.
  #
  # @return [Geom::Vector2d]
  #
  # @version SketchUp 2027.0
  def x_axis
  end

  # The {#x_axis=} method is used to set the x_axis of the CRSLocation.
  #
  # @example Orienting the model so that the local "X" axis points north:
  #   model = Sketchup.active_model
  #   crs_location = model.crs_location
  #   crs_location.x_axis = [0, 1]
  #   model.crs_location = crs_location
  #
  # @param [Geom::Vector2d] x_axis
  #
  #
  # @version SketchUp 2027.0
  def x_axis=(x_axis)
  end

end

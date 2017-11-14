# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The SketchUp Array class adds additional methods to the standard Ruby Array
# class. Specifically, it contains methods allowing an
# array to behave just as a {Geom::Vector3d} or {Geom::Point3d} object
# (which can be thought of as arrays of 3 coordinate values). Therefore, you
# can use the Array class in place of a {Geom::Point3d} or {Geom::Vector3d} as
# a way to pass coordinate values.
#
# @example
#   # An array of 3 values can represent a 1" long vector pointing straight
#   # up in the z-direction.
#   array = [0, 0, 1]
#
#   # An array of 3 values can also represent a point 1" above the origin in
#   # the z direction. (Note that this is the exact same array.)
#   array = [0, 0, 1]
#
#   # How it is interpreted is based on context. For example, this code will
#   # create a construction point at position 0, 0, 1, since in this context
#   # a Point3d is expected.
#   entities = Sketchup.active_model.entities
#   construction_point = entities.add_cpoint(array)
#
#   # Whereas this will move our construction point 1" upward, since in this
#   # context a Vector3d is expected.
#   transformation = Geom::Transformation.new(array)
#   entities.transform_entities(transformation, construction_point)
#
# @version SketchUp 6.0
class Array

  # Instance Methods

  # The {#cross} method is used to compute the cross product between two vectors.
  #
  # @example With 2d array
  #   vector1 = Geom::Vector2d.new(0, 1)
  #   array = [1, 0]
  #   vector2 = array.cross(vector1)
  #
  #   vector1 = Geom::Vector3d.new(0, 1, 0)
  #   array = [1, 0]
  #   vector2 = array.cross(vector1) # This will force array to be [1, 0, 0]
  #
  # @example With 3d array
  #   vector1 = Geom::Vector3d.new(0, 1, 0)
  #   array = [1, 0, 0]
  #   # This will return a new Vector3d
  #   vector2 = array.cross(vector1)
  #
  # @overload cross(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Geom::Vector3d]
  #
  # @overload cross(vector)
  #
  #   @param [Geom::Vector2d] vector
  #   @return [Geom::Vector2d]
  #
  # @raise ArgumentError if the argument is the wrong vector type
  #
  # @version SketchUp 6.0
  def cross(vector)
  end

  # The {#distance} method is used to compute the distance between two points.
  #
  # @example With 2d array
  #   point = Geom::Point2d.new(10, 10)
  #   array = [1, 2]
  #   distance = array.distance(point)
  #
  #   point = Geom::Point3d.new(10, 10, 10)
  #   distance = array.distance(point)
  #
  # @example With 3d array
  #   point = Geom::Point3d.new(10, 10, 10)
  #   array = [1, 1, 1]
  #   # This will return a Length
  #   distance = array.distance(point)
  #
  # @overload distance(point)
  #
  #   @param [Geom::Point3d] point
  #   @return [Length]
  #
  # @overload distance(point)
  #
  #   @param [Geom::Point2d] point
  #   @return [Length]
  #
  # @raise ArgumentError if the argument is the wrong point type
  #
  # @version SketchUp 6.0
  def distance(point)
  end

  # The {#distance_to_line} method is used to compute the distance from a
  # {Geom::Point3d} object to a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a Length
  #   distance = array.distance_to_line(line)
  #
  # @overload distance_to_line(point1, point2)
  #
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point1
  #   @return [Length]
  #
  # @overload distance_to_line(point, vector)
  #
  #   @param [Geom::Point3d] point
  #   @param [Geom::Vector3d] vector
  #   @return [Length]
  #
  # @see Geom
  #   The Geom module for instructions on how to create a line.
  #
  # @version SketchUp 6.0
  def distance_to_line(*args)
  end

  # The {#distance_to_plane} method is used to compute the distance from a
  # {Geom::Point3d} object to a plane.
  #
  # @example
  #   plane = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a Length
  #   distance = array.distance_to_plane(plane)
  #
  # @overload distance_to_plane(array)
  #
  #   Plane defined by its coefficents.
  #   @param [Array<Float, Float, Float, Float>] point
  #   @return [Length] The distance between the two points.
  #
  # @overload distance_to_plane(point, vector)
  #
  #   Plane defined by
  #   @param [Geom::Point3d] point
  #   @param [Geom::Vector3d] vector
  #   @return [Length] The distance between the two points.
  #
  # @overload distance_to_plane(point1, point2, point3)
  #
  #   Plane defined by three points.
  #   @note The three points should not be co-linear or duplicate.
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point2
  #   @param [Geom::Point3d] point3
  #   @return [Length] The distance between the two points.
  #
  # @overload distance_to_plane(array)
  #
  #   Plane defined by three points.
  #   @param [Array<Geom::Point3d, Geom::Point3d, Geom::Point3d>] point
  #   @return [Length] The distance between the two points.
  #
  # @overload distance_to_plane(array)
  #
  #   Plane defined by three points.
  #   @note The three points should not be co-linear or duplicate.
  #   @param [Array<Geom::Point3d, Geom::Vector3d>] point
  #   @return [Length] The distance between the two points.
  #
  # @overload distance_to_plane(float1, float2, float3, float4)
  #
  #   Plane defined by its coefficents.
  #   @param [Float] float1
  #   @param [Float] float2
  #   @param [Float] float3
  #   @param [Float] float4
  #   @return [Length] The distance between the two points.
  #
  # @see Geom
  #   The Geom module for instructions on how to create a plane.
  #
  # @version SketchUp 6.0
  def distance_to_plane(*args)
  end

  # The {#dot} method is used to compute the dot product between two vectors.
  #
  # @example With 2d array
  #   vector = Geom::Vector2d.new(12, 12)
  #   array = [12, 0]
  #   # This will return a float
  #   dot_product = array.dot(vector)
  #
  # @example With 3d array
  #   vector = Geom::Vector3d.new(12, 12, 0)
  #   array = [12, 0, 0]
  #   # This will return a Float, in this case 144.0
  #   dot_product = array.dot(vector)
  #
  # @overload dot(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Float]
  #
  # @overload dot(vector)
  #
  #   @param [Geom::Vector2d] vector
  #   @return [Float]
  #
  # @raise ArgumentError if the argument is the wrong vector type
  #
  # @version SketchUp 6.0
  def dot(vector)
  end

  # The {#normalize} method is used to normalize a vector (setting its
  # length to 1). It returns a new array rather than changing the original in
  # place.
  #
  # @example With 2d array
  #   array = [1, 2]
  #   normal_vector = array.normalize
  #
  # @example With 3d array
  #   array = [1, 2, 3]
  #   # This will return a new Vector3d
  #   normal_vector = array.normalize
  #
  # @note The arguments and return value will be converted to a floating point
  #   value. (Unlike in the {Geom::Vector3d#normalize!} method.)
  #
  # @overload normalize
  #
  #   @return [Array(Float, Float, Float)] an array object representing a vector
  #
  # @overload normalize
  #
  #   @return [Array(Float, Float)] an array object representing a vector
  #
  # @version SketchUp 6.0
  def normalize
  end

  # The {#normalize!} method is used to normalize a vector in place (setting its
  # length to 1).
  #
  # @example With 2d array
  #   array = [1, 2]
  #   array.normalize!
  #
  # @example With 3d array
  #   array = [1, 2, 3]
  #   # This will modify 'array' in place
  #   array.normalize!
  #
  # @overload normalize!
  #
  #   @return [Array(Float, Float, Float)] an array object representing a vector
  #
  # @overload normalize!
  #
  #   @return [Array(Float, Float)] an array object representing a vector
  #
  # @version SketchUp 6.0
  def normalize!
  end

  # The {#offset} method is used to offset a point by a vector. it returns a new
  # array rather than modifying the original in place.
  #
  # @example With 3d array
  #   array = [10, 10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   # This will modify 'array' in place
  #   length_array = array.offset(vector)
  #
  # @example With 2d array
  #   array = [10, 10]
  #   vector = Geom::Vector2d.new(0, 1)
  #   length_array = array.offset(vector)
  #
  #   # Using Vector3d with a 2d array
  #   array = [10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   length_array = array.offset(vector)
  #
  # @overload offset(vector, length)
  #
  #   @param [Geom::Vector3d] vector A Vector3d object used to offset the point.
  #   @param [Length] length An overriding distance for how far to offset.
  #   @return [Array(Length, Length, Length)] The newly offset array representing
  #     a point or vector.
  #
  # @overload offset(vector)
  #
  #   @param [Geom::Vector2d] vector A Vector2d object used to offset the point.
  #   @return [Array(Length, Length)] The newly offset array representing a point
  #     or vector.
  #
  # @overload offset(vector)
  #
  #   @param [Geom::Vector3d] vector A Vector3d object used to offset the point.
  #   @return [Array(Length, Length, Length)] The newly offset array representing
  #     a point or vector.
  #
  # @overload offset(vector, length)
  #
  #   @param [Geom::Vector2d] vector A Vector2d object used to offset the point.
  #   @param [Length] length An overriding distance for how far to offset.
  #   @return [Array(Length, Length)] The newly offset array representing a point
  #     or vector.
  #
  # @raise ArgumentError if the argument is the wrong vector type
  #
  # @version SketchUp 6.0
  def offset(*args)
  end

  # The {#offset!} method is used to offset a point by a vector. The array is
  # modified in place.
  #
  # @example With 2d array
  #   array = [10, 10]
  #   vector = Geom::Vector2d.new(0, 1)
  #   array.offset!(vector)
  #
  #   # Using Vector3d with a 2d array
  #   array = [10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   array.offset!(vector)
  #
  # @example With 3d array
  #   array = [10, 10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   # This will modify 'array' in place
  #   array.offset!(vector)
  #
  # @overload offset!(vector)
  #
  #   @param [Geom::Vector3d] vector A Vector3d object used to offset the point.
  #   @return [Array(Length, Length, Length)] The newly offset array representing
  #     a point or vector.
  #
  # @overload offset!(vector, length)
  #
  #   @param [Geom::Vector3d] vector A Vector3d object used to offset the point.
  #   @param [Length] length An overriding distance for how far to offset.
  #   @return [Array(Length, Length, Length)] The newly offset array representing
  #     a point or vector.
  #
  # @overload offset!(vector)
  #
  #   @param [Geom::Vector2d] vector A Vector2d object used to offset the point.
  #   @return [Array(Length, Length)] The newly offset array representing a point
  #     or vector.
  #
  # @overload offset!(vector, length)
  #
  #   @param [Geom::Vector2d] vector A Vector2d object used to offset the point.
  #   @param [Length] length An overriding distance for how far to offset.
  #   @return [Array(Length, Length)] The newly offset array representing a point
  #     or vector.
  #
  # @raise ArgumentError if the argument is the wrong vector type
  #
  # @version SketchUp 6.0
  def offset!(*args)
  end

  # The {#on_line?} method is used to determine if a {Geom::Point3d} object is on
  # a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a true or false value
  #   on_plane = array.on_line?(line)
  #
  # @overload on_line?(point1, point2)
  #
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point1
  #   @return [Boolean] +true+ if the point is on the line, +false+ if the
  #     point is not on the line.
  #
  # @overload on_line?(point, vector)
  #
  #   @param [Geom::Point3d] point
  #   @param [Geom::Vector3d] vector
  #   @return [Boolean] +true+ if the point is on the line, +false+ if the
  #     point is not on the line.
  #
  # @return [Boolean]
  #
  # @see Geom
  #   The Geom module for instructions on how to create a line.
  #
  # @version SketchUp 6.0
  def on_line?(*args)
  end

  # The {#on_plane?} method is used to determine if a {Geom::Point3d} object is
  # on a plane (to within SketchUp's standard floating point tolerance).
  #
  # @example
  #   plane = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a true or false value
  #   on_plane = array.on_plane?(plane)
  #
  # @overload on_plane?(point1, point2, point3)
  #
  #   Plane defined by three points.
  #   @note The three points should not be co-linear or duplicate.
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point2
  #   @param [Geom::Point3d] point3
  #
  # @overload on_plane?(point, vector)
  #
  #   Plane defined by
  #   @param [Geom::Point3d] point
  #   @param [Geom::Vector3d] vector
  #
  # @overload on_plane?(array)
  #
  #   Plane defined by three points.
  #   @note The three points should not be co-linear or duplicate.
  #   @param [Array<Geom::Point3d, Geom::Vector3d>] point
  #
  # @overload on_plane?(float1, float2, float3, float4)
  #
  #   Plane defined by its coefficents.
  #   @param [Float] float1
  #   @param [Float] float2
  #   @param [Float] float3
  #   @param [Float] float4
  #
  # @overload on_plane?(array)
  #
  #   Plane defined by its coefficents.
  #   @param [Array<Float, Float, Float, Float>] point
  #
  # @overload on_plane?(array)
  #
  #   Plane defined by three points.
  #   @param [Array<Geom::Point3d, Geom::Point3d, Geom::Point3d>] point
  #
  # @return [Boolean]
  #
  # @see Geom
  #   The Geom module for instructions on how to create a plane.
  #
  # @version SketchUp 6.0
  def on_plane?(*args)
  end

  # The {#project_to_line} method is used to retrieve the projection of a
  # {Geom::Point3d} object onto a line.
  #
  # @example
  #   line = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   # This will return a new Array
  #   point_on_line = array.project_to_line(line)
  #
  # @overload project_to_line(point1, point2)
  #
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point1
  #   @return [Array(Length, Length, Length)] A new  point on the line that is
  #     closest to this point
  #
  # @overload project_to_line(point, vector)
  #
  #   @param [Geom::Point3d] point
  #   @param [Geom::Vector3d] vector
  #   @return [Array(Length, Length, Length)] A new  point on the line that is
  #     closest to this point
  #
  # @see Geom
  #   The Geom module for instructions on how to create a line.
  #
  # @version SketchUp 6.0
  def project_to_line(*args)
  end

  # The {#project_to_plane} method retrieves the projection of a {Geom::Point3d}
  # onto a plane.
  #
  # @example
  #   plane = [Geom::Point3d.new(0, 0, 0), Geom::Vector3d.new(0, 0, 1)]
  #   array = [10, 10, 10]
  #   point_on_plane = array.project_to_plane(plane)
  #
  # @overload project_to_plane(array)
  #
  #   Plane defined by its coefficents.
  #   @param [Array(Float, Float, Float, Float)] point
  #   @return [Array(Length, Length, Length)]
  #
  # @overload project_to_plane(point, vector)
  #
  #   Plane defined by
  #   @param [Geom::Point3d] point
  #   @param [Geom::Vector3d] vector
  #   @return [Array(Length, Length, Length)]
  #
  # @overload project_to_plane(point1, point2, point3)
  #
  #   Plane defined by three points.
  #   @note The three points should not be co-linear or duplicate.
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point2
  #   @param [Geom::Point3d] point3
  #   @return [Array(Length, Length, Length)]
  #
  # @overload project_to_plane(array)
  #
  #   Plane defined by three points.
  #   @param [Array(Geom::Point3d, Geom::Point3d, Geom::Point3d)] point
  #   @return [Array(Length, Length, Length)]
  #
  # @overload project_to_plane(array)
  #
  #   Plane defined by three points.
  #   @note The three points should not be co-linear or duplicate.
  #   @param [Array(Geom::Point3d, Geom::Vector3d)] point
  #   @return [Array(Length, Length, Length)]
  #
  # @overload project_to_plane(float1, float2, float3, float4)
  #
  #   Plane defined by its coefficents.
  #   @param [Float] float1
  #   @param [Float] float2
  #   @param [Float] float3
  #   @param [Float] float4
  #   @return [Array(Length, Length, Length)]
  #
  # @see Geom
  #   The Geom module for instructions on how to create a plane.
  #
  # @version SketchUp 6.0
  def project_to_plane(*args)
  end

  # The {#transform} method is used to apply a {Geom::Transformation} object to a
  # {Geom::Point3d} object defined by an {Array} object.
  #
  # This method returns a new {Array} object instead of modifying the original.
  #
  # @example
  #   point1 = Geom::Point3d.new(10, 20, 30)
  #   transform = Geom::Transformation.new(point1)
  #   array = [1, 2, 3]
  #   # This will return a new Array
  #   point2 = array.transform(transform)
  #
  # @param [Geom::Transformation] transform
  #
  # @return [Array(Length, Length, Length)] The newly transformed point.
  #
  # @version SketchUp 6.0
  def transform(transform)
  end

  # The {#transform!} method is used to apply a {Geom::Transformation} object to
  # a {Geom::Point3d} object defined by an {Array} object.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   transform = Geom::Transformation.new(point)
  #   array = [1, 2, 3]
  #   # This will modify 'array' in place
  #   array.transform!(transform)
  #
  # @note This method modifies the original.
  #
  # @param [Geom::Transformation] transform
  #
  # @return [Array] The newly transformed point.
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The {#vector_to} method is used to create an array as a vector from one point
  # to a second point.
  #
  # @example With 2d array
  #   point = Geom::Point2d.new(10, 20)
  #   array = [1, 2]
  #   # This will return a new Vector2d
  #   vector = array.vector_to(point)
  #
  #   point = Geom::Point3d.new(10, 20)
  #   # This will return a new Vector3d
  #   vector = array.vector_to(point)
  #
  # @example With 3d array
  #   point = Geom::Point3d.new(10, 20, 30)
  #   array = [1, 2, 3]
  #   # This will return a new Vector3d
  #   vector = array.vector_to(point)
  #
  # @overload vector_to(point)
  #
  #   @param [Geom::Point3d] point
  #   @return [Geom::Vector3d]
  #
  # @overload vector_to(point)
  #
  #   @param [Geom::Point2d] point
  #   @return [Geom::Vector2d]
  #
  # @raise ArgumentError if the argument is the wrong point type
  #
  # @version SketchUp 6.0
  def vector_to(point)
  end

  # The {#x} method retrieves the x coordinate.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a Fixnum, in this case 1
  #   x = array.x
  #
  #   array = [1.0, 2.0, 3.0]
  #   # This will return a Float, in this case 1.0
  #   x = array.x
  #
  # @return [Object, nil] The x coordinate if successful
  #
  # @version SketchUp 6.0
  def x
  end

  # The {#x=} method sets the x coordinate.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will initialize the x value as a Float
  #   array.x = 2.5
  #   # This will initialize the x value as a Fixnum
  #   array.x = 5
  #
  # @param [Object] x
  #   The new x position.
  #
  # @return [Object] The new x coordinate if successful
  #
  # @version SketchUp 6.0
  def x=(x)
  end

  # The {#y} method retrieves the y coordinate.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a Fixnum, in this case 2
  #   y = array.y
  #
  #   array = [1.0, 2.0, 3.0]
  #   # This will return a Float, in this case 2.0
  #   y = array.y
  #
  # @return [Object, nil] The y coordinate if successful
  #
  # @version SketchUp 6.0
  def y
  end

  # The {#y=} method sets the y coordinate.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will initialize the y value as a Float
  #   array.y = 2.5
  #   # This will initialize the y value as a Fixnum
  #   array.y = 5
  #
  # @param [Object] y
  #   The new y position.
  #
  # @return [Object] The new y coordinate if successful
  #
  # @version SketchUp 6.0
  def y=(y)
  end

  # The {#z} method retrieves the z coordinate.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will return a Fixnum, in this case 3
  #   z = array.z
  #
  #   array = [1.0, 2.0, 3.0]
  #   # This will return a Float, in this case 3.0
  #   z = array.z
  #
  # @return [Object, nil] The z coordinate if successful
  #
  # @version SketchUp 6.0
  def z
  end

  # The {#z=} method sets the z coordinate.
  #
  # @example
  #   array = [1, 2, 3]
  #   # This will initialize the z value as a Float
  #   array.z = 2.5
  #   # This will initialize the z value as a Fixnum
  #   array.z = 5
  #
  # @param [Object] z
  #   The new z position.
  #
  # @return [Object] The new z coordinate if successful
  #
  # @version SketchUp 6.0
  def z=(z)
  end

end

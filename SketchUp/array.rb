# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Array

  # Instance Methods

  # The {#cross} method is used to compute the cross product between two vectors.
  #
  # @example 
  #   vector1 = Geom::Vector3d.new(0, 1, 0)
  #   array = [1, 0, 0]
  #   # This will return a new Vector3d
  #   vector2 = array.cross(vector1)
  #
  # @param [Geom::Vector3d] vector
  #
  # @return [Geom::Vector3d] 
  #
  # @version SketchUp 6.0
  def cross(vector)
  end

  # The {#distance} method is used to compute the distance between two points.
  #
  # @example 
  #   point = Geom::Point3d.new(10, 10, 10)
  #   array = [1, 1, 1]
  #   # This will return a Length
  #   distance = array.distance(point)
  #
  # @param [Geom::Point3d] point
  #
  # @return [Length] 
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
  # @example 
  #   vector = Geom::Vector3d.new(0, 1, 0)
  #   array = [1, 0, 0]
  #   # This will return a Float, in this case 22.0
  #   dot_product = array.dot(vector)
  #
  # @param [Geom::Vector3d] vector
  #
  # @return [Float] 
  #
  # @version SketchUp 6.0
  def dot(vector)
  end

  # The {#normalize} method is used to normalize a vector (setting its
  # length to 1). It returns a new array rather than changing the original in
  # place.
  #
  # @example 
  #   array = [1, 2, 3]
  #   # This will return a new Vector3d
  #   normal_vector = array.normalize
  #
  # @note The arguments and return value will be converted to a floating point
  #   value. (Unlike in the {Geom::Vector3d#normalize!} method.)
  #
  # @return [Array(Float, Float, Float)] An array object representing a vector
  #
  # @version SketchUp 6.0
  def normalize
  end

  # The {#normalize!} method is used to normalize a vector in place (setting its
  # length to 1).
  #
  # @example 
  #   array = [1, 2, 3]
  #   # This will modify 'array' in place
  #   array.normalize!
  #
  # @return [Array] 
  #
  # @version SketchUp 6.0
  def normalize!
  end

  # The {#offset} method is used to offset a point by a vector. it returns a new
  # array rather than modifying the original in place.
  #
  # @example 
  #   array = [10, 10, 10]
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   # This will return a new Array
  #   point = array.offset(vector)
  #
  # @overload offset!(vector)
  # 
  #   @param [Geom::Vector3d] vector A Vector3d object used to offset the point.
  #   @return [Array(Length, Length, Length)] The newly offset point or vector.
  #
  # @overload offset!(vector, length)
  # 
  #   @param [Geom::Vector3d] vector A Vector3d object used to offset the point.
  #   @param [Length] length An overriding distance for how far to offset.
  #   @return [Array(Length, Length, Length)] The newly offset point or vector.
  #
  # @version SketchUp 6.0
  def offset(*args)
  end

  # The {#offset!} method is used to offset a point by a vector. The array is
  # modified in place.
  #
  # @example 
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
  # @example 
  #   point = Geom::Point3d.new(10, 20, 30)
  #   array = [1, 2, 3]
  #   # This will return a new Vector3d
  #   vector = array.vector_to(point)
  #
  # @param [Geom::Point3d] point
  #
  # @return [Geom::Vector3d] 
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
  # @param x
  #   The new x position.
  #
  # @return The new x coordinate if successful
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
  # @param y
  #   The new y position.
  #
  # @return The new y coordinate if successful
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
  # @param z
  #   The new z position.
  #
  # @return The new z coordinate if successful
  #
  # @version SketchUp 6.0
  def z=(z)
  end

end

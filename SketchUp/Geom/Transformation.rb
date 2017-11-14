# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Transformations are a standard construct in the 3D world for representing
# the position, rotation, and sizing of a given entity. In the SketchUp
# world, {Sketchup::ComponentInstance} and {Sketchup::Group} have a
# +.transformation+ method that reports their current state and various methods
# (+.move!+, +transformation=+, etc.) that allow them to be manipulated.
#
# Use of the transformation class requires a knowledge of geometrical
# transformations in 3 dimensions which is covered extensively on
# the Internet.
#
# @version SketchUp 6.0
class Geom::Transformation

  # Class Methods

  # The axes method creates a transformation that goes from world coordinates
  # to an arbitrary coordinate system defined by an origin and three axis
  # vectors.
  #
  # @example
  #   # Creates a transformation that "flips" the axes from XYZ to XZY. Something
  #   # one often need for importers/exporters when dealing with applications
  #   # that threat Y as "up".
  #   tr = Geom::Transformation.axes(ORIGIN, X_AXIS, Z_AXIS, Y_AXIS.reverse)
  #
  # @overload axes(origin, xaxis, yaxis, zaxis)
  #
  #   @param [Geom::Point3d] origin
  #   @param [Geom::Vector3d] xaxis
  #   @param [Geom::Vector3d] yaxis
  #   @param [Geom::Vector3d] zaxis
  #   @return [Geom::Transformation]
  #
  # @overload axes(origin, xaxis, yaxis)
  #
  #   When the Z axis is omitted and arbitrary axis is computed from the X and Y
  #   axes.
  #   @param [Geom::Point3d] origin
  #   @param [Geom::Vector3d] xaxis
  #   @param [Geom::Vector3d] yaxis
  #   @return [Geom::Transformation]
  #
  # @raise [ArgumentError] if any of the vectors are zero length.
  #
  # @version SketchUp 6.0
  def self.axes(*args)
  end

  # The interpolate method is used to create a new transformation that is the
  # result of interpolating between two other transformations.
  #
  # Parameter is a weight (between 0.0 and 1.0) that identifies whether to favor
  # transformation1 or transformation2.
  #
  # @example
  #   origin = Geom::Point3d.new(0, 0, 0)
  #   x = Geom::Vector3d.new(0, 1, 0)
  #   y = Geom::Vector3d.new(1, 0, 0)
  #   z = Geom::Vector3d.new(0, 0, 1)
  #   point = Geom::Point3d.new(10, 20, 30)
  #   t1 = Geom::Transformation.new(point)
  #   t2 = Geom::Transformation.axes(origin, x, y, z)
  #   # This produce a transformation that is a mix of 75% t1 and 25% t2.
  #   t3 = Geom::Transformation.interpolate(t1, t2, 0.25)
  #
  # @param [Geom::Transformation] transform1
  #
  # @param [Geom::Transformation] transform2
  #
  # @param [Float] weight
  #   A value between 0.0 and 1.0 (see comments).
  #
  # @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def self.interpolate(transform1, transform2, weight)
  end

  # The rotation method is used to create a transformation that does rotation
  # about an axis.
  #
  # The axis is defined by a point and a vector. The angle is given in radians.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 0)
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   angle = 45.degrees # Return 45 degrees in radians.
  #   transformation = Geom::Transformation.rotation(point, vector, angle)
  #
  # @param [Geom::Point3d] point
  #
  # @param [Geom::Vector3d] vector
  #
  # @param [Float] angle
  #   The angle in radians.
  #
  # @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def self.rotation(point, vector, angle)
  end

  # The scaling method is used to create a transformation that does scaling.
  #
  # @example
  #   point = Geom::Point3d.new(20, 30, 0)
  #   scale = 10
  #   tr = Geom::Transformation.scaling(point, scale)
  #
  # @overload scaling(scale)
  #
  #   @note This has been fixed in SketchUp 2018 but in previous versions it
  #     might yield an unexpected transformation. It sets the 16th value
  #     to the scaling factor. Something not all extensions reading the
  #     transformation expects. Consider using +scaling(xscale, yscale, zscale)+
  #     instead.
  #   With one argument, it does a uniform scale about the origin.
  #   @param [Float] scale  The global scale factor for the transform.
  #   @return [Geom::Transformation]
  #
  # @overload scaling(xscale, yscale, zscale)
  #
  #   With three arguments, it does a non-uniform scale about the origin.
  #   @param [Float] xscale  The scale factor in the x direction for the transform.
  #   @param [Float] yscale  The scale factor in the y direction for the transform.
  #   @param [Float] zscale  The scale factor in the z direction for the transform.
  #   @return [Geom::Transformation]
  #
  # @overload scaling(point, xscale, yscale, zscale)
  #
  #   With four arguments it does a non-uniform scale about an arbitrary point.
  #   @param [Geom::Point3d] point
  #   @param [Float] xscale  The scale factor in the x direction for the transform.
  #   @param [Float] yscale  The scale factor in the y direction for the transform.
  #   @param [Float] zscale  The scale factor in the z direction for the transform.
  #   @return [Geom::Transformation]
  #
  # @overload scaling(point, scale)
  #
  #   With two arguments, it does a uniform scale about an arbitrary point.
  #   @param [Geom::Point3d] point
  #   @param [Float] scale  The global scale factor for the transform.
  #   @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def self.scaling(*args)
  end

  # The translation method is used to create a transformation that does
  # translation.
  #
  # @example
  #   vector = Geom::Vector3d.new(0, 1, 0)
  #   tr = Geom::Transformation.translation(vector)
  #
  # @overload translation(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Geom::Transformation]
  #
  # @overload translation(point)
  #
  #   @param [Geom::Point3d] point
  #   @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def self.translation(arg)
  end

  # Instance Methods

  # The {#*} method is used to do matrix multiplication using the transform.
  #
  # @example
  #   point1 = Geom::Point3d.new(10, 20, 30)
  #   point2 = Geom::Point3d.new(2, 2, 2)
  #   tr = Geom::Transformation.new(point1)
  #   # Returns Point3d(12, 22, 32)
  #   point3 = tr * point2
  #
  # @overload *(point)
  #
  #   @param [Geom::Point3d] point
  #   @return [Geom::Point3d]
  #
  # @overload *(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Geom::Vector3d]
  #
  # @overload *(transformation)
  #
  #   @param [Geom::Transformation] transformation
  #   @return [Geom::Transformation]
  #
  # @overload *(plane)
  #
  #   @param [Array<Float, Float, Float, Float>] plane
  #   @return [Array<Float, Float, Float, Float>] transformed plane
  #
  # @overload *(plane)
  #
  #   @param [Array<Geom::Point3d, Geom::Vector3d>] plane
  #   @return [Array<Float, Float, Float, Float>] transformed plane
  #
  # @overload *(point)
  #
  #   @param [Array<Float, Float, Float>] point
  #   @return [Geom::Point3d]
  #
  # @version SketchUp 6.0
  def *(arg)
  end

  # The {#clone} method is used to create a copy of a transformation.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr1 = Geom::Transformation.new(point)
  #   tr2 = tr1.clone
  #
  # @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def clone
  end

  # The {#identity?} method is used to determine if a transformation is the
  # {IDENTITY} transform.
  #
  # @example
  #   tr = Geom::Transformation.new(ORIGIN)
  #   # Returns false.
  #   status = tr.identity?
  #
  # @example
  #   # Returns true.
  #   status = IDENTITY.identity?
  #
  # @example
  #   tr = Geom::Transformation.new
  #   # Returns true.
  #   status = tr.identity?
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #   # Returns false.
  #   status = tr.identity?
  #
  # @note As of SketchUp 2018, this now looks at the data to determine if the
  #   transformation is identity. Prior to SU2018, this only looks at the flag to
  #   see if the transform has not been modified. If the transform has been
  #   changed, this will return false even if it is really the identity.
  #
  # @return [Boolean] +true+ if the transformation is the identity
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def identity?
  end

  # The new method is used to create a new transformation.
  #
  # You can use this method or one of the more specific methods for creating
  # specific kinds of Transformations.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #
  # @overload initialize
  #
  #   @return [Geom::Transformation] identity Transformation.
  #
  # @overload initialize(point)
  #
  #   Translates the origin to point.
  #   @param [Geom::Point3d] point
  #   @return [Geom::Transformation]
  #
  # @overload initialize(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Geom::Transformation]
  #
  # @overload initialize(transform)
  #
  #   Creates a Transformation that is a copy of another Transformation. This is
  #   equivalent to {#clone}.
  #   @param [Geom::Transformation] transform
  #   @return [Geom::Transformation]
  #
  # @overload initialize(array)
  #
  #   @param [Array<Float>] Creates a Transformation from a 16 element Array.
  #   @return [Geom::Transformation]
  #
  # @overload initialize(xaxis, yaxis, zaxis, origin)
  #
  #   @param [Geom::Vector3d] xaxis
  #   @param [Geom::Vector3d] yaxis
  #   @param [Geom::Vector3d] zaxis
  #   @param [Geom::Point3d] origin
  #   @return [Geom::Transformation]
  #
  # @overload initialize(origin, zaxis)
  #
  #   Creates a Transformation where origin is the new origin, and zaxis is the
  #   z axis. The x and y axes are determined using an arbitrary axis rule.
  #   @param [Geom::Point3d] origin
  #   @param [Geom::Vector3d] zaxis
  #   @return [Geom::Transformation]
  #
  # @overload initialize(origin, xaxis, yaxis)
  #
  #   Creates a Transformation given a new origin, x axis and y axis.
  #   @param [Geom::Point3d] origin
  #   @param [Geom::Vector3d] xaxis
  #   @param [Geom::Vector3d] yaxis
  #   @return [Geom::Transformation]
  #
  # @overload initialize(pt, axis, angle)
  #
  #   Creates a Transformation that rotates by angle (given in radians) about a
  #   line defined by pt and axis.
  #   @param [Geom::Point3d] origin
  #   @param [Geom::Vector3d] axis
  #   @param [Float] angle
  #   @return [Geom::Transformation]
  #
  # @overload initialize(scale)
  #
  #   Creates a transformation that does uniform scaling.
  #   @note Versions prior to SU2018 would produce transformations which
  #     didn't always work right in SketchUp. See {.scaling} for more info.
  #   @param [Float] scale
  #   @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The {#inverse} method is used to retrieve the inverse of a transformation.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr1 = Geom::Transformation.new(point)
  #   tr2 = tr1.inverse
  #
  # @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def inverse
  end

  # The {#invert!} method sets the transformation to its inverse.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #   tr.invert!
  #
  # @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def invert!
  end

  # The {#origin} method retrieves the origin of a rigid transformation.
  #
  # @example
  #   point1 = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point1)
  #   point2 = tr.origin
  #
  # @return [Geom::Point3d] the origin of the transformation.
  #
  # @version SketchUp 6.0
  def origin
  end

  # The {#set!} method is used to set this transformation to match another one.
  #
  # The argument is anything that can be converted into a transformation.
  #
  # @example
  #   point1 = Geom::Point3d.new(10, 20, 30)
  #   tr1 = Geom::Transformation.new(point)
  #   point2 = Geom::Point3d.new(60, 40, 70)
  #   tr1.set!(point2)
  #
  # @overload set!(transformation)
  #
  #   @param [Geom::Transformation] transformation
  #   @return [Geom::Transformation]
  #
  # @overload set!(point)
  #
  #   @param [Geom::Point3d] point
  #   @return [Geom::Transformation]
  #
  # @overload set!(scale)
  #
  #   @param [Float] scale
  #   @return [Geom::Transformation]
  #
  # @overload set!(matrix)
  #
  #   @param [Array<Float>] matrix  Array of 16 floats.
  #   @return [Geom::Transformation]
  #
  # @overload set!(vector)
  #
  #   @param [Geom::Vector3d] vector
  #   @return [Geom::Transformation]
  #
  # @version SketchUp 6.0
  def set!(arg)
  end

  # The {#to_a} method retrieves a 16 element array which contains the values that
  # define the transformation.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #   # This splits the 16 items into a string of 4x4 elements for easier reading.
  #   str4x4 = tr.to_a.each_slice(4).inject { |str, row| "#{str}\r\n#{row}" }
  #
  # @return [Array<Float>]
  #
  # @version SketchUp 6.0
  def to_a
  end

  # The {#xaxis} method retrieves the x axis of a rigid transformation.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #   x = tr.xaxis
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def xaxis
  end

  # The {#yaxis} method retrieves the y axis of a rigid transformation.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #   x = tr.yaxis
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def yaxis
  end

  # The {#zaxis} method retrieves the z axis of a rigid transformation.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   tr = Geom::Transformation.new(point)
  #   x = tr.zaxis
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 6.0
  def zaxis
  end

end

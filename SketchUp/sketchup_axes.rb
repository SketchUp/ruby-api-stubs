# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# SketchUp's drawing axes consist of three colored lines (red, green, blue),
# usually perpendicular to each other, displayed in the drawing area. The
# exception is when the user open an instance with a non-orthogonal
# transformation. The root model transformation is always orthogonal.
#
# The drawing axes are used by drawing tools to align the geometry it creates
# as well as affecting the inference engine.
#
# The plane where the red and green axes lines lie is called the ground plane.
# The term origin, is used to define the place where all of axes lines start or
# originate.
#
# @version SketchUp 2016
class Sketchup::Axes < Sketchup::Entity

  # Instance Methods

  # The axes method returns the vectors representing the directions of the axes.
  #
  # @example
  #   xaxis, yaxis, zaxis = Sketchup.active_model.axes.axes
  #
  # @return Array - an array of three vectors.
  #
  # @version SketchUp 2016
  def axes
  end

  # The origin method returns the origin of the axes.
  #
  # @example
  #   point = Sketchup.active_model.axes.origin
  #
  # @return Point3d - the origin for the axes.
  #
  # @version SketchUp 2016
  def origin
  end

  # The set method allows the axes to be manipulated. The axes must always be
  # orthogonal, otherwise an error is thrown.
  #
  # @example
  #   xaxis = Geom::Vector3d.new(3, 5, 0)
  #   yaxis = xaxis * Z_AXIS
  #   Sketchup.active_model.axes.set([10,0,0], xaxis, yaxis, Z_AXIS)
  #
  # @param origin
  #   Point3d - The origin to set.
  #
  # @param xaxis
  #   Vector3d - The x axis to set.
  #
  # @param zaxis
  #   Vector3d - The z axis to set.
  #
  # @param yaxis
  #   Vector3d - The y axis to set.
  #
  # @return Axes - the axes object being set.
  #
  # @version SketchUp 2016
  def set(origin, xaxis, yaxis, zaxis)
  end

  # The sketch_plane method returns a plane representing the ground plane of the
  # axes.
  #
  # @example
  #   plane = Sketchup.active_model.axes.sketch_plane
  #
  # @return Array - of 4 numbers that give the coefficients of a
  #   plane equation.
  #
  # @version SketchUp 2016
  def sketch_plane
  end

  # The axes method returns the origin and vectors representing the axes.
  #
  # @example
  #   point, xaxis, yaxis, zaxis = Sketchup.active_model.axes.to_a
  #
  # @return Array - an array of a point and three vectors.
  #
  # @version SketchUp 2016
  def to_a
  end

  # The transformation method returns the transformation of the axes. This is
  # useful when creating tools that respect the model's drawing axes.
  #
  # @example
  #   # Point for a rectangle.
  #   points = [
  #     Geom::Point3d.new( 0,  0, 0),
  #     Geom::Point3d.new(10,  0, 0),
  #     Geom::Point3d.new(10, 20, 0),
  #     Geom::Point3d.new( 0, 20, 0)
  #   ]
  #   # Transform the points so they are local to the model axes. Otherwise
  #   # they would be local to the model origin.
  #   tr = Sketchup.active_model.axes.transformation
  #   points.each { |point| point.transform!(tr) }
  #   Sketchup.active_model.active_entities.add_face(points)
  #
  # @return Transformation - the transformation for the axes.
  #
  # @version SketchUp 2016
  def transformation
  end

  # The xaxis method returns the x axis of the axes.
  #
  # @example
  #   vector = Sketchup.active_model.axes.xaxis
  #
  # @return Vector3d - the x axis for the axes.
  #
  # @version SketchUp 2016
  def xaxis
  end

  # The yaxis method returns the y axis of the axes.
  #
  # @example
  #   vector = Sketchup.active_model.axes.yaxis
  #
  # @return Vector3d - the y axis for the axes.
  #
  # @version SketchUp 2016
  def yaxis
  end

  # The zaxis method returns the z axis of the axes.
  #
  # @example
  #   vector = Sketchup.active_model.axes.zaxis
  #
  # @return Vector3d - the z axis for the axes.
  #
  # @version SketchUp 2016
  def zaxis
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Geom::PolygonMesh

  # Constants

  AUTO_SOFTEN = nil # Stub value.
  HIDE_BASED_ON_INDEX = nil # Stub value.
  NO_SMOOTH_OR_HIDE = nil # Stub value.
  SMOOTH_SOFT_EDGES = nil # Stub value.
  SOFTEN_BASED_ON_INDEX = nil # Stub value.

  # Instance Methods

  # The add_point method is used to add a point to the mesh.
  # 
  # The index can be used for creating polygons.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point = Geom::Point3d.new(0, 1, 2)
  #   index = mesh.add_point(point)
  #
  # @param point
  #   A Point3d object.
  #
  # @return index - the index in the mesh for the point
  #
  # @version SketchUp 6.0
  def add_point(point)
  end

  # The add_polygon method is used for adding a polygon to a polygon mesh.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(1, 0, 2)
  #   point3 = Geom::Point3d.new(2, 0, 1)
  #   index = mesh.add_polygon(point1, point2, point3)
  #
  # @param points
  #   A list of points that represent the polygon's vertices.
  #
  # @return index - the index of the polygon in the mesh if
  #   successful.
  #
  # @version SketchUp 6.0
  def add_polygon(points)
  end

  # The count_points method is used to count the number of points in a mesh.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point = Geom::Point3d.new(0, 1, 2)
  #   mesh.add_point(point)
  #   num = mesh.count_points
  #
  # @return points - the number of points in a mesh, if successful.
  #
  # @version SketchUp 6.0
  def count_points
  end

  # The count_polygons count the number of polygons in the mesh.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(1, 0, 2)
  #   point3 = Geom::Point3d.new(2, 0, 1)
  #   mesh.add_polygon(point1, point2, point3)
  #   nump = mesh.count_polygons
  #
  # @return polygons - the number of polygons in the mesh, if
  #   successful
  #
  # @version SketchUp 6.0
  def count_polygons
  end

  # Create a new empty polygon mesh. The number of points and polygons are
  # optional and are just used as a hint to decide how much space to
  # pre-allocate to speed up adding points and polygons.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #
  # @param [optional] numpts
  #   How many points will be in the mesh.
  #
  # @param [optional] numpolys
  #   How many polygons will be in the mesh.
  #
  # @return mesh - the new PolygonMesh.
  #
  # @version SketchUp 6.0
  def initialize(numpts, numpolys)
  end

  # The normal_at method is used to determine the normal at a particular
  # index in the mesh. This only works for meshes retrieved from Sketchup::Face.mesh.
  # 
  # Index is 1 based (starts at 1).
  #
  # @example 
  #   mesh = face.mesh(4)
  #   normal = mesh.normal_at(1)
  #
  # @param index
  #   The index in the mesh where the normal is that you want
  #   to retrieve.
  #
  # @return normal - a normal on success, nil on failure
  #
  # @version SketchUp 6.0
  def normal_at(index)
  end

  # The point_at method is used to retrieve the point at a specific index in the
  # mesh.
  # 
  # Index is 1 based (starts at 1).
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   mesh.add_point(point1)
  #   mesh.add_point(point2)
  #   point_from_index = mesh.point_at(1)
  #
  # @param index
  #   The index in the mesh where the point is that you want
  #   to retrieve.
  #
  # @return point - a Point3d object on success, nil on failure
  #
  # @version SketchUp 6.0
  def point_at(index)
  end

  # The point_index method is used to retrieve the index of a point in the mesh.
  # 
  # Returns 0 if point is not found.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   mesh.add_point(point1)
  #   mesh.add_point(point2)
  #   index = mesh.point_index(point2)
  #
  # @param point
  #   A Point3d object.
  #
  # @return index - the index in the mesh for the Point3d object
  #
  # @version SketchUp 6.0
  def point_index(point)
  end

  # The points method is used to retrieve an array of points (vertices) in the
  # mesh
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   mesh.add_point(point1)
  #   mesh.add_point(point2)
  #   # Returns array of points in the mesh.
  #   num = mesh.points
  #
  # @return points - an array of points (vertices) if successful
  #
  # @version SketchUp 6.0
  def points
  end

  # The polygon_at method is used to retrieve an array of vertex index values
  # for a polygon at a specific index.
  # 
  # Index is 1 based (starts at 1).  The returned array can contain negative
  # values with the sign indicating a hidden edge. For example, a return value
  # of [-1, 2, 3] indicates that the edge from 1 to 2 is hidden. The negative
  # values should not be used as an index for point_at, take the positive value
  # of the index value in the polygon array.  So if you get [-1, 2,3] use 1 as
  # the arg to point_at.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(1, 0, 2)
  #   point3 = Geom::Point3d.new(2, 0, 1)
  #   index = mesh.add_polygon(point1, point2, point3)
  #   polygon = mesh.polygon_at(index)
  #
  # @param index
  #   The index of the desired polygon.
  #
  # @return vertices - an array of vertex index values if successful
  #   nil on failure
  #
  # @version SketchUp 6.0
  def polygon_at(index)
  end

  # The polygon_points_at method is used to retrieve the points for a polygon
  # that is at a specific index in the mesh.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(1, 0, 2)
  #   point3 = Geom::Point3d.new(2, 0, 1)
  #   index = mesh.add_polygon(point1, point2, point3)
  #   points = mesh.polygon_points_at(index)
  #
  # @param index
  #   An index for a polygon in the mesh.
  #
  # @return points - an array of points that make up the polygon if
  #   successful, nil on failure
  #
  # @version SketchUp 6.0
  def polygon_points_at(index)
  end

  # The polygons method is used to retrieve an array of all polygons in the
  # mesh.
  # 
  # The returned array can contain negative values with the sign indicating a
  # hidden edge. For example, a return value of [-1, 2, 3] indicates that the
  # edge from 1 to 2 is hidden.
  #
  # @example 
  #   polygons = polygonmesh.polygons
  #
  # @return polygons - an array of polygons if successful
  #
  # @version SketchUp 6.0
  def polygons
  end

  # The set_point method is used to set the point at a specific index in the
  # mesh.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   index = mesh.add_point(point1)
  #   mesh.set_point(index, point2)
  #
  # @param index
  #   The index where the point will be set.
  #
  # @param point
  #   A Point3d object to set at the index.
  #
  # @return polygonmesh - a PolygonMesh object
  #
  # @version SketchUp 6.0
  def set_point(index, point)
  end

  # The set_uv method is used to define UV mapping coordinates to points in
  # the mesh.
  # 
  # Beware that the polygons connected to the point will share UV coordiates so
  # UV mapping coordinates needs to be continuous across the polygon mesh.
  # 
  # When setting the UV for a point one need to make sure to have the correct
  # index for the point. It's therefore best to add the points using add_point
  # and use the index it returns for following calls to set_uv and add_polygon.
  # 
  # NOTE: If you don't specify how many points you will be adding to the mesh
  # when you initiate it you may risk the UV data becoming out of sync.
  # 
  # If you are not able to calculate how many points there will be in your mesh
  # make sure to not specify an index in set_uv higher than the number of times
  # you have called set_uv.
  #
  # @example 
  #   mesh = Geom::PolygonMesh.new(4)
  #   # Create points for a triangle.
  #   point1 = Geom::Point3d.new(0, 0, 0)
  #   point2 = Geom::Point3d.new(9, 0, 0)
  #   point3 = Geom::Point3d.new(9, 9, 0)
  #   point4 = Geom::Point3d.new(0, 9, 0)
  #   # Create UV mapping to tile 2x cross triangle.
  #   uv1 = Geom::Point3d.new(0, 0, 0)
  #   uv2 = Geom::Point3d.new(2, 0, 0)
  #   uv3 = Geom::Point3d.new(2, 2, 0)
  #   uv4 = Geom::Point3d.new(0, 2, 0)
  #   # Add points and UV data to mesh.
  #   index1 = mesh.add_point(point1)
  #   index2 = mesh.add_point(point2)
  #   index3 = mesh.add_point(point3)
  #   index4 = mesh.add_point(point4)
  #   mesh.set_uv(index1, uv1, true)
  #   mesh.set_uv(index2, uv2, true)
  #   mesh.set_uv(index3, uv3, true)
  #   mesh.set_uv(index4, uv4, true)
  #   # Add polygons.
  #   mesh.add_polygon(index1, index2, index3)
  #   mesh.add_polygon(index1, index3, index4)
  #
  # @param index
  #   An Integer representing the UV index.
  #
  # @param point
  #   A Point3d object representing UV coordinates.
  #
  # @return nil
  #
  # @version SketchUp 2014
  def set_uv(index, point)
  end

  # The transform! method is used to apply a transformation to a mesh.
  #
  # @example 
  #   point1 = Geom::Point3d.new(100, 200, 300)
  #   tr = Geom::Transformation.new(point1)
  #   mesh = Geom::PolygonMesh.new
  #   point2 = Geom::Point3d.new(0, 1, 2)
  #   mesh.add_point(point2)
  #   mesh.transform!(tr)
  #
  # @param transform
  #   A Transformation object.
  #
  # @return polygonmesh - the PolygonMesh object
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The uv_at method is used to access a uv (texture coordinates) at a specific
  # index.
  # 
  # "UVs" is a way of referring to the u,v texture coordinates (as
  # opposed to the X, Y, and Z axis that you construct your meshes on), which
  # are points defining 1-by-1 positions within an image. These coordinates
  # connect to points in your 3D model, to position an image texture onto it's
  # surface (similar to virtual "thumb tacks")
  # 
  # These coordinates pin an exact spot on an image that you wish to use to
  # texture your model to a specific point on an object's surface. Between these
  # points, your software will stretch the image smoothly. This is what is
  # referred to as UV mapping.
  #
  # @example 
  #   point = mesh.uv_at(1, true)
  #
  # @param index
  #   The index for the texture coordinate.
  #
  # @param front
  #   Set to true to get the UV for the front size, false for
  #   the back side.
  #
  # @return point - a Point3d object where the x equals the u value
  #   and the y equals the v value. Returns nil on failure.
  #
  # @version SketchUp 6.0
  def uv_at(index, front)
  end

  # The uvs method is used to retrieve an array of uv coordinates in the
  # mesh.
  #
  # @example 
  #   # Get a mesh with front and back UVs.
  #   mesh = face.mesh(1 | 2)
  #   uvs = mesh.uvs
  #
  # @param [Boolean] front
  #
  # @return points - an array of uv coordinates if successful
  #
  # @version SketchUp 6.0
  def uvs(front)
  end

end

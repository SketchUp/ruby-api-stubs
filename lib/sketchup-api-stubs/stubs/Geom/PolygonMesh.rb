# Copyright:: Copyright 2023 Trimble Inc.
# License:: The MIT License (MIT)

# The {#Geom::PolygonMesh} class contains methods to create polygon mesh
# structures. This is useful if you need to write a custom importer/exporter in
# Ruby that works at the level of triangulated polygons. For example, you can
# determine the triangles that make up a 15-sided {#Sketchup::Face} by using
# this class, or write a {#Sketchup::Importer} that reads a data file, creates
# a mesh from it, and draws faces based on the mesh.
#
# You can construct a mesh manually using the methods of this class, or you
# can get a mesh from a face by calling the {Sketchup::Face#mesh} method. See
# {Sketchup::Entities#add_faces_from_mesh} for an easy way to convert a mesh
# back into faces.
#
# @example
#   entities = Sketchup.active_model.active_entities
#   face = entities.grep(Sketchup::Face).first
#
#   mesh = face.mesh
#
#   group = entities.add_group
#   group.entities.add_faces_from_mesh(mesh)
#
# @note As of SketchUp 2022.0 the new {Sketchup::EntitiesBuilder} interface
#   can be used to generate bulk geometry. It has similar performance as
#   {Geom::PolygonMesh}, but with similar degree of per-entity control as
#   {Sketchup::Entities}.
#
# @see file:pages/generating_geometry.md
#   Guide on Generating Geometry
#
# @version SketchUp 6.0
class Geom::PolygonMesh

  # Constants

  AUTO_SOFTEN = nil # Stub value.
  HIDE_BASED_ON_INDEX = nil # Stub value.
  NO_SMOOTH_OR_HIDE = nil # Stub value.
  SMOOTH_SOFT_EDGES = nil # Stub value.
  SOFTEN_BASED_ON_INDEX = nil # Stub value.

  MESH_NORMALS = nil # Stub value.
  MESH_POINTS = nil # Stub value.
  MESH_UVQ_BACK = nil # Stub value.
  MESH_UVQ_FRONT = nil # Stub value.

  # Instance Methods

  # The {#add_point} method is used to add a point to the mesh.
  #
  # The returned index can be used for creating polygons.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point = Geom::Point3d.new(0, 1, 2)
  #   index = mesh.add_point(point)
  #
  # @note In SketchUp 2021.1 this method was improved to be faster.
  #   See {#initialize} for details.
  #
  # @param [Geom::Point3d] point
  #
  # @return [Integer] the index in the mesh for the point
  #
  # @version SketchUp 6.0
  def add_point(point)
  end

  # The {#add_polygon} method is used for adding a polygon to a
  # {Geom::PolygonMesh}. All variations of this method require at least 3 elements
  # to define a polygon, although more may be given.
  #
  # @note In SketchUp 2021.1 this method was improved to be faster.
  #   See {#initialize} for details.
  #
  # @overload add_polygon(index, index, index, ...)
  #
  #   Adds a polygon from a list of the mesh's vertex indices.
  #   @example
  #     mesh = Geom::PolygonMesh.new
  #     # add points to mesh...
  #     mesh.add_point(Geom::Point3d.new(0, 0, 0))
  #     mesh.add_point(Geom::Point3d.new(1, 0, 0))
  #     mesh.add_point(Geom::Point3d.new(1, 1, 0))
  #     polygon_index = mesh.add_polygon(1, 2, 3)
  #   @param [Integer] index
  #     An index of a vertex in the mesh. Remember that mesh indices start at 1.
  #   @param [Integer] ...
  #     Additional indices (optional)
  #
  # @overload add_polygon(index_array)
  #
  #   Adds a polygon from an Array of the mesh's vertex indices.
  #   @example
  #     mesh = Geom::PolygonMesh.new
  #     # add points to mesh...
  #     mesh.add_point(Geom::Point3d.new(0, 0, 0))
  #     mesh.add_point(Geom::Point3d.new(1, 0, 0))
  #     mesh.add_point(Geom::Point3d.new(1, 1, 0))
  #     polygon_index = mesh.add_polygon([1, 2, 3])
  #   @param [Array<Integer>] index_array
  #     An {Array} of point indices.
  #
  # @overload add_polygon(point3d, point3d, point3d, ...)
  #
  #   Adds a polygon from a list of Point3d objects.
  #   @example
  #     mesh = Geom::PolygonMesh.new
  #     point1 = Geom::Point3d.new(0, 1, 2)
  #     point2 = Geom::Point3d.new(1, 0, 2)
  #     point3 = Geom::Point3d.new(2, 0, 1)
  #     polygon_index = mesh.add_polygon(point1, point2, point3)
  #   @param [Geom::Point3d] point3d
  #   @raise [ArgumentError] When using Arrays in place of Point3d objects.
  #     Normally Arrays may be used in place of Point3d objects in most
  #     SketchUp methods. This method is an exception to that rule.
  #   @param [Geom::Point3d] ...
  #     Additional points (optional)
  #
  # @overload add_polygon(point3d_array)
  #
  #   Adds a polygon from an Array of Point3d objects.
  #   @example
  #     mesh = Geom::PolygonMesh.new
  #     point1 = Geom::Point3d.new(0, 1, 2)
  #     point2 = Geom::Point3d.new(1, 0, 2)
  #     point3 = Geom::Point3d.new(2, 0, 1)
  #     polygon_index = mesh.add_polygon([point1, point2, point3])
  #   @param [Array<Geom::Point3d>] point3d_array
  #
  # @return [Integer] The 1-based index of the polygon in the mesh. +0+
  #   is returned if the method failed to create a polygon.
  #
  # @version SketchUp 6.0
  def add_polygon(*args)
  end

  # The {#count_points} method is used to count the number of points in a mesh.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point = Geom::Point3d.new(0, 1, 2)
  #   mesh.add_point(point)
  #   num = mesh.count_points
  #
  # @return [Integer] the number of points in a mesh
  #
  # @version SketchUp 6.0
  def count_points
  end

  # The {#count_polygons} count the number of polygons in the mesh.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(1, 0, 2)
  #   point3 = Geom::Point3d.new(2, 0, 1)
  #   mesh.add_polygon(point1, point2, point3)
  #   nump = mesh.count_polygons
  #
  # @return [Integer] the number of polygons in the mesh
  #
  # @version SketchUp 6.0
  def count_polygons
  end

  # Create a new empty polygon mesh.
  #
  # The number of points and polygons are optional and are used as a hint to
  # decide how much space to pre-allocate to speed up adding points and polygons.
  #
  # As of SketchUp 2021.1 the performance of looking up and inserting points is
  # significantly better provided the mesh was initialized with roughly the
  # correct number of total points.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #
  # @note When creating a mesh with normals and/or UVQ data it's critical that
  #   the number of points estimated is equal to or higher than the final number
  #   of points added. If fewer points are estimated the normals and UVQ data
  #   might end up out of sync.
  #
  # @overload initialize
  #
  #   @return [Geom::PolygonMesh]
  #
  # @overload initialize(numpts)
  #
  #   @param [Integer] numpts    How many points will be in the mesh.
  #   @return [Geom::PolygonMesh]
  #
  # @overload initialize(numpts, numpolys)
  #
  #   @param [Integer] numpts    How many points will be in the mesh.
  #   @param [Integer] numpolys  How many polygons will be in the mesh.
  #   @return [Geom::PolygonMesh]
  #
  # @raise [RangeError] If number of points or polygons are negative numbers.
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The {#normal_at} method is used to determine the vertex normal at a
  # particular index in the mesh. This only works for meshes retrieved from
  # {Sketchup::Face#mesh} with the +PolygonMeshNormals+ flag.
  #
  # @example
  #   flags = 4 # PolygonMeshNormals
  #   mesh = face.mesh(flags)
  #   normal = mesh.normal_at(1)
  #
  # @note Index starts at 1.
  #
  # @param [Integer] index
  #   The index in the mesh for the vertex normal to be
  #   retrieved
  #
  # @return [Geom::Vector3d, nil]
  #
  # @version SketchUp 6.0
  def normal_at(index)
  end

  # The {#point_at} method is used to retrieve the point at a specific index in
  # the mesh.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   mesh.add_point(point1)
  #   mesh.add_point(point2)
  #   point_from_index = mesh.point_at(1)
  #
  # @note Index starts at 1.
  #
  # @param [Integer] index
  #   The index in the mesh for the point to be retrieved
  #
  # @return [Geom::Point3d, nil]
  #
  # @version SketchUp 6.0
  def point_at(index)
  end

  # The {#point_index} method is used to retrieve the index of a point in the
  # mesh.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   mesh.add_point(point1)
  #   mesh.add_point(point2)
  #   index = mesh.point_index(point2)
  #
  # @note Returns 0 if point is not found.
  #
  # @param [Geom::Point3d] point
  #
  # @return [Integer] the index in the mesh for the {Geom::Point3d} object
  #
  # @version SketchUp 6.0
  def point_index(point)
  end

  # The {#points} method is used to retrieve an array of points (vertices) in the
  # mesh
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   mesh.add_point(point1)
  #   mesh.add_point(point2)
  #   # Returns array of points in the mesh.
  #   points = mesh.points
  #
  # @return [Array<Geom::Point3d>]
  #
  # @version SketchUp 6.0
  def points
  end

  # The {#polygon_at} method is used to retrieve an array of vertex index values
  # for a polygon at a specific index.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(1, 0, 2)
  #   point3 = Geom::Point3d.new(2, 0, 1)
  #   index = mesh.add_polygon(point1, point2, point3)
  #   polygon = mesh.polygon_at(index)
  #
  # @note Index starts at 1.
  #
  # @note The returned array can contain negative
  #   values with the sign indicating a hidden edge. For example, a return value
  #   of +[-1, 2, 3]+ indicates that the edge from +1+ to +2+ is hidden. The
  #   negative values should not be used as an index for {#point_at}, take the
  #   absolute value of the index value in the polygon array.  So if you
  #   get +[-1, 2,3]+ use +1+ as the argument to {#point_at}.
  #
  # @param [Integer] index
  #   The index of the desired polygon.
  #
  # @return [Array<Geom::Point3d>, nil]
  #
  # @version SketchUp 6.0
  def polygon_at(index)
  end

  # The {#polygon_points_at} method is used to retrieve the points for a polygon
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
  # @note Index starts at 1.
  #
  # @param [Integer] index
  #   An index for a polygon in the mesh.
  #
  # @return [Array<Geom::Point3d>, nil]
  #
  # @version SketchUp 6.0
  def polygon_points_at(index)
  end

  # The {#polygons} method is used to retrieve an array of all polygons in the
  # mesh.
  #
  # The returned array contains an array that can have a negative value with the
  # sign indicating a hidden edge. For example, a return value of +[-1, 2, 3]+
  # indicates that the edge from +1+ to +2+ is hidden.
  #
  # @example
  #   polygons = polygonmesh.polygons
  #
  # @return [Array<Array<Integer>>]
  #
  # @version SketchUp 6.0
  def polygons
  end

  # The {#set_point} method is used to set the point at a specific index in the
  # mesh.
  #
  # @example
  #   mesh = Geom::PolygonMesh.new
  #   point1 = Geom::Point3d.new(0, 1, 2)
  #   point2 = Geom::Point3d.new(10, 20, 30)
  #   index = mesh.add_point(point1)
  #   mesh.set_point(index, point2)
  #
  # @note Index starts at 1.
  #
  # @param [Integer] index
  #   The index where the point will be set.
  #
  # @param [Geom::Point3d] point
  #   A Point3d object to set at the index.
  #
  # @return [Geom::PolygonMesh]
  #
  # @version SketchUp 6.0
  def set_point(index, point)
  end

  # The {#set_uv} method is used to define UV mapping coordinates to points in
  # the mesh.
  #
  # Beware that the polygons connected to the point will share UV coordiates so
  # UV mapping coordinates needs to be continuous across the polygon mesh.
  #
  # When setting the UV for a point one need to make sure to have the correct
  # index for the point. It's therefore best to add the points using {#add_point}
  # and use the index it returns for following calls to set_uv and
  # {#add_polygon}.
  #
  # If you are not able to calculate how many points there will be in your mesh
  # make sure to not specify an index in {#set_uv} higher than the number of
  # times you have called {#set_uv}.
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
  # @note If you don't specify how many points you will be adding to the mesh
  #   when you initiate it you may risk the UV data becoming out of sync.
  #
  # @note Index starts at 1.
  #
  # @param [Integer] index
  #   An Integer representing the UV index.
  #
  # @param [Geom::Point3d] point
  #   A Point3d object representing UV coordinates.
  #
  # @param [Boolean] front
  #   A boolean representing the front or back.
  #
  # @return [nil]
  #
  # @version SketchUp 2014
  def set_uv(index, point, front)
  end

  # The {#transform!} method is used to apply a transformation to a mesh.
  #
  # @example
  #   point1 = Geom::Point3d.new(100, 200, 300)
  #   tr = Geom::Transformation.new(point1)
  #   mesh = Geom::PolygonMesh.new
  #   point2 = Geom::Point3d.new(0, 1, 2)
  #   mesh.add_point(point2)
  #   mesh.transform!(tr)
  #
  # @param [Geom::Transformation] transformation
  #
  # @return [Geom::PolygonMesh]
  #
  # @version SketchUp 6.0
  def transform!(transformation)
  end

  # The {#uv_at} method is used to access a uv (texture coordinates) at a
  # specific index.
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
  # @note Index starts at 1.
  #
  # @param [Integer] index
  #   The index for the texture coordinate.
  #
  # @param [Boolean] front
  #   Set to +true+ to get the UV for the front size,
  #   +false+ for the back side.
  #
  # @return [Geom::Point3d, nil] a Point3d object where the x equals the u
  #   value and the y equals the v value.
  #   Returns nil on failure.
  #
  # @version SketchUp 6.0
  def uv_at(index, front)
  end

  # The {#uvs} method is used to retrieve an array of uv coordinates in the
  # mesh.
  #
  # @example
  #   # Get a mesh with front and back UVs.
  #   mesh = face.mesh(1 | 2)
  #   uvs = mesh.uvs(true)
  #
  # @param [Boolean] front
  #
  # @return [Array<Geom::Point3d>]
  #
  # @version SketchUp 6.0
  def uvs(front)
  end

end

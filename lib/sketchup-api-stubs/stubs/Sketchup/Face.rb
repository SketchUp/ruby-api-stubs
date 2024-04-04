# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# Faces in SketchUp are flat, 2-sided polygons with 3 or more sides.
#
# @version SketchUp 6.0
class Sketchup::Face < Sketchup::Drawingelement

  # Constants

  PointInside = nil # Stub value.
  PointNotOnPlane = nil # Stub value.
  PointOnEdge = nil # Stub value.
  PointOnFace = nil # Stub value.
  PointOnVertex = nil # Stub value.
  PointOutside = nil # Stub value.
  PointUnknown = nil # Stub value.

  # Instance Methods

  # The all_connected method retrieves all of the entities connected to a face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   connected = face.all_connected
  #
  # @return [Array<Sketchup::Entity>] the entities connected to the face
  #
  # @version SketchUp 6.0
  def all_connected
  end

  # The area method is used to retrieve the area of a face.
  #
  # You can pass in an optional Transformation (or an array that can represent a
  # transformation), to correct for a parent group's transformation. For example,
  # if a face is inside of a group that is scaled to 200%, the area method will
  # return the unscaled area of the face. So by passing a 200% transformation
  # object to this method, you can account for that to get the "visual" area
  # of the face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   area = face.area
  #
  # @overload area
  #
  #   @return [Float] the area of the face in square inches.
  #
  # @overload area(transform)
  #
  #   @param [Geom::Transformation] transform
  #    A Transformation object or array that can be interpreted as a
  #    Transformation object.
  #   @return [Float] the area of the face in square inches.
  #
  # @version SketchUp 6.0
  def area(*args)
  end

  # The back_material method is used to retrieve the material assigned to the
  # back side of the face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #
  #   # Add a material to the back face, then check to see that it was added
  #   face.back_material = "red"
  #   material = face.back_material
  #
  # @return [Sketchup::Material, nil] a Material object representing the material
  #   on the back of the face (if successful)
  #
  # @version SketchUp 6.0
  def back_material
  end

  # The back_material= method is used to set the material assigned to the back
  # side of the face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   status = face.back_material = "red"
  #
  # @param [Sketchup::Material] material
  #   A Material object or the name of a valid material.
  #
  # @return [Sketchup::Material] the name of the valid material or the new
  #   Material object (if successful)
  #
  # @version SketchUp 6.0
  def back_material=(material)
  end

  # The classify_point method is used to determine if a given Point3d is on the
  # referenced Face.
  #
  # It is important that return value comparisons be made against the
  # symbolic constants (i.e. {Sketchup::Face::PointUnknown},
  # {Sketchup::Face::PointInside}, {Sketchup::Face::PointOnVertex}, etc.) rather
  # than the absolute integer values as these values may change from one
  # release to the next.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [9, 0, 0]
  #   pts[2] = [9, 9, 0]
  #   pts[3] = [0, 9, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #
  #   # Check a point that should be outside the face.
  #   pt = Geom::Point3d.new(50, 50, 0)
  #   result = face.classify_point(pt)
  #   if result == Sketchup::Face::PointOutside
  #     puts "#{pt.to_s} is outside the face"
  #   end
  #
  #   # Check a point that should be outside inside the face.
  #   pt = Geom::Point3d.new(1, 1, 0)
  #   result = face.classify_point(pt)
  #   if result == Sketchup::Face::PointInside
  #     puts "#{pt.to_s} is inside the face"
  #   end
  #
  #   # Check a point that should be on the vertex of the face.
  #   pt = Geom::Point3d.new(0, 0, 0)
  #   result = face.classify_point(pt)
  #   if result == Sketchup::Face::PointOnVertex
  #     puts "#{pt.to_s} is on a vertex"
  #   end
  #
  #   # Check a point that should be on the edge of the face.
  #   pt = Geom::Point3d.new(0, 1, 0)
  #   result = face.classify_point(pt)
  #   if result == Sketchup::Face::PointOnEdge
  #     puts "#{pt.to_s} is on an edge of the face"
  #   end
  #
  #   # Check a point that should be off the plane of the face.
  #   pt = Geom::Point3d.new(1, 1, 10)
  #   result = face.classify_point(pt)
  #   if result == Sketchup::Face::PointNotOnPlane
  #     puts "#{pt.to_s} is not on the same plane as the face"
  #   end
  #
  # @param [Geom::Point3d] point
  #   A Point3d.
  #
  # @return [Integer] an integer describing where a Point3d is in
  #   relation to the referenced Face.
  #
  # @version SketchUp 6.0
  def classify_point(point)
  end

  # The {#clear_texture_position} method is used to remove any explicit
  # texture positioning for a face and have SketchUp display it with the
  # default texture positioning.
  #
  # @param [Boolean] front
  #   +true+ Clears on the front side of the face, +false+
  #   the back side.
  #
  # @version SketchUp 2022.0
  def clear_texture_position(front)
  end

  # The {#clear_texture_projection} method is used to clear the texture
  # projection. This is similar to toggling off Projection from the Position
  # Texture tool in the UI.
  #
  # @param [Boolean] frontside
  #   +true+ for front side, +false+ for back side.
  #
  # @see #position_material
  #
  # @see #get_texture_projection
  #
  # @version SketchUp 2021.1
  def clear_texture_projection(frontside)
  end

  # The edges method is used to get an array of edges that bound the face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   edges = face.edges
  #
  # @return [Array<Sketchup::Edge>] an array of Edge objects (if successful)
  #
  # @version SketchUp 6.0
  def edges
  end

  # The {#followme} method is used to create a shape by making the face follow
  # along an array of edges.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #
  #   depth = 100
  #   width = 100
  #
  #   # Add the face to the entities in the model
  #   points = [
  #     Geom::Point3d.new(0, 0, 0),
  #     Geom::Point3d.new(width, 0, 0),
  #     Geom::Point3d.new(width, depth, 0),
  #     Geom::Point3d.new(0, depth, 0)
  #   ]
  #   face = entities.add_face(points)
  #
  #   # Add the line which we will "follow" to the entities in the model
  #   point1 = Geom::Point3d.new(0, 0, 0)
  #   point2 = Geom::Point3d.new(0, 0, 100)
  #   edge = entities.add_line(point1, point2)
  #   face.followme(edge)
  #
  # @overload followme(edges)
  #
  #   @param [Array<Sketchup::Edge>] edges  An array of edge objects to follow.
  #   @return [Boolean]
  #
  # @overload followme(edge)
  #
  #   @param [Sketchup::Edge] edge  An edge to follow.
  #   @return [Boolean]
  #
  # @version SketchUp 6.0
  def followme(*args)
  end

  # The get_UVHelper object is used to retrieve a UVHelper object for use in
  # texture manipulation on a face.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [9, 0, 0]
  #   pts[2] = [9, 9, 0]
  #   pts[3] = [0, 9, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   tw = Sketchup.create_texture_writer
  #   uvHelp = face.get_UVHelper(true, true, tw)
  #
  # @overload get_UVHelper(front = true, back = true)
  #
  #   @param [Boolean] front
  #    True if you want the texture coordinates for the front
  #    face, false if not.
  #
  #   @param [Boolean] back
  #    True if you want the texture coordinates for the back
  #    face, false if not.
  #
  # @overload get_UVHelper(front = true, back = true, texturewriter)
  #
  #   @param [Boolean] front
  #    True if you want the texture coordinates for the front
  #    face, false if not.
  #
  #   @param [Boolean] back
  #    True if you want the texture coordinates for the back
  #    face, false if not.
  #
  #   @param [Sketchup::TextureWriter] texturewriter
  #    An optional TextureWriter object.
  #
  # @return [Sketchup::UVHelper]
  #
  # @version SketchUp 6.0
  def get_UVHelper(*args)
  end

  # The get_glued_instances method returns an Array any ComponentInstances
  # that are glued to the face.
  #
  # ComponentInstance objects that are currently glued to the face.
  #
  # @example
  #   # Create a series of points that define a new face.
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [9, 0, 0]
  #   pts[2] = [9, 9, 0]
  #   pts[3] = [0, 9, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   glued_array = face.get_glued_instances
  #
  # @return [Array<Sketchup::ComponentInstance, Sketchup::Group, Sketchup::Image>] An array of
  #
  # @version SketchUp 7.0 M1
  def get_glued_instances
  end

  # The {#get_texture_projection} method will return a vector representing the
  # projection for either the front or back side of the face.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   materials = model.materials
  #
  #   # Create a face and add it to the model entities
  #   pts = []
  #   pts[0] = [0, 0, 1]
  #   pts[1] = [10, 0, 1]
  #   pts[2] = [10, 10, 1]
  #   face = entities.add_face(pts)
  #
  #   # Export an image to use as a texture
  #   path = Sketchup.temp_dir
  #   full_name = File.join(path, "temp_image.jpg")
  #   model.active_view.write_image(full_name, 500, 500, false, 0.0)
  #
  #   # Create a material and assign the texture to it
  #   material = materials.add("Test Material")
  #   material.texture = full_name
  #
  #   # Assign the new material to our face we created
  #   face.material = material
  #
  #   # Set the projection of the applied material
  #   face.set_texture_projection(face.normal, true)
  #
  #   # Get the projection of the applied material
  #   vector = face.get_texture_projection(true)
  #
  # @param [Boolean] frontside
  #   +true+ for front side, +false+ for back side.
  #
  # @return [Geom::Vector3d, nil] a vector on success, +nil+ if face is not
  #   textured with a projected texture mapping.
  #
  # @see #position_material
  #
  # @see #texture_projected?
  #
  # @version SketchUp 2014
  def get_texture_projection(frontside)
  end

  # The loops method is used to get an array of all of the loops that bound the
  # face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   loops = face.loops
  #
  # @return [Array<Sketchup::Loop>] an array of Loop objects if successful
  #
  # @version SketchUp 6.0
  def loops
  end

  # The material method is used to retrieve the material assigned to the
  # front of the face. (This method is inherited from the Drawingelement
  # parent class.)
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #
  #   # Add a material to the face, then check to see that it was added
  #   face.material = "red"
  #   material = face.material
  #
  # @return [Sketchup::Material, nil] a Material object representing the material
  #   on the front of the face (if successful)
  #
  # @version SketchUp 6.0
  def material
  end

  # The material= method is used to set the material assigned to the front
  # side of the face. (This method is inherited from the Drawingelement
  # parent class.)
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   status = face.material = "red"
  #
  # @param [Sketchup::Material] material
  #   A Material object or the name of a valid material.
  #
  # @return [Sketchup::Material] the name of the valid material or the new
  #   Material object (if successful)
  #
  # @version SketchUp 6.0
  def material=(material)
  end

  # The mesh method creates a polygon mesh that represents the face. See the
  # {Geom::PolygonMesh} class for more information.
  #
  # Valid flags are:
  #
  # - +0+: Include PolygonMeshPoints,
  # - +1+: Include PolygonMeshUVQFront,
  # - +2+: Include PolygonMeshUVQBack,
  # - +4+: Include PolygonMeshNormals.
  #
  # Use bitwise OR to combine flags. A value of +7+ will include all
  # flags, for example.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #
  #   kPoints = 0
  #   kUVQFront = 1
  #   kUVQBack = 2
  #   kNormals = 4
  #   flags = kPoints | kUVQFront | kUVQBack | kNormals # equals to 7
  #   mesh = face.mesh(flags)
  #
  # @param [Integer] flags
  #   One or more flags used to generate a mesh.
  #
  # @return [Geom::PolygonMesh]
  #
  # @version SketchUp 6.0
  def mesh(flags = 0)
  end

  # The normal method is used to retrieve the 3D vector normal to the face in
  # the front direction.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   normal = face.normal
  #
  # @return [Geom::Vector3d] a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def normal
  end

  # This method is used to retrieve the outer loop that bounds the face.
  #
  # @example
  #   # Create a series of points that define a new face.
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [9, 0, 0]
  #   pts[2] = [9, 9, 0]
  #   pts[3] = [0, 9, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   loop = face.outer_loop
  #
  # @return [Sketchup::Loop] a Loop object representing the outer loop (if
  #   successful)
  #
  # @version SketchUp 6.0
  def outer_loop
  end

  # The plane method is used to retrieve the plane of the face. See the Array
  # class for information on how planes are stored.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   plane = face.plane
  #
  # @return [Array(Float, Float, Float, Float)] a plane that contains the face (if successful)
  #
  # @version SketchUp 6.0
  def plane
  end

  # The {#position_material} method is used to position a material on a face.
  #
  # The +points+ argument must contain 2, 4, 6 or 8 points. The points are used
  # in pairs to describe where a point in the texture image is positioned on the
  # Face. The first point in each pair is a 3D point in the model. The second
  # point in each pair of points is a 2D point that gives the (u,v) coordinates
  # of a point in the image to match up with the 3D point.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #
  #   # Create a face and add it to the model entities
  #   points = [
  #     Geom::Point3d.new(0, 0, 1),
  #     Geom::Point3d.new(9, 0, 1),
  #     Geom::Point3d.new(9, 9, 1),
  #     Geom::Point3d.new(0, 9, 1),
  #   ]
  #   face = entities.add_face(points)
  #
  #   # Export an image to use as a texture
  #   path = Sketchup.temp_dir
  #   full_name = File.join(path, "temp_image.jpg")
  #   model.active_view.write_image(full_name, 500, 500, false, 0.0)
  #
  #   # Create a material and assign the texture to it
  #   material = model.materials.add("Test Material")
  #   material.texture = full_name
  #
  #   # Assign the new material to our face we created
  #   face.material = material
  #
  #   mapping = [
  #     Geom::Point3d.new(3,0,0), # Model coordinate
  #     Geom::Point3d.new(0,0,0), # UV coordinate
  #   ]
  #   on_front = true
  #   face.position_material(material, mapping, on_front)
  #
  # @overload position_material(material, points, on_front)
  #
  #   This variant positions a material on the face's plane without projection.
  #
  #   @param [Sketchup::Material] material
  #
  #   @param [Array<Geom::Point3d>] points
  #     An array of Point3d objects used to position the material.
  #     The points should be on the plane of the face. If they are not they will
  #     be projected to the face's plane.
  #
  #   @param [Boolean] on_front
  #     +true+ to position the texture on the front of the Face or
  #     +false+ to position it on the back of the Face.
  #
  # @overload position_material(material, points, on_front, projection)
  #
  #   @version SketchUp 2021.1
  #
  #   This variant positions a material on the face's plane with projection.
  #
  #   @param [Sketchup::Material] material
  #
  #   @param [Array<Geom::Point3d>] points
  #     An array of Point3d objects used to position the material.
  #     The points should be on the same plane. The plane should be parallel to
  #     the +projection+ vector. If they are not on a plane parallel to the
  #     projection vector they will be projected to such a plane.
  #
  #   @param [Boolean] on_front
  #     +true+ to position the texture on the front of the Face or
  #     +false+ to position it on the back of the Face.
  #
  #   @param [Geom::Vector3d] projection_vector
  #     The direction of the texture projection.
  #
  # @raise ArgumentError if the provided points are not in the size of 2, 4, 6 or 8.
  #
  # @raise ArgumentError if the provided points could not be computed to a valid UV mapping.
  #
  # @return [Sketchup::Face, false] the face upon success, +false+ if material or
  #   texture if not valid.
  #
  # @see #texture_positioned?
  #
  # @see #texture_projected?
  #
  # @see #get_texture_projection
  #
  # @see #clear_texture_projection
  #
  # @version SketchUp 6.0
  def position_material(*args)
  end

  # The pushpull method is used to perform a push/pull on a face.
  #
  # The distance is measured in the direction that the face normal is pointing.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   status = face.pushpull(100, true)
  #
  # @param [Length] distance
  #   The distance to push/pull the face.
  #
  # @param [Boolean] copy
  #   Create a new push/pull starting face if true (equivalent
  #   of pressing CTRL while in SketchUp), do not create a
  #   push/pull starting face if false.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def pushpull(distance, copy = false)
  end

  # The reverse! method is used to reverse the face's orientation, meaning the
  # front becomes the back.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   status = face.reverse!
  #
  # @return [Sketchup::Face, false] the reversed Face object if successful, false if
  #   unsuccessful
  #
  # @version SketchUp 6.0
  def reverse!
  end

  # The {#set_texture_projection} method is used to set the texture projection
  # direction.
  #
  # @deprecated This function never worked correctly. It's not capable of
  #   controlling the position and orientation of the texture. In some cases it
  #   produced an invalid model. As of SketchUp 2021.1 the method simply raises
  #   +NotImplementedError+.
  #
  # @param [Geom::Vector3d] vector
  #   representing the direction of the projection. Use +nil+ to remove the
  #   projection.
  #
  # @param [Boolean] frontside
  #   +true+ for front side, +false+ for back side.
  #
  # @return [Boolean]
  #
  # @see #position_material
  #
  # @see #clear_texture_projection
  #
  # @version SketchUp 2014
  def set_texture_projection(vector, frontside)
  end

  # The {#texture_positioned?} method is used to check if the face has a
  # texture that is positioned.
  #
  # A texture is positioned when it's not using the default texture coordinates.
  #
  # When a user uses the Paint Bucket Tool to apply a material sampled from the
  # Material Browser it will use default texture coordinates and not be
  # positioned. It will be positioned if the user uses the Position Texture Tool.
  #
  # When an API user uses {Sketchup::Drawinglement#material=} the texture is not
  # positioned. It will be positioned when the API user uses
  # {Sketchup::Face#position_material}. It it also positioned of the face was
  # crafted via {Geom::PolygonMesh}.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   faces = entities.grep(Sketchup::Face).select { |face|
  #     face.texture_positioned?(true) || face.texture_positioned?(false)
  #   }
  #
  # @param [Boolean] front
  #   +true+ Checks the front side of the face, +false+
  #   the back side.
  #
  # @return [Boolean]
  #
  # @see #position_material
  #
  # @see #material=
  #
  # @see #back_material=
  #
  # @version SketchUp 2021.1
  def texture_positioned?(front)
  end

  # The {#texture_projected?} method is used to check if the face has a
  # texture that is projected.
  #
  # A texture is projected when the user enables this property via the
  # Position Texture Tool.
  #
  # It is also projected when the API user passes a projection vector to
  # {#position_material}.
  #
  # @param [Boolean] front
  #   +true+ Checks the front side of the face, +false+
  #   the back side.
  #
  # @return [Boolean]
  #
  # @see #get_texture_projection
  #
  # @see #clear_texture_projection
  #
  # @see #position_material
  #
  # @version SketchUp 2021.1
  def texture_projected?(front)
  end

  # The {#uv_tile_at} method is used to get the corner positions (model and UV)
  # of a UV tile.
  #
  # The UV tile bounds the given reference point on the plane of the face. If the
  # reference isn't on the plane of the face it will be projected onto it.
  #
  # The world coordinates are on the plane of the face unless the texture is
  # projected. When the texture is projected the the world points are on an
  # arbitrary plane that is perpendicular to the projection direction.
  #
  # The returned coordinates are arranged to be compatible with {#position_material}.
  #
  # <b>Getting the bounds of the UV tile under the cursor:</b>
  #
  # <i>The red quadrilateral represents the model points returned.</i>
  #
  # rdoc-image:../images/face-uv-tile-at.png
  #
  # @bug Fixed in SketchUp 2022.0: If the +position+ argument should line up exact
  #   U or V axes of the UV coordinate system the returned set of points won't
  #   be correct. A workaround for older SketchUp versions would be to slightly
  #   offset the +position+ argument.
  #
  # @example Copy material from front to back
  #   model = Sketchup.active_model
  #   model.active_entities.grep(Sketchup::Face) { |face|
  #     material = face.material
  #
  #     if material&.texture.nil?
  #       face.back_material = material
  #     end
  #
  #     reference = face.vertices.first.position
  #     mapping = face.uv_tile_at(reference, true)
  #     if face.texture_projected?(true)
  #       projection = face.get_texture_projection(true)
  #       face.position_material(material, mapping, false, projection)
  #     else
  #       face.position_material(material, mapping, false)
  #     end
  #   }
  #
  # @example Iterate each set of world and UV coordinates
  #   model = Sketchup.active_model
  #   faces = model.active_entities.grep(Sketchup::Face)
  #   face = faces.find { |face| face.material&.texture }
  #   reference = face.vertices.first.position
  #   mapping = face.uv_tile_at(reference, true)
  #   mapping.each_slice(2) { |position, uv|
  #     puts "World: #{position.inspect} - UV: #{uv.inspect}"
  #   }
  #
  # @param [Geom::Point3d] position
  #   Model position on the face's plane that will be
  #   bounded by the UV tile.
  #
  # @param [Boolean] front
  #   +true+ Checks the front side of the face, +false+
  #   the back side.
  #
  # @return [Array<Geom::Point3d>, nil] A set of 8 points. Each stride of two is
  #   first a model space point, the second a UV
  #   coordinate. +nil+ if the face doesn't have
  #   a texture on the given side.
  #
  # @see #position_material
  #
  # @version SketchUp 2021.1
  def uv_tile_at(position, front)
  end

  # The vertices method is used to get an array of all of the vertices that
  # bound the face.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face(pts)
  #   vertices = face.vertices
  #
  # @return [Array<Sketchup::Vertex>] an array of Vertex objects if successful
  #
  # @version SketchUp 6.0
  def vertices
  end

end

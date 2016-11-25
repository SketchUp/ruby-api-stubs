# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::Entities

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieve an entity by its index in an array of
  # entities. The index is a number between +0+ and entities.length - 1. In
  # general, it is preferable to use the {#each} method to iterate though all
  # of the entities in the collection as it will be much more efficient.
  # 
  # The {#at} method is an alias of {#[]}
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   entity0 = entities[0]
  #   if (entity0)
  #     UI.messagebox entity0
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Integer] entity_index
  #   The index for a specific entity.
  #
  # @return [Sketchup::Entity, nil] an {Sketchup::Entity} object if successful,
  #   +nil+ if not found
  #
  # @version SketchUp 6.0
  def [](entity_index)
  end

  # The active_section_plane method is used to access the currently active
  # section plane in the Entities object.
  #
  # @example 
  #   sp = Sketchup.active_model.entities.active_section_plane
  #   puts "Active section plane is #{sp}" if !sp.nil?
  #
  # @return the active SectionPlane or nil if none is active.
  #
  # @version SketchUp 2014
  def active_section_plane
  end

  # The active_section_plane= method is used to set the active section plane in
  # the Entities object.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   sp = entities.add_section_plane([50, 50, 0], [1.0, 1.0, 0])
  #   entities.active_section_plane = sp
  #
  # @param sec_plane
  #   the SectionPlane object to be set active. Pass nil to
  #   deactivate any active section plane.
  #
  # @return the SectionPlane object that was set active.
  #
  # @version SketchUp 2014
  def active_section_plane=(sec_plane)
  end

  # The add_3d_text is used to create 3D text. It will be added as edges and
  # faces drawn at the origin.
  #
  # @example 
  #   # Draw the word "test" at the origin of the model, aligned left, in
  #   # Arial Bold, not italics, 1" in size, best tolerance quality, filled,
  #   # with an extrusion size of 5".
  #   entities = Sketchup.active_model.entities
  #   success = entities.add_3d_text('test', TextAlignLeft, "Arial",
  #     true, false, 1.0, 0.0, 0.5, true, 5.0)
  #
  # @param [optional] is_bold
  #   Boolean, true for bold.
  #
  # @param string
  #   The text to create.
  #
  # @param alignment
  #   Number that defines the alignment. There are constants
  #   called TextAlignLeft, TextAlignRight, and
  #   TextAlignCenter that can be passed.
  #
  # @param font
  #   String font name.
  #
  # @param [optional] is_italic
  #   Boolean, true for italic.
  #
  # @param [optional] extrusion
  #   Extrusion depth in inches. Defaults to 0.0.
  #
  # @param [optional] letter_height
  #   Height of the text in inches.
  #
  # @param [optional] tolerance
  #   Tolerance of the curve creation. Defaults to
  #   0.0, which creates the highest possible curve quality.
  #
  # @param [optional] z
  #   z position in inches.
  #
  # @param [optional] is_filled
  #   Boolean, true for filled, which will put a
  #   face between the edges of the letters.
  #
  # @return true if successful
  #
  # @version SketchUp 6.0
  def add_3d_text(string, alignment, font, is_bold, is_italic, letter_height, tolerance, z, is_filled, extrusion)
  end

  # The add_arc method is used to create an arc curve segment.
  #
  # @example 
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = Geom::Vector3d.new 1,0,0
  #   vector3 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   edges = entities.add_arc centerpoint, vector2, vector3, 10, 15.degrees, 135.degrees
  #   arccurve = edges.first.curve
  #
  # @param normal
  #   A Vector3d object representing normal for the arc.
  #
  # @param center
  #   A Point3d object representing the center .
  #
  # @param xaxis
  #   A Vector3d object representing xaxis for the arc.
  #
  # @param radius
  #   The radius of the arc.
  #
  # @param [optional] num_segments
  #   How many segments to draw.
  #
  # @param start_angle
  #   Start angle for the arc, in radians.
  #
  # @param end_angle
  #   End angle for the arc, in radians.
  #
  # @return edges - an array of Edge objects that define the arc.
  #
  # @version SketchUp 6.0
  def add_arc(center, xaxis, center, normal, radius, start_angle, end_angle, num_segments)
  end

  # The add_circle method is used to create a circle.
  #
  # @example 
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   edges = entities.add_circle centerpoint, vector2, 10
  #
  # @param center
  #   A Point3d object representing the center .
  #
  # @param normal
  #   A Vector3d object representing normal for the arc.
  #
  # @param numsegs
  #   The number of segments.
  #
  # @param radius
  #   The radius of the arc.
  #
  # @return circle - an Array object containing edges if successful
  #
  # @version SketchUp 6.0
  def add_circle(center, normal, radius, numsegs = 24)
  end

  # The add_cline method is used to create a construction line.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   constline = entities.add_cline point1,point2
  #   if (constline)
  #     UI.messagebox constline
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param start_point
  #   A Point3d object where the line will start.
  #
  # @param end
  #   If a Vector3d, then an infinite line passing through
  #   the start_point will be created in that direction. If a
  #   Point3d, then a finite line will be created between the
  #   two points.
  #
  # @param [optional] stipple
  #   Stipple pattern. See ConstructionLine.stipple
  #   for acceptable patterns.
  #
  # @return construction_line - a ConstructionLine object if
  #   successful
  #
  # @version SketchUp 6.0
  def add_cline(start_point, end)
  end

  # The add_cpoint method is used to create a construction point.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(100,200,300)
  #   constpoint = entities.add_cpoint point1
  #   if (constpoint)
  #     UI.messagebox constpoint
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param point
  #   A Point3d object.
  #
  # @return construction_point - a ConstructionPoint object if
  #   successful
  #
  # @version SketchUp 6.0
  def add_cpoint(point)
  end

  # The add_curve method is used to create a curve from a collection of edges.
  # 
  # The arguments are either Points or an Array of Points. At least 2 points are
  # required.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   curve = entities.add_curve [0,0,0], [0,10,0], [1,20,0]
  #
  # @param pts_or_array
  #   You can pass either a series of Point3d objects or a
  #   single array containing Point3d objects.
  #
  # @return curve -  an array of Edges that make up the curve if
  #   successful
  #
  # @version SketchUp 6.0
  def add_curve(pts_or_array)
  end

  # The add_dimension_linear method adds a linear dimension to the entities.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   # From point to point
  #   dim = entities.add_dimension_linear [50, 10, 0], [100, 10, 0], [0, 20, 0]
  #   # Between edge vertices
  #   edge = entities.add_edges([50,50,0], [40,10,0])[0]
  #   v0 = edge.start
  #   v1 = edge.end
  #   dim = entities.add_dimension_linear v0, v1, [0, 0, 20]
  #   # From an edge's midpoint to a construction point
  #   p0 = edge.start.position
  #   p1 = edge.end.position
  #   mp = Geom::Point3d.new((p0.x+p1.x)/2.0, (p0.y+p1.y)/2.0, (p0.z+p1.z)/2.0)
  #   cp = entities.add_cpoint [50, 10, 0]
  #   dim = entities.add_dimension_linear [edge, mp], cp, [20, 0, 0]
  #   # alternatively, the start params could be passed in separately
  #   dim = entities.add_dimension_linear edge, mp, cp, [20, 0, 0]
  #
  # @param start_pt_or_entity
  #   the reference point and/or entity at the start of
  #   the dimension. This parameter can take several
  #   forms:
  #
  # @param end_pt_or_entity
  #   the reference point and/or entity at the end
  #   of the dimension. This parameter takes the exact
  #   same forms as 'start_pt_or_entity'.
  #
  # @param offset_vector
  #   the parallel offset vector from the reference line
  #   to the dimension line measured from the 'start'
  #   reference point.
  #
  # @return Entity - the created dimension
  #
  # @version SketchUp 2014
  def add_dimension_linear(start_pt_or_entity, end_pt_or_entity, offset_vector)
  end

  # The add_dimension_radial method adds a radial dimension (i.e arc/circle
  # radius/diameter dimension) to the entities.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   # Create a circle
  #   centerpoint = Geom::Point3d.new(10, 10, 0)
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   edges = entities.add_circle centerpoint, vector, 10
  #   circle = edges[0].curve
  #   dim = entities.add_dimension_radial circle, [30, 30, 0]
  #
  # @param arc_curve
  #   an ArcCurve object to which the dimension is to be
  #   attached.
  #
  # @param leader_break_pt
  #   a Point3d for the break point on the leader where the
  #   dimension text is attached.
  #
  # @return the created dimension
  #
  # @version SketchUp 2014
  def add_dimension_radial(arc_curve, leader_break_pt)
  end

  # The add_edges method is used to add a set of connected edges to the entities
  # array.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   edges = entities.add_edges point1, point2
  #
  # @param pts_or_array
  #   You can pass either a series of Point3d objects or a
  #   single array containing Point3d objects.
  #
  # @return edges - an array of Edge objects if successful
  #
  # @version SketchUp 6.0
  def add_edges(pts_or_array)
  end

  # The add_face method is used to create a face. You can call this method a
  # number of ways:
  # 
  #   - entities.add_face(edge1, edge2, edge3, ...)
  #   - entities.add_face(edgearray)
  #   - entities.add_face(pt1, pt2, pt3, ...)
  #   - entities.add_face([pt1, pt2, pt3,...])
  #   - entities.add_face(curve)
  # 
  # For the last form that takes a Curve, the curve must be closed - like a
  # circle.
  # 
  # Note that a special case exists for any face created on the ground plane, in
  # which case the vertex order is ignored and the face is always facing down.
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
  #   face = entities.add_face pts
  #   if (face)
  #     UI.messagebox face
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param some_entities
  #   Either a series of Edge or Point3d objects, an array of
  #   Point3d objects, or a closed Curve.
  #
  # @return face - a Face object if successful
  #
  # @version SketchUp 6.0
  def add_face(some_entities)
  end

  # The add_faces_from_mesh method is used to add Face objects to the collection
  # of entities from a PolygonMesh.
  # 
  # The 2nd through 4th parameters are optional. The smooth_flags parameter
  # can contain any of the following values if passed. The constants were added
  # in SketchUp 2014. For previous versions, numeric values have to be specified
  # instead of the Ruby constants.
  # 
  #   - 0: Geom::PolygonMesh::NO_SMOOTH_OR_HIDE
  #   - 1: Geom::PolygonMesh::HIDE_BASED_ON_INDEX (Negative point index will hide the edge.)
  #   - 2: Geom::PolygonMesh::SOFTEN_BASED_ON_INDEX (Negative point index will soften the edge.)
  #   - 4: Geom::PolygonMesh::AUTO_SOFTEN (Interior edges are softened.)
  #   - 8: Geom::PolygonMesh::SMOOTH_SOFT_EDGES (All soft edges will also be smooth.)
  # 
  # The 3rd and 4th parameters will accept a Material object or a string name
  # of a material currently in the model.
  #
  # @example 
  #   pm = Geom::PolygonMesh.new
  #   pm.add_point([ 0, 0, 0]) # 1
  #   pm.add_point([10, 0, 0]) # 2
  #   pm.add_point([10,10, 0]) # 3
  #   pm.add_point([ 0,10, 0]) # 4
  #   pm.add_point([20, 0, 5]) # 5
  #   pm.add_point([20,10, 5]) # 6
  #   pm.add_polygon(1,-2,3,4)
  #   pm.add_polygon(2,5,6,-3)
  #   
  #   # Create a new group that we will populate with the mesh.
  #   group = Sketchup.active_model.entities.add_group
  #   material = Sketchup.active_model.materials.add('green')
  #   smooth_flags = Geom::PolygonMesh::NO_SMOOTH_OR_HIDE
  #   group.entities.add_faces_from_mesh(pm, smooth_flags, material)
  #
  # @param polygonmesh
  #   A Polygon mesh object.
  #
  # @param smooth_flags
  #   An integer containing flags for soften
  #   and smooth settings.
  #
  # @param b_material
  #   Material object to paint back faces with.
  #
  # @param f_material
  #   Material object to paint front faces with.
  #
  # @return faces - an array of Face objects if successful
  #
  # @version SketchUp 6.0
  def add_faces_from_mesh(polymesh, smooth_flags = AUTO_SOFTEN|SMOOTH_SOFT_EDGES, f_material = nil, b_material = nil)
  end

  # The add_group method is used to create an empty group or a group with
  # entities.
  # 
  # NOTE: calling add_group with entities in its parameters has been known to
  # crash SketchUp before version 8.0. It is preferable to create an empty
  # group and then add things to its Entities collection.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   group = entities.add_group
  #   if (group)
  #     UI.messagebox group
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [optional] entities
  #   an entities collection to add to the group.
  #
  # @return group - the new group
  #
  # @version SketchUp 6.0
  def add_group(entities)
  end

  # The add_image method is used to add an image to the collection of entities.
  # 
  # The width and height are measured in model units (i.e. inches). If the
  # height is not given, then it is computed from the width to preserve the
  # aspect ratio of the image.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point = Geom::Point3d.new 10,20,30
  #   image = entities.add_image "Shapes.jpg", point, 300
  #   if (image)
  #     UI.messagebox image
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param filename
  #   A filename for the image file.
  #
  # @param point
  #   A Point3d object representing the insertion point of
  #   the image.
  #
  # @param [optional] height
  #   height for the image if you want to control
  #   width and height independently.
  #
  # @param width
  #   Width for the image.
  #
  # @return image - an Image object if successful.
  #
  # @version SketchUp 6.0
  def add_image(filename, point, width, height)
  end

  # The add_instance method adds a component instance to the collection of
  # entities.
  #
  # @example 
  #   point = Geom::Point3d.new 10,20,30
  #   transform = Geom::Transformation.new point
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   instance = entities.add_instance componentdefinition, transform
  #   if (instance)
  #     UI.messagebox instance
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param definition
  #   A ComponentDefinition object.
  #
  # @param transform
  #   A Transformation object.
  #
  # @return componentinstance - a ComponentInstance object if
  #   successful
  #
  # @version SketchUp 6.0
  def add_instance(definition, transform)
  end

  # The add_line method is used to add an edge to the collection of entities.
  # This is not to be confused with the concept of a "line" from a geometric
  # sense, which is an invisible object represented by an Array of a point
  # and a vector. (See the Array class for more information on geometric lines in
  # SketchUp.)
  # 
  # This method is the same as add_edges method, but returns a single edge.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(0,0,0)
  #   point2 = Geom::Point3d.new(20,20,20)
  #   line = entities.add_line point1,point2
  #   if (line)
  #     UI.messagebox line
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param point1
  #   Point3d object representing the edge's starting point.
  #
  # @param point2
  #   Point3d object representing the edge's ending point.
  #
  # @return edge - a Edge object if successful
  #
  # @version SketchUp 6.0
  def add_line(point1, point2)
  end

  # The add_ngon method is used to create a multi-sided polygon.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   center = Geom::Point3d.new
  #   normal = Geom::Vector3d.new(0,0,1)
  #   radius = 100
  #   numsides = 6
  #   edges = entities.add_ngon center, normal, radius, numsides
  #
  # @param center
  #   A Point3d object representing the center of the polygon.
  #
  # @param normal
  #   A Vector3d object.
  #
  # @param numsides
  #   The number of sides for the polygon.
  #
  # @param radius
  #   A radius.
  #
  # @return edges - an array of Edges that make up the polygon if
  #   successful
  #
  # @version SketchUp 6.0
  def add_ngon(center, normal, radius, numsides = 24)
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   status = entities.add_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The add_section_plane method adds a section plane object to the entities.
  #
  # @example 
  #   # Create a section plane
  #   model = Sketchup.active_model
  #   sp = model.entities.add_section_plane([50, 50, 0], [1.0, 1.0, 0])
  #   # Activate it
  #   sp.activate
  #   # Make sure section planes are visible
  #   model.rendering_options['DisplaySectionPlanes'] = true
  #
  # @param plane
  #   the geometric plane where the SectionPlane object is to
  #   be created. Refer to the Geom module for information on
  #   how planes are represented.
  #
  # @return the created SectionPlane object if successful, nil on
  #   failure.
  #
  # @version SketchUp 2014
  def add_section_plane(plane)
  end

  # The add_text method adds a note or label text entity to the entities
  #
  # @example 
  #   coordinates = [10, 10, 10]
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   point = Geom::Point3d.new coordinates
  #   text = entities.add_text "This is a Test", point
  #
  # @param text
  #   The text string to add.
  #
  # @param point
  #   A Point3d object representing the insertion point.
  #
  # @param [optional] vector
  #   vector representing an arrow leader.
  #
  # @return text - a Text object if successful
  #
  # @version SketchUp 6.0
  def add_text(text, point, vector)
  end

  # The {#[]} method is used to retrieve an entity by its index in an array of
  # entities. The index is a number between +0+ and entities.length - 1. In
  # general, it is preferable to use the {#each} method to iterate though all
  # of the entities in the collection as it will be much more efficient.
  # 
  # The {#at} method is an alias of {#[]}
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   entity0 = entities[0]
  #   if (entity0)
  #     UI.messagebox entity0
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Integer] entity_index
  #   The index for a specific entity.
  #
  # @return [Sketchup::Entity, nil] an {Sketchup::Entity} object if successful,
  #   +nil+ if not found
  #
  # @version SketchUp 6.0
  def at(entity_index)
  end

  # The clear! method is used to remove all entities from the collection of
  # entities.
  #
  # @example 
  #   coordinates = [10, 10, 10]
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   point = Geom::Point3d.new coordinates
  #   text = entities.add_text "This is a Test", point
  #   UI.messagebox "Clearing All"
  #   status = entities.clear!
  #
  # @return status - true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def clear!
  end

  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   entities.add_cpoint([10, 10, 10])
  #   number = entities.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer] 
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through the entities in the collection of
  # entities.
  #
  # @example 
  #   coordinates = [10, 10, 10]
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   point = Geom::Point3d.new coordinates
  #   text = entities.add_text "This is a Test", point
  #   entities.each { | entity| UI.messagebox entity }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [entity] A variable that will hold each Entity object as they are
  #   found if successful.
  def each
  end

  # The erase_entities method is used to erase one or more entities from the
  # model.
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
  #   face = entities.add_face pts
  #   
  #   # I just happen to know that the second entity in the
  #   # entities objects is an edge, so erase it.
  #   UI.messagebox entities
  #   entities.erase_entities entities[1]
  #   UI.messagebox entities
  #
  # @param entities
  #   An entity or array of entities.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def erase_entities(entities)
  end

  # The fill_from_mesh method is used to add faces and edges to the collection of
  # entities from a PolygonMesh. It requires that the entities collection to be
  # filled is empty. It has higher performance than add_faces_from_mesh, but
  # does less error checking as it builds the geometry.
  # 
  # The 2nd through 5th parameters are optional. The smooth_flags parameter
  # can contain any of the following values if passed. The constants were added
  # in SketchUp 2014. For previous versions, numeric values have to be specified
  # instead of the Ruby constants.
  # 
  #   - 0: Geom::PolygonMesh::NO_SMOOTH_OR_HIDE
  #   - 1: Geom::PolygonMesh::HIDE_BASED_ON_INDEX (Negative point index will hide the edge.)
  #   - 2: Geom::PolygonMesh::SOFTEN_BASED_ON_INDEX (Negative point index will soften the edge.)
  #   - 4: Geom::PolygonMesh::AUTO_SOFTEN (Interior edges are softened.)
  #   - 8: Geom::PolygonMesh::SMOOTH_SOFT_EDGES (All soft edges will also be smooth.)
  # 
  # The 4rd and 5th parameters will accept a Material object or a string name
  # of a material currently in the model.
  #
  # @example 
  #   pm = Geom::PolygonMesh.new
  #   pm.add_point([ 0, 0, 0]) # 1
  #   pm.add_point([10, 0, 0]) # 2
  #   pm.add_point([10,10, 0]) # 3
  #   pm.add_point([ 0,10, 0]) # 4
  #   pm.add_point([20, 0, 5]) # 5
  #   pm.add_point([20,10, 5]) # 6
  #   pm.add_polygon(1,-2,3,4)
  #   pm.add_polygon(2,5,6,-3)
  #   
  #   # Create a new group that we will populate with the mesh.
  #   group = Sketchup.active_model.entities.add_group
  #   material = Sketchup.active_model.materials.add('red')
  #   smooth_flags = Geom::PolygonMesh::HIDE_BASED_ON_INDEX
  #   group.entities.fill_from_mesh(pm, true, smooth_flags, material)
  #
  # @param [optional] weld_vertices
  #   Boolean. This argument has no effect and is
  #   kept for compatibility reasons. Points are always
  #   merged.
  #
  # @param polygonmesh
  #   A Polygon mesh object.
  #
  # @param [optional] smooth_flags
  #   An integer containing flags for soften
  #   and smooth settings.
  #
  # @param [optional] b_material
  #   Material object to paint back faces with.
  #
  # @param [optional] f_material
  #   Material object to paint front faces with.
  #
  # @return status - true if successful
  #
  # @version SketchUp 6.0
  def fill_from_mesh(polymesh, weld_vertices, smooth_flags = AUTO_SOFTEN|SMOOTH_SOFT_EDGES, f_material = nil, b_material = nil)
  end

  # The intersect_with method is used to intersect an entities, component
  # instance, or group object with a entities object.
  #
  # @example 
  #   entities.intersect_with recurse, transformation1, entities1,
  #     transformation2, hidden, entities2
  #
  # @param transform1
  #   The transformation for this entities object.
  #
  # @param recurse
  #   true if you want this entities object to be recursed
  #   (intersection lines will be put inside of groups and
  #   components within this entities object).
  #
  # @param entities1
  #   The entities object where you want the intersection
  #   lines to appear.
  #
  # @param entities2
  #   A single entity, or an array of entities.
  #
  # @param transform2
  #   The transformation for entities1.
  #
  # @param hidden
  #   true if you want hidden geometry in this entities
  #   object to be used in the intersection.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def intersect_with(recurse, transform1, entities1, transform2, hidden, entities2)
  end

  # The {#length} method is used to retrieve the number of entities in the
  # collection of entities.
  # 
  # The {#size} method is an alias for {#length} added in SketchUp 2014.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   entities.add_cpoint([10, 10, 10])
  #   number = entities.length
  #
  # @return [Integer] the number of entities in the collection of
  #   entities if successful
  #
  # @version SketchUp 6.0
  def length
  end

  # The model method is used to retrieve the model that contains the collection
  # of entities.
  #
  # @example 
  #   coordinates = [10, 10, 10]
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   point = Geom::Point3d.new coordinates
  #   text = entities.add_text "This is a Test", point
  #   model = entities.model
  #
  # @return model - the model that contains the collection of
  #   entities if successful.
  #
  # @version SketchUp 6.0
  def model
  end

  # The parent method is used to retrieve the parent or object that contains the
  # collection of entities. A parent can be either a Model or
  # ComponentDefinition object.
  #
  # @example 
  #   coordinates = [10, 10, 10]
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   point = Geom::Point3d.new coordinates
  #   text = entities.add_text "This is a Test", point
  #   parent = entities.parent
  #
  # @return parent - the object that contains the collection of
  #   entities if successful
  #
  # @version SketchUp 6.0
  def parent
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   status = entities.remove_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#length} method is used to retrieve the number of entities in the
  # collection of entities.
  # 
  # The {#size} method is an alias for {#length} added in SketchUp 2014.
  #
  # @example 
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   entities.add_cpoint([10, 10, 10])
  #   number = entities.length
  #
  # @return [Integer] the number of entities in the collection of
  #   entities if successful
  #
  # @version SketchUp 6.0
  def size
  end

  # The transform_by_vectors method is used to apply several vectors to several
  # sub-entities all at once.
  #
  # @example 
  #   # Need better Ruby example.
  #   entities = entities.transform_by_vectors sub_entities, vector_array
  #
  # @param sub_entities
  #   An array of entities to transform.
  #
  # @param vectors
  #   An array of vectors to apply.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def transform_by_vectors(sub_entities, vectors)
  end

  # The transform_entities method is used to apply a transform to several
  # sub-entities all at once.
  # 
  # Important note: If you apply a transformation to entities that are
  # not in the current edit context (i.e. faces that are inside a group),
  # SketchUp will apply the transformation incorrectly, since the geometry
  # has one origin and the current edit context has another. You can correct
  # for this by watching the Model.edit_transform and Model.active_path. See
  # ModelObserver.onActivePathChanged for more information.
  #
  # @example 
  #   entities = Sketchup.active_model.entities
  #   entities.add_line([0,0,0],[100,100,100])
  #   entities.add_line([0,0,0],[200,-10,-10])
  #   
  #   entities_to_transform = []
  #   entities_to_transform.push(entities[0])
  #   entities_to_transform.push(entities[1])
  #   
  #   transform = Geom::Transformation.new([100,0,0])
  #   entities.transform_entities(transform, ent1, ent2, ent3)
  #
  # @param transform
  #   The Transformation to apply.
  #
  # @param entities
  #   An array or series of entities to transform.
  #
  # @return status - results of the transform.
  #
  # @version SketchUp 6.0
  def transform_entities(transform, entities)
  end

end

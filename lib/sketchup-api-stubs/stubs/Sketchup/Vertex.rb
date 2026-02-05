# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# A Vertex. A Vertex represents the end of an Edge or a point inside a Face.
#
# @version SketchUp 6.0
class Sketchup::Vertex < Sketchup::Entity

  # Instance Methods

  # The common_edge method is used to find a common edge that is defined by this
  # vertex and another vertex
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   edge = entities.add_line([0, 0, 0], [20, 20, 20], [40, 40, 40])
  #
  #   # returns array of vertices that make up the line
  #   vertices = edge.vertices
  #   vertex1 = vertices[0]
  #   vertex2 = vertices[1]
  #   edge = vertex1.common_edge(vertex2)
  #
  # @param [Sketchup::Vertex] vertex2
  #   A Vertex object.
  #
  # @return [Sketchup::Edge, nil] an Edge object common to both vertices if
  #   successful. Returns nil if there is no edge between the
  #   two vertices.
  #
  # @version SketchUp 6.0
  def common_edge(vertex2)
  end

  # The {#curve_interior?} method is used to determine if this vertex is on the
  # interior of a Curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new(0, 0, 1)
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle(ORIGIN, Z_AXIS, 10)
  #   edge = edgearray[0]
  #   curve = edge.curve
  #   vertices = curve.vertices
  #   # returns array of vertices that make up the circle
  #   vertices = edge.vertices
  #   vertex1 = vertices[0]
  #   status = vertex1.curve_interior?
  #
  # @note This method doesn't actually return a boolean as the question mark
  #   post-fix would normally indicate. But the result still evaluates to
  #   truthy or falsy.
  #
  # @return [Sketchup::ArcCurve, nil]
  #
  # @version SketchUp 6.0
  def curve_interior?
  end

  # The edges method is used to retrieve an Array of edges that use the Vertex.
  #
  # @example
  #   edge = entities[0]
  #   # Returns array of vertices that make up the line.
  #   verticies = edge.vertices
  #   vertex1 = verticies[0]
  #   edges = vertex1.edges
  #
  # @return [Array<Sketchup::Edge>] an Array of edge objects if successful
  #
  # @version SketchUp 6.0
  def edges
  end

  # The faces method is used to retrieve an Array of faces that use the vertex.
  #
  # @example
  #   edge = entities[0]
  #   # Returns array of vertices that make up the line.
  #   verticies = edge.vertices
  #   vertex1 = verticies[0]
  #   faces = vertex1.faces
  #
  # @return [Array<Sketchup::Face>] an Array of faces that use the vertex if
  #   successful
  #
  # @version SketchUp 6.0
  def faces
  end

  # The loops method is used to retrieve an Array of loops that use the vertex.
  #
  # @example
  #   edge = entities[0]
  #   # Returns array of vertices that make up the line.
  #   verticies = edge.vertices
  #   vertex1 = verticies[0]
  #   loops = vertex1.loops
  #
  # @return [Array<Sketchup::Loop>] an Array of loops that use the vertex if
  #   successful
  #
  # @version SketchUp 6.0
  def loops
  end

  # The position method is used to retrieve the Point3d position of a vertex.
  #
  # @example
  #   edge = entities[0]
  #   # Returns array of vertices that make up the line.
  #   verticies = edge.vertices
  #   vertex1 = verticies[0]
  #   position = vertex1.position
  #
  # @return [Geom::Point3d] a Point3d object representing the position of
  #   the vertex if successful
  #
  # @version SketchUp 6.0
  def position
  end

  # The used_by? method is used to determine if the Vertex is used by a given
  # Edge or Face.
  #
  # @example
  #   used = vertex1.used_by? my_face
  #
  # @param [Sketchup::Edge, Sketchup::Face] face_or_edge
  #   A Face or Edge ot test against.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def used_by?(face_or_edge)
  end

end

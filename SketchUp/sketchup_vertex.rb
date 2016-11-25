# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::Vertex < Sketchup::Entity

  # Instance Methods

  # The common_edge method is used to find a common edge that is defined by this
  # vertex and another vertex
  #
  # @example 
  #   edge = entities[0]
  #   # returns array of vertices that make up the line
  #   verticies = edge.vertices
  #   vertex1 = verticies[0]
  #   vertex2 = verticies[1]
  #   edge = vertex1.common_edge vertex2
  #   if (edge)
  #     UI.messagebox edge
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param vertex2
  #   A Vertex object.
  #
  # @return edge - an Edge object common to both vertices if
  #   successful. Returns nil if there is no edge between the
  #   two vertices.
  #
  # @version SketchUp 6.0
  def common_edge(vertex2)
  end

  # The curve_interior? method is used to determine if this vertex is on the
  # interior of a Curve.
  #
  # @example 
  #   edge = entities[0]
  #   # returns array of vertices that make up the line
  #   verticies = edge.vertices
  #   vertex1 = verticies[0]
  #   status = vertex1.curve_interior?
  #   if (status)
  #     UI.messagebox status
  #   else
  #     #returns nil if vertex is not on interior of a Curve
  #     UI.messagebox "Failure"
  #   end
  #
  # @return status - true if it is used by exactly two edges which
  #   are both part of the same curve.
  #
  # @return [Boolean] 
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
  # @return edges - an Array of edge objects if successful
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
  # @return faces - an Array of faces that use the vertex if
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
  # @return loops - an Array of loops that use the vertex if
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
  # @return point - a Point3d object representing the position of
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
  # @param face_or_edge
  #   A Face or Edge ot test against.
  #
  # @return used - true if the Vertex is used in the given entity.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def used_by?(face_or_edge)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Edge class contains methods modifying and extracting information for
# edges.
#
# @version SketchUp 6.0
class Sketchup::Edge < Sketchup::Drawingelement

  # Instance Methods

  # The all_connected method retrieves all of the entities connected to an edge,
  # including the edge itself.
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
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   entity2 = entities[2]
  #   edges = entity1.all_connected
  #   if (edges)
  #     UI.messagebox edges.to_s
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Array<Sketchup::Entity>] the edge and entities connected to that edge
  #
  # @version SketchUp 6.0
  def all_connected
  end

  # The common_face method is used to identify a face that is common to two
  # edges.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0,0,0]
  #   pts[1] = [width,0,0]
  #   pts[2] = [width,depth,0]
  #   pts[3] = [0,depth,0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   # I know that the second and third entity objects are edges
  #   entity1 = entities[1]
  #   entity2 = entities[2]
  #   UI.messagebox entity1
  #   UI.messagebox entity2
  #   face = entity1.common_face entity2
  #   if (face)
  #     UI.messagebox face
  #   else
  #     UI.messagebox "Failure: No Common Face"
  #   end
  #
  # @param [Sketchup::Edge] edge2
  #   The face whose edge you are checking for commonality.
  #
  # @return [Sketchup::Face, nil] the Face object that is common to the two edges
  #   if successful
  #
  # @version SketchUp 6.0
  def common_face(edge2)
  end

  # The curve method is used to get the Curve object that this edge belongs
  # to, if any. Note that if the edge is part of an arc instead of a random
  # curve, then this method will return an ArcCurve object.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   curve = edge.curve
  #   if (curve)
  #     # If it is a curve, display a pointer to the curve
  #     UI.messagebox curve
  #   else
  #     UI.messagebox "Failure: Not a Curve"
  #   end
  #
  # @return [Sketchup::Curve, nil] returns a Curve object if it is a
  #   curve, nil if it is not a curve
  #
  # @version SketchUp 6.0
  def curve
  end

  # The end method is used to retrieve the Vertex object at the end of the edge.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   vertex = edge.end
  #   if (vertex)
  #     # display a pointer to the Vertex
  #     UI.messagebox vertex
  #   else
  #     UI.messagebox "Failure"
  #   end
  #   point = vertex.position
  #   # Let's get the Point3d of the vertex
  #   if (point)
  #     UI.messagebox point
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Sketchup::Vertex] a Vertex object if successful
  #
  # @version SketchUp 6.0
  def end
  end

  # The explode_curve method is used to explode an edge as though it were an
  # ArcCurve.
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
  #   # I just happen to know that the second entity in the
  #   # entities objects is an edge.
  #   entity1 = entities[1]
  #   curve = entity1.explode_curve
  #   if (curve)
  #     UI.messagebox curve
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Sketchup::Edge] an exploded edge object if successful
  #
  # @version SketchUp 6.0
  def explode_curve
  end

  # The faces method is used to retrieve all of the faces common to the edge.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   faces = edge.faces
  #   if (faces)
  #     # Display the pointer to the first face returned in the array
  #     UI.messagebox faces[0]
  #   else
  #     UI.messagebox "Failure: No Faces Found"
  #   end
  #
  # @return [Array<Sketchup::Face>] an array of Face objects if successful, false
  #   if unsuccessful
  #
  # @version SketchUp 6.0
  def faces
  end

  # The find_faces method is used to create all of the Faces that can be created
  # with this edge. For example, if you use the API to draw three edges that form
  # a triangle, the face between them will not show up because you've only drawn
  # the edges, but if you call find_faces on one of the edges, the triangle will
  # be filled in.
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
  #   # I just happen to know that the second entity in the
  #   # entities objects is an edge.
  #   entity1 = entities[1]
  #   # Getting zero.
  #   number = entity1.find_faces
  #   if (number)
  #     UI.messagebox "I created " + number.to_s + " faces."
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Integer] the number of faces found
  #
  # @version SketchUp 6.0
  def find_faces
  end

  # The length method is used to retrieve the length of an edge in current
  # units.
  #
  # You can pass in an optional Transformation (or an array that can represent a
  # transformation), to correct for a parent group's transformation. For example,
  # if an edge is inside of a group that is scaled to 200%, the length method
  # will return the unscaled length of the edge. So by passing a 200%
  # transformation object to this method, you can account for that to get the
  # "visual" length of the edge.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   length = edge.length
  #   if (length)
  #     UI.messagebox length
  #   end
  #
  # @overload length
  #
  #   @return [Length] the length of the edge in current units
  #
  # @overload length(transform)
  #
  #   @param transform [Geom::Transformation] A Transformation object or array
  #                      that can be interpreted as a Transformation object.
  #   @return [Length] the length of the edge in current units
  #
  # @version SketchUp 6.0
  def length(*args)
  end

  # The line method is used to retrieve the line defined by the edge. Lines in
  # SketchUp aren't visible entities but geometric constructs represented by
  # an Array with a Point3d and a Vector3d. See the Geom module and the Array
  # class for more information on lines.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   # Returns a 3D ray
  #   line = edge.line
  #   if (line)
  #     UI.messagebox line
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Array(Geom::Point3d, Geom::Vector3d)] an array with a Point3d object
  #   and a Vector3d object.
  #
  # @version SketchUp 6.0
  def line
  end

  # The other_vertex method is used to find the opposite vertex given one vertex
  # of the edge.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   # Get the end vertex of an edge
  #   vertex = edge.end
  #   # Should find the starting vertex
  #   othervertex = edge.other_vertex vertex
  #   if (othervertex)
  #     UI.messagebox othervertex
  #   else
  #     UI.messagebox "Failure"
  #   end
  #   # The Point3d for the vertex
  #   point = othervertex.position
  #   if (point)
  #     UI.messagebox point
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Sketchup::Vertex] vertex1
  #   One of the Vertex objects associated with the edge.
  #
  # @return [Sketchup::Vertex] the other Vertex object associated with the edge
  #
  # @version SketchUp 6.0
  def other_vertex(vertex1)
  end

  # The {#reversed_in?} method is used to determine if the edge is reversed in
  # a face's bounding loop.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   points = []
  #   points[0] = [0, 0, 0]
  #   points[1] = [9, 0, 0]
  #   points[2] = [9, 9, 0]
  #   points[3] = [0, 9, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face(points)
  #   edge = face.edges[0]
  #   if edge.reversed_in?(face)
  #     face.reverse!
  #   end
  #
  # @param [Sketchup::Face] face
  #   The face that is bounded by the edge.
  #
  # @return [Boolean]
  #
  # @return [Boolean] +true+ if the edge is reversed, +false+ if it is not
  #   reversed. +nil+ if the edge and face is not connected.
  #
  # @see Sketchup::EdgeUse
  #
  # @see Sketchup::Loop
  #
  # @version SketchUp 6.0
  def reversed_in?(face)
  end

  # The {#smooth=} method is used to set the edge to be smooth.
  #
  # A smooth edge will cause the shading between connected faces to blend to a
  # smooth transition. The edge will still be visible.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0], [100,100,0])
  #   # Soft and Smooth are normally set in pairs.
  #   edge.soft = true
  #   edge.smooth = true
  #
  # @note The soft and smooth properties are normally set in pairs. You can
  #   observer this when the Soften/Smooth Edges feature or holding down Ctrl
  #   when using the Eraser Tool.
  #
  # @param [Boolean] value
  #
  # @return [Boolean]
  #
  # @see https://help.sketchup.com/en/article/3000097
  #
  # @version SketchUp 6.0
  def smooth=(value)
  end

  # The {#smooth?} method is used to retrieve the current smooth setting for an
  # edge.
  #
  # A smooth edge will cause the shading between connected faces to blend to a
  # smooth transition. The edge will still be visible.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0], [100,100,0])
  #   # Soft and Smooth are normally set in pairs.
  #   edge.smooth = !edge.smooth?
  #   edge.soft = edge.smooth?
  #
  # @return [Boolean]
  #
  # @see https://help.sketchup.com/en/article/3000097
  #
  # @version SketchUp 6.0
  def smooth?
  end

  # The {#soft=} method is used to set the edge to be soft.
  #
  # A soft edge will cause the connected faces to be treated as a surface. This
  # means that if you have Hidden Geometry off and select one face it will also
  # select all faces connected with soft edges. A soft edge will also appear
  # hidden.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0], [100,100,0])
  #   # Soft and Smooth are normally set in pairs.
  #   edge.soft = true
  #   edge.smooth = true
  #
  # @note The soft and smooth properties are normally set in pairs. You can
  #   observer this when the Soften/Smooth Edges feature or holding down Ctrl
  #   when using the Eraser Tool.
  #
  # @param [Boolean] value
  #
  # @return [Boolean]
  #
  # @see https://help.sketchup.com/en/article/3000097
  #
  # @version SketchUp 6.0
  def soft=(value)
  end

  # The {#soft?} method is used to retrieve the current smooth setting for an
  # edge.
  #
  # A soft edge will cause the connected faces to be treated as a surface. This
  # means that if you have Hidden Geometry off and select one face it will also
  # select all faces connected with soft edges. A soft edge will also appear
  # hidden.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0], [100,100,0])
  #   # Soft and Smooth are normally set in pairs.
  #   edge.soft = !edge.soft?
  #   edge.smooth = edge.soft?
  #
  # @return [Boolean]
  #
  # @see https://help.sketchup.com/en/article/3000097
  #
  # @version SketchUp 6.0
  def soft?
  end

  # The split method is used to  to split an edge into to or more distinct
  # edges. If a Point3d is given, it must be a point that is on the Edge.
  #
  # If a Float is given, it is a number between 0 and 1 that gives the
  # relative position along the edge at which to split it.  For example,
  # edge.split(0.5) will split the Edge at its midpoint. This split position
  # is measured from the Edge.start.
  #
  # Returns the new Edge that was created as a result of splitting this one.
  #
  # @example
  #   # Split a line in half.
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   new_edge = edge.split 0.5
  #
  # @param [Geom::Point3d] position
  #   A Point3d object whose location is along the edge, or
  #   a Float between 0.0 and 1.0 defining how far along the
  #   edge to split.
  #
  # @return [Sketchup::Edge] the new Edge object that was split off
  #   the old one if successful
  #
  # @version SketchUp 6.0
  def split(position)
  end

  # The end method is used to retrieve the Vertex object at the start of the
  # edge.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   vertex = edge.start
  #   if (vertex)
  #     # display a pointer to the Vertex
  #     UI.messagebox vertex
  #   else
  #     UI.messagebox "Failure"
  #   end
  #   point = vertex.position
  #   # Let's get the Point3d of the vertex
  #   if (point)
  #     UI.messagebox point
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Sketchup::Vertex] a Vertex object if successful
  #
  # @version SketchUp 6.0
  def start
  end

  # The used_by? method is used to see if an edge is used by a given Face or
  # Vertex.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   # Returns a vertex
  #   vertex = edge.start
  #   # Check to see if the edge is used by the Vertex.
  #   status = edge.used_by? vertex
  #   if (status)
  #     UI.messagebox status
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Sketchup::Vertex, Sketchup::Face] element
  #   A Vertex or Face object.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def used_by?(element)
  end

  # The vertices method is used to retrieve the vertices on the edge.
  #
  # @example
  #   edge = Sketchup.active_model.entities.add_line([0,0,0],[100,100,0])
  #   vertices = edge.vertices
  #
  # @return [Array<Sketchup::Vertex>] an array of Vertex objects
  #
  # @version SketchUp 6.0
  def vertices
  end

end

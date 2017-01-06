# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The EdgeUse class defines how an Edge is used in the definition of a Face.
#
# @version SketchUp 6.0
class Sketchup::EdgeUse < Sketchup::Entity

  # Instance Methods

  # The edge method is used to retrieve the edge for the edge use.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   edge = edgeuse.edge
  #
  # @return edge - an Edge object used by this edge use
  #
  # @version SketchUp 6.0
  def edge
  end

  # The end_vertex_normal method is used to retrieve the vertex normal for the
  # end point of this edgeuse.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   vector3d = edgeuse.end_vertex_normal
  #
  # @return vector3d - a vector3d object if successful.
  #
  # @version SketchUp 6.0
  def end_vertex_normal
  end

  # The face method is used to retrieve the face used by this edge use.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   face = edgeuse.face
  #
  # @return face - a Face object used by this edge use
  #
  # @version SketchUp 6.0
  def face
  end

  # The loop method is used to retrieve the loop for this edge use.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   loop = edgeuse.loop
  #
  # @return loop - a Loop object that contains this edge use.
  #
  # @version SketchUp 6.0
  def loop
  end

  # The next method is used to retrieve the next edge use in a loop.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   next_edgeuse = edgeuse.next
  #
  # @return edgeuse - the next EdgeUse object in a loop
  #
  # @version SketchUp 6.0
  def next
  end

  # The partners method is used to retrieve all of the partner edge uses that
  # uses the same edge.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points1 = []
  #   points1 << Geom::Point3d.new(0, 0, 0)
  #   points1 << Geom::Point3d.new(100, 0, 0)
  #   points1 << Geom::Point3d.new(100, 200, 0)
  #   points1 << Geom::Point3d.new(0, 200, 0)
  #   face1 = entities.add_face(points1)
  #   points2 = []
  #   points2 << Geom::Point3d.new(100, 0, 0)
  #   points2 << Geom::Point3d.new(200, 0, 0)
  #   points2 << Geom::Point3d.new(200, 200, 0)
  #   points2 << Geom::Point3d.new(100, 200, 0)
  #   face2 = entities.add_face(points2)
  #   loop = face1.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[1]
  #   partners = edgeuse.partners
  #
  # @return array - an array of partner Edge Use objects.
  #
  # @version SketchUp 6.0
  def partners
  end

  # The previous method is used to retrieve the previous edge use in a loop.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   previous_edgeuse = edgeuse.previous
  #
  # @return edgeuse - the previous Edge Use object in the loop
  #
  # @version SketchUp 6.0
  def previous
  end

  # The reversed? method is used to determine if the edge direction is opposite
  # of the edge use direction. The edge use direction is the same as the loop
  # it belongs to.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   reversed = edgeuse.reversed?
  #
  # @return boolean - true if reversed, false if not reversed.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def reversed?
  end

  # The start_vertex_normal method is used to retrieve the vertex normal for
  # the start point of this edgeuse.
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = []
  #   points << Geom::Point3d.new(0, 0, 0)
  #   points << Geom::Point3d.new(100, 0, 0)
  #   points << Geom::Point3d.new(100, 200, 0)
  #   points << Geom::Point3d.new(0, 200, 0)
  #   face = entities.add_face(points)
  #   loop = face.outer_loop
  #   edgeuses = loop.edgeuses
  #   edgeuse = edgeuses[0]
  #   vector3d = edgeuse.start_vertex_normal
  #
  # @return vector3d - a vector3d object if successful.
  #
  # @version SketchUp 6.0
  def start_vertex_normal
  end

end

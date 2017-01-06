# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Loop is a low level topology class that will not need to be used often. A
# Loop is a chain of Edges that bound a Face.
#
# @version SketchUp 6.0
class Sketchup::Loop < Sketchup::Entity

  # Instance Methods

  # Determine if the loop is convex.
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
  #   if loop.convex?
  #     puts "Loop is convex."
  #   else
  #     puts "Loop is not convex."
  #   end
  #
  # @return status - true if convex, false if not convex.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def convex?
  end

  # Get an array of the edges that define the loop in an ordered sequence.
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
  #   edges = loop.edges
  #
  # @return edges - an array of Edge objects if successful.
  #
  # @version SketchUp 6.0
  def edges
  end

  # Get an array of the EdgeUse objects that define this loop in an ordered
  # sequence.
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
  #
  # @return edgeuses - an array of EdgeUse objects if successful.
  #
  # @version SketchUp 6.0
  def edgeuses
  end

  # Get the Face object that is bounded by this loop.
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
  #   loop_face = loop.face
  #
  # @return face - a Face object if successful
  #
  # @version SketchUp 6.0
  def face
  end

  # Determine if this is an outer loop. Each face has one outer loop, and will
  # have one loop for each hole.
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
  #   if loop.outer?
  #     puts "Loop is an outer loop."
  #   else
  #     puts "Loop is not an outer loop."
  #   end
  #
  # @return status - true if the loop is an outer loop, false if it
  #   is not an outer loop.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def outer?
  end

  # Get an array of the vertices that define the loop in an ordered sequence.
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
  #   vertices = loop.vertices
  #
  # @return vertices - an array of Vertex objects if successful.
  #
  # @version SketchUp 6.0
  def vertices
  end

end

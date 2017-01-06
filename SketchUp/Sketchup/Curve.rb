# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Curve class is used by SketchUp to unite a series of Edge objects into
# one conceptual entity. Since SketchUp is a surface modeler, all circles,
# arcs, and arbitrary curves are really just edges that are bound together in
# sequence.
#
# There is a subclass of Curve called ArcCurve, which is any curve that makes
# up part of a circle. You can think of ArcCurves as entities that were created
# with SketchUp's Arc or Circle drawing tools and Curves as entities that were
# created with the Freehand drawing tool.
#
# @version SketchUp 6.0
class Sketchup::Curve < Sketchup::Entity

  # Instance Methods

  # The count_edges method is used to retrieve the number of Edge objects that
  # make up the Curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   curve = edge.curve
  #   number = curve.count_edges
  #
  # @return num_edges - the number of edges in the curve
  #
  # @version SketchUp 6.0
  def count_edges
  end

  # The each_edge method is used to iterate through all of the Edge objects in
  # the curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   curve = edge.curve
  #   curve.each_edge {|e| UI.messagebox e}
  #
  # @return edge - a variable that will hold each Edge object as
  #   they are found.
  #
  # @version SketchUp 6.0
  def each_edge
  end

  # The edges method is used to retrieve an array of Edge objects that make up
  # the Curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   curve = edge.curve
  #   edges = curve.edges
  #
  # @return edges - an array of Edge objects if successful
  #
  # @version SketchUp 6.0
  def edges
  end

  # The first_edge method is used to retrieve the first edge of the curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[0]
  #   curve = edge.curve
  #   firstedge = curve.first_edge
  #
  # @return edge - the first Edge object in the curve if successful
  #
  # @version SketchUp 6.0
  def first_edge
  end

  #
  # @example
  #   # Create a polygon and check its edge
  #   ents = Sketchup.active_model.entities
  #   ents.add_ngon [0, 0, 0], [0, 0, 1], 10, 6
  #   curve = nil
  #   ents.each { |e| curve = e.curve if e.is_a? Sketchup::Edge }
  #   is_poly = curve.is_polygon?
  #
  # @return True if this edge was originally created by the polygon
  #   tool, otherwise false.
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.1 M1
  def is_polygon?
  end

  # The last_edge method is used to retrieve the last edge of the curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[7]
  #   curve = edge.curve
  #   lastedge = curve.last_edge
  #
  # @return edge - the last Edge object in the curve if successful
  #
  # @version SketchUp 6.0
  def last_edge
  end

  # The length method retrieves the length of the curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[7]
  #   curve = edge.curve
  #   length = curve.length
  #
  # @return length - the length of the curve in current units if
  #   successful
  #
  # @version SketchUp 6.0
  def length
  end

  # The vertices method retrieves a collection of all vertices in a curve.
  #
  # @example
  #   # Need example ruby code here.
  #
  # @param point_array
  #   Array of Point3d objects to move each vertex to match.
  #
  # @return success - true or false
  #
  # @version SketchUp 6.0
  def move_vertices(point_array)
  end

  # The vertices method retrieves a collection of all vertices in a curve.
  #
  # @example
  #   centerpoint = Geom::Point3d.new
  #   # Create a circle perpendicular to the normal or Z axis
  #   vector = Geom::Vector3d.new 0,0,1
  #   vector2 = vector.normalize!
  #   model = Sketchup.active_model
  #   entities = model.entities
  #   edgearray = entities.add_circle centerpoint, vector2, 10
  #   edge = edgearray[7]
  #   curve = edge.curve
  #   vertices = curve.vertices
  #
  # @return vertices - a collection of the vertices
  #
  # @version SketchUp 6.0
  def vertices
  end

end

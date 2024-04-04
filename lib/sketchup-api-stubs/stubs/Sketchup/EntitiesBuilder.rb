# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::EntitiesBuilder} is an interface to generate bulk geometry
# with performance in mind.
#
# This is particularly useful for importers where the geometry is already well
# defined and one wants to recreate it without further processing.
#
# Before the Entities Builder was introduced there were two ways of adding
# geometry; the +add_*+ methods of {Sketchup::Entities} and {Geom::PolygonMesh}.
#
# The former is slow as the methods perform intersection, splitting and merging
# of overlapping geometry. This is useful when creating tools similar to the
# Line and Rectangle tool.
#
# {Geom::PolygonMesh} is fast, but it doesn't provide granular control per
# face or edge added.
#
# Entities Builder is similar to {Geom::PolygonMesh} in speed, but with the
# flexibility of {Sketchup::Entities}'s +add_*+ methods.
#
# <i>(See "Creating a triangulated grid" example)</i>
#
# rdoc-image:../images/entities-builder-grid-example.png
#
# @example Creating a triangulated grid
#   model = Sketchup.active_model
#   model.start_operation('Create Grid', true)
#   model.entities.build { |builder|
#     # Creates a grid similar to Sandbox Tools, with each square
#     # triangulated with a soft+smooth edge.
#     10.times { |x|
#       10.times { |y|
#         # 4 +--+ 3
#         #   |\ |
#         #   | \|
#         # 1 +--+ 2
#         pt1 = Geom::Point3d.new(x, y, 0)
#         pt2 = Geom::Point3d.new(x + 1, y, 0)
#         pt3 = Geom::Point3d.new(x + 1, y + 1, 0)
#         pt4 = Geom::Point3d.new(x, y + 1, 0)
#         face1 = builder.add_face([pt1, pt2, pt4])
#         face2 = builder.add_face([pt2, pt3, pt4])
#         material = (x + y).odd? ? 'red' : 'maroon'
#         face1.material = material
#         face2.material = material
#         edge = builder.add_edge(pt2, pt4)
#         edge.soft = true
#         edge.smooth = true
#       }
#     }
#   }
#   model.commit_operation
#
# @note Like {Geom::PolygonMesh} there is minimal validation checks made on
#   the input to the creation of the geometry. Vertices are de-duplicated and
#   edges sharing the same vertices will be de-duplicated. But no intersection
#   of overlapping entities is made. It leaves a higher responsibility on the
#   API user to produce valid geometry.
#
# @note While using {Sketchup::Entities#build} it is important to not
#   add or remove vertices by other means of the builder. Also don't modify the
#   position of the vertices in the {Sketchup::Entities} container geometry is
#   added to. Doing so can break the vertex-cache that de-duplicates the vertices.
#
# @see file:pages/generating_geometry.md
#   Guide on Generating Geometry
#
# @see Sketchup::Entities#build
#
# @see Sketchup::Entities
#
# @see Geom::PolygonMesh
#
# @version SketchUp 2022.0
class Sketchup::EntitiesBuilder

  # Instance Methods

  # Adds a {Sketchup::Edge} to the {#entities} collection.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.entities.build { |builder|
  #     edge = builder.add_edge([0, 0, 0], [9, 0, 0])
  #     edge.material = 'red'
  #   }
  #
  # @note Does not split intersecting faces or edges.
  #
  # @overload add_edge(point1, point2)
  #
  #   @param [Geom::Point3d] point1
  #   @param [Geom::Point3d] point2
  #
  # @overload add_edge(points)
  #
  #   @param [Array(Geom::Point3d, Geom::Point3d)] points
  #
  # @raise [ArgumentError] If the points are considered equal.
  #
  # @raise [RuntimeError] If the builder is not valid.
  #
  # @return [Sketchup::Edge]
  #
  # @see Sketchup::Entities#add_line
  #
  # @version SketchUp 2022.0
  def add_edge(*args)
  end
  alias_method :add_line, :add_edge

  # Adds a continuous set of {Sketchup::Edge}'s to the {#entities} collection.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.entities.build { |builder|
  #     edges = builder.add_edges([0, 0, 0], [6, 0, 0], [9, 0, 8]) # => 2 edges
  #     edges.each { |edge|
  #       edge.material = 'red'
  #     }
  #   }
  #
  # @note Does not split intersecting faces or edges.
  #
  # @overload add_edges(points)
  #
  #   @param [Array<Geom::Point3d>] points
  #
  # @overload add_edges(*points)
  #
  #   @param [Array<Geom::Point3d>] points
  #
  # @raise [RuntimeError] If the builder is not valid.
  #
  # @return [Array<Sketchup::Edge, nil>] In the array, for each pair in +points+ an edge is returned.
  #   If two point are so close they are considered identical then +nil+ is returned.
  #
  # @see Sketchup::Entities#add_edges
  #
  # @version SketchUp 2022.0
  def add_edges(*args)
  end

  # Adds a {Sketchup::Face} to the {#entities} collection.
  #
  # @example Adding a simple face
  #   model = Sketchup.active_model
  #   model.entities.build { |builder|
  #     face = builder.add_face([[0, 0, 0], [6, 0, 0], [6, 8, 0], [0, 8, 0]])
  #     face.material = 'red'
  #   }
  #
  # @example Adding an edge with two holes
  #   model = Sketchup.active_model
  #   model.entities.build { |builder|
  #     outer_loop = [[0, 0, 0], [8, 0, 0], [8, 9, 0], [0, 9, 0]]
  #     hole1 = [[1, 1, 0], [3, 1, 0], [3, 8, 0], [1, 8, 0]]
  #     hole2 = [[4, 1, 0], [7, 1, 0], [7, 8, 0], [4, 8, 0]]
  #     face = builder.add_face(outer_loop, holes: [hole1, hole2])
  #   }
  #
  # @note Does not split intersecting faces or edges.
  #
  # @overload add_face(outer_loop)
  #
  #   @param [Array<Geom::Point3d>] outer_loop
  #
  # @overload add_face(*outer_loop)
  #
  #   @param [Array<Geom::Point3d>] outer_loop
  #
  # @overload add_face(outer_loop, holes: inner_loops)
  #
  #   Adds a face with holes.
  #   @note The inner loops are not validated to be within the bounds of the outer loop.
  #   @param [Array<Geom::Point3d>] outer_loop
  #   @param [Array<Array<Geom::Point3d>>] inner_loops
  #
  # @overload add_face(*outer_loop, holes: inner_loops)
  #
  #   Adds a face with holes.
  #   @note The inner loops are not validated to be within the bounds of the outer loop.
  #   @param [Array<Geom::Point3d>] outer_loop
  #   @param [Array<Array<Geom::Point3d>>] inner_loops
  #
  # @raise [ArgumentError] If points are not planar.
  #
  # @raise [ArgumentError] If any of the loops doesn't have at least 3 points.
  #
  # @raise [RuntimeError] If the builder is not valid.
  #
  # @return [Sketchup::Face]
  #
  # @see Sketchup::Entities#add_face
  #
  # @version SketchUp 2022.0
  def add_face(*args)
  end

  # The {Sketchup::Entities} collection the {Sketchup::EntitiesBuilder} will add
  # the geometry to.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.entities.build { |builder|
  #     p builder.entities == model.entities # => true
  #   }
  #
  # @raise [RuntimeError] If the builder is not valid.
  #
  # @return [Sketchup::Entities]
  #
  # @version SketchUp 2022.0
  def entities
  end

  # Indicates whether the builder object is valid and can be used.
  #
  # A builder object is only valid within the scope of the block given to
  # {Sketchup::Entities#build}.
  #
  # When this return +false+, calling any other method on the builder will raise
  # an error.
  #
  # @bug Prior to SketchUp 2023.0 this returned +0+ for success instead of +true+.
  #   In Ruby +0+ evaluates as +true+ so conditional logic still worked.
  #
  # @example
  #   model = Sketchup.active_model
  #   cached_builder = nil
  #   model.entities.build { |builder|
  #     p builder.valid? # => true
  #     cached_builder = builder # Don't hold on to builder objects.
  #   }
  #   p cached_builder.valid? # => false
  #
  # @return [Boolean]
  #
  # @version SketchUp 2022.0
  def valid?
  end

  # Finds an existing {Sketchup::Vertex} for the given position, otherwise returns +nil+.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.entities.build { |builder|
  #     edge = builder.add_edge([1, 0, 0], [9, 0, 0])
  #     builder.vertex_at([0, 0, 0]) => nil
  #     builder.vertex_at([9, 0, 0]) => #<Sketchup::Vertex>
  #   }
  #
  # @return [Sketchup::Vertex, nil]
  #
  # @version SketchUp 2022.0
  def vertex_at(position)
  end

end

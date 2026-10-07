# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

#
# @api SpaceEntities
#
# @todo Add documentation.
#
# @version SketchUp 2025.0
class Sketchup::Space < Sketchup::Drawingelement

  # Instance Methods

  # The {#add_hole} method defines a new hole in the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #      Geom::Point3d.new(0.0.m, 0.0.m, 0),
  #      Geom::Point3d.new(0.0.m, 2.0.m, 0),
  #      Geom::Point3d.new(2.0.m, 2.0.m, 0),
  #      Geom::Point3d.new(2.0.m, 0.0.m, 0),
  #   ]
  #
  #   orientation_point = Geom::Point3d.new(1.0.m, 1.0.m, 0)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #
  #   hole_points = [
  #      Geom::Point3d.new(0.25.m, 0.25.m, 0),
  #      Geom::Point3d.new(0.75.m, 0.25.m, 0),
  #      Geom::Point3d.new(0.75.m, 0.75.m, 0),
  #      Geom::Point3d.new(0.25.m, 0.75.m, 0),
  #   ]
  #   space.add_hole(hole_points)
  #
  # @param [Array<Geom::Point3d>] hole_points
  #
  # @todo Note that currently, we're not doing any validation on the hole.
  #   It is assumed that the hole definition winds opposite the perimeter.
  #   We also do not yet verify that the hole doesn't intersect with the
  #   perimeter.
  #   We also do not yet verify that the hole is wholly inside the perimeter.
  #
  # @version SketchUp 2026.0
  def add_hole(hole_points)
  end

  # The {#ceiling_plane} method returns the ceiling plane of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #      Geom::Point3d.new(0.0.m, 0.0.m, 0),
  #      Geom::Point3d.new(0.0.m, 2.0.m, 0),
  #      Geom::Point3d.new(2.0.m, 2.0.m, 0),
  #      Geom::Point3d.new(2.0.m, 0.0.m, 0),
  #   ]
  #
  #   orientation_point = Geom::Point3d.new(1.0.m, 1.0.m, 0)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #   ceiling_plane = space.ceiling_plane
  #
  # @return [Array(Float, Float, Float, Float)] the plane that defines the ceiling.
  #
  # @version SketchUp 2026.0
  def ceiling_plane
  end

  # The {#ceiling_plane} method defines the ceiling plane of a space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #      Geom::Point3d.new(0.0.m, 0.0.m, 0),
  #      Geom::Point3d.new(0.0.m, 2.0.m, 0),
  #      Geom::Point3d.new(2.0.m, 2.0.m, 0),
  #      Geom::Point3d.new(2.0.m, 0.0.m, 0),
  #   ]
  #
  #   orientation_point = Geom::Point3d.new(1.0.m, 1.0.m, 0)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #
  #   space.ceiling_plane = [Geom::Point3d.new(0.m, 0.m, 3.0.m), Geom::Vector3d.new(0.707,0.0,0.707)]
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d), Array(Float, Float, Float, Float)] ceiling_plane
  #
  # @version SketchUp 2026.0
  def ceiling_plane=(ceiling_plane)
  end

  # The {#name} method returns the name of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #     Geom::Point3d.new(0.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(0.5.m, 5.5.m, 0),
  #   ]
  #   orientation_point = Geom::Point3d.new(1.0m, 1.0m, 1.0m)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #   name = space.name
  #
  # @return [String]
  #
  # @version SketchUp 2025.0
  def name
  end

  # The {#name=} method sets the name of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #     Geom::Point3d.new(0.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(0.5.m, 5.5.m, 0),
  #   ]
  #   orientation_point = Geom::Point3d.new(1.0m, 1.0m, 1.0m)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #   space.name = "Floor 2"
  #
  # @param [String] name
  #
  # @version SketchUp 2025.0
  def name=(name)
  end

  # The {#orientation_point} method returns the orientation point of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #     Geom::Point3d.new(0.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(0.5.m, 5.5.m, 0),
  #   ]
  #   orientation_point = Geom::Point3d.new(1.0m, 1.0m, 1.0m)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #   orientation_point = space.orientation_point
  #
  # @return [Geom::Point3d]
  #
  # @version SketchUp 2025.0
  def orientation_point
  end

  # The {#orientation_point=} method sets the orientation point of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #     Geom::Point3d.new(0.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(0.5.m, 5.5.m, 0),
  #   ]
  #   orientation_point = Geom::Point3d.new(1.0m, 1.0m, 1.0m)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #   space.orientation_point = Geom::Point3d.new(1.0m, 1.0m, -1.0m)
  #
  # @param [Geom::Point3d] orientation_point
  #
  # @version SketchUp 2025.0
  def orientation_point=(orientation_point)
  end

  # The {#perimeter_points} method returns the perimeter points of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #     Geom::Point3d.new(0.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(0.5.m, 5.5.m, 0),
  #   ]
  #   orientation_point = Geom::Point3d.new(1.0m, 1.0m, 1.0m)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #   perimeter_points = space.perimeter_points
  #
  # @return [Array<Geom::Point3d>]
  #
  # @version SketchUp 2025.0
  def perimeter_points
  end

  # The {#perimeter_points=} method sets the perimeter points of the space.
  #
  # @api SpaceEntities
  #
  # @example
  #   entities = Sketchup.active_model.active_entities
  #   points = [
  #     Geom::Point3d.new(0.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(0.5.m, 5.5.m, 0),
  #   ]
  #   orientation_point = Geom::Point3d.new(1.0m, 1.0m, 1.0m)
  #   height = 2.1.m
  #   space = entities.add_space("Floor 1", points, orientation_point, height)
  #
  #   perimeter_points = [
  #     Geom::Point3d.new(2.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 0.5.m, 0),
  #     Geom::Point3d.new(8.5.m, 5.5.m, 0),
  #     Geom::Point3d.new(2.5.m, 5.5.m, 0),
  #   ]
  #   space.perimeter_points = perimeter_points
  #
  # @param [Array<Geom::Point3d>] perimeter_points
  #
  # @version SketchUp 2025.0
  def perimeter_points=(perimeter_points)
  end

end

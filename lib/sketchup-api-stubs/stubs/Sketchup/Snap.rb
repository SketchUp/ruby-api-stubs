# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# A Snap is a custom grip used by SketchUp's Move tool.
# Snaps can be added at strategic places such as connectors to help
# assembling objects.
#
# rdoc-image:../images/snaps.png
#
# {#direction} is the direction a snap is "pointing". This can be thought of as
# the normal direction of the snap. It can also be thought of as the direction
# you move an object when plugging it into another object, e.g. inserting a
# power coord.
#
# {#up} controls the rotation around the Snap's axis.
#
# When two objects are snapped together, the Snaps have opposite
# {#direction} vectors but matching {#up} vectors.
#
# @example
#   # Copy all snaps from source group/component to the corresponding
#   # location in a target group/component, as if the objects have
#   # have been snapped together.
#   #
#   # @param [Sketchup::Group, Sketchup::ComponentInstance] source
#   # @param [Sketchup::Group, Sketchup::ComponentInstance] target
#   def copy_snap(source, target)
#     # Transformation for going from the coordinate system of the source to
#     # that of the target.
#     transformation =
#       target.transformation.inverse * source.transformation
#
#     source.definition.entities.grep(Sketchup::Snap) do |source_snap|
#       # Transform position and orientation between local coordinate systems.
#       position = source_snap.position.transform(transformation)
#       # Direction vector is reversed between two connected snaps;
#       # the snaps point "into" each other.
#       direction = source_snap.direction.transform(transformation).reverse
#       # Up vector is aligned between two connected snaps.
#       up = source_snap.up.transform(transformation)
#
#       target.entities.add_snap(position, direction, up)
#     end
#   end
#
# @version SketchUp 2025.0
class Sketchup::Snap < Sketchup::Drawingelement

  # Instance Methods

  # The {#direction} method is used to get the direction this Snap is "pointing".
  #
  # When two Snaps are snapped into each other, they have the opposite {#direction}.
  #
  # @example
  #   snap = Sketchup.active_model.entities.add_snap(ORIGIN)
  #   direction = snap.direction
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 2025.0
  def direction
  end

  # The {#position} method is used to get the position of this Snap.
  #
  # @example
  #   snap = Sketchup.active_model.entities.add_snap(ORIGIN)
  #   position = snap.position
  #
  # @return [Geom::Point3d]
  #
  # @version SketchUp 2025.0
  def position
  end

  # The {#set} method is used to move and/or reorient a Snap.
  #
  # @example
  #   snap = Sketchup.active_model.entities.add_snap(ORIGIN)
  #   snap.set(Geom::Point3d.new(1.m, 0, 0))
  #
  # @overload set(position)
  #
  #   With only a position provided, the Snap keeps its current orientation.
  #   @param [Geom::Point3d] position
  #
  # @overload set(position, direction)
  #
  #   With a position and a direction vector provided, but no up vector, SketchUp
  #   tries to keep the Snap upright.
  #   @param [Geom::Point3d] position
  #   @param [Geom::Vector3d] direction
  #
  # @overload set(position, direction, up)
  #
  #   @param [Geom::Point3d] position
  #   @param [Geom::Vector3d] direction
  #   @param [Geom::Vector3d] up
  #
  # @raise ArgumentError if +direction+ and +up+ are parallel.
  #
  # @return [Sketchup::Snap] self
  #
  # @version SketchUp 2025.0
  def set(*args)
  end

  # The {#up} method is used to get a vector representing the rotation of this
  # Snap along its axis.
  #
  # When two Snaps are snapped into each other, they have the same aligned {#up}
  # direction.
  #
  # @example
  #   snap = Sketchup.active_model.entities.add_snap(ORIGIN)
  #   up = snap.up
  #
  # @return [Geom::Vector3d]
  #
  # @version SketchUp 2025.0
  def up
  end

end

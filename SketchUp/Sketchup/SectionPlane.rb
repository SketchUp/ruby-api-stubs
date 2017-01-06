# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The SectionPlane class represents a section plane in a SketchUp model. Note
# that prior to SketchUp 2014 there was no way to create a SectionPlane object
# using Ruby. For older versions of SketchUp, you must manually create a
# section plane with the Section Plane Tool in SketchUp and then query the
# entities array to find the SectionPlane object.
#
# @version SketchUp 6.0
class Sketchup::SectionPlane < Sketchup::Drawingelement

  # Instance Methods

  # The activate method is used to make the section plane the active one of its
  # parent component/group.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   sp = entities.add_section_plane([50, 50, 0], [1.0, 1.0, 0])
  #   sp.activate
  #
  # @return self if successful
  #
  # @version SketchUp 2014
  def activate
  end

  # The active? method indicates whether the section plane is active or not.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   sp = entities.add_section_plane([50, 50, 0], [1.0, 1.0, 0])
  #   sp.activate
  #   if sp.active?
  #      puts "Yes, it is active"
  #   end
  #
  # @return boolean - true if active
  #
  # @return [Boolean]
  #
  # @version SketchUp 2014
  def active?
  end

  # The get_plane method is used to retrieve the plane that the section plane is
  # on.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   # Grab the first section plane from the model.
  #   sp = entities.grep(Sketchup::SectionPlane).first
  #   plane = sp.get_plane
  #   if (plane)
  #     puts plane.to_s
  #   else
  #     puts 'Failure'
  #   end
  #
  # @return plane - a plane. See the Geom module and Array class
  #   for further information on planes.
  #
  # @version SketchUp 6.0
  def get_plane
  end

  # The set_plane method is used to set the plane that the section plane is
  # on.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   # Grab the first section plane from the model.
  #   sp = entities.grep(Sketchup::SectionPlane).first
  #   sp = sp.set_plane my_plane_array
  #
  # @param plane
  #   An array representing the new plane,
  #
  # @return section_plane - the updated SectionPlane.
  #
  # @version SketchUp 6.0
  def set_plane(plane)
  end

end

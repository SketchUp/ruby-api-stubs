# Copyright:: Copyright 2026 Trimble Inc.
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
  # @return [Boolean] boolean - true if active
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

  # Retrieves the hatch pattern assigned to the section plane.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   section_plane = entities.grep(Sketchup::SectionPlane).first
  #   puts section_plane.hatch_pattern.name
  #
  # @return [Sketchup::HatchPattern]
  #
  # @version SketchUp 2027.0
  def hatch_pattern
  end

  # Assigns a hatch pattern to the section plane.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   entities = Sketchup.active_model.entities
  #   section_plane = entities.grep(Sketchup::SectionPlane).first
  #   section_plane.hatch_pattern = hatch_patterns['Pattern1']
  #
  # @param [Sketchup::HatchPattern, nil] pattern
  #   the pattern to assign, or +nil+ to clear the assignment.
  #
  # @raise [ArgumentError] if the pattern does not belong to the section plane's model.
  #
  # @version SketchUp 2027.0
  def hatch_pattern=(pattern)
  end

  # The {#name} method is used to retrieve the name of the section plane.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   # Grab the first section plane from the model.
  #   section_plane = entities.grep(Sketchup::SectionPlane).first
  #   name = section_plane.name
  #
  # @return [String]
  #
  # @version SketchUp 2018
  def name
  end

  # The {#name=} method is used to set the name of a section plane.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = Sketchup.active_model.entities
  #   # Grab the first section plane from the model.
  #   section_plane = entities.grep(Sketchup::SectionPlane).first
  #   section_plane.name = "my section plane"
  #
  # @param [String] name
  #   The new name for the section plane object.
  #
  # @version SketchUp 2018
  def name=(name)
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

  # The {#symbol} method is used to retrieve the symbol of the section plane.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   # Grab the first section plane from the model.
  #   section_plane = entities.grep(Sketchup::SectionPlane).first
  #   symbol = section_plane.symbol
  #
  # @return [String]
  #
  # @version SketchUp 2018
  def symbol
  end

  # The {#symbol=} method is used to set the symbol of a section plane.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = Sketchup.active_model.entities
  #   # Grab the first section plane from the model.
  #   section_plane = entities.grep(Sketchup::SectionPlane).first
  #   section_plane.symbol = "AB1"
  #
  # @note The symbol must be three characters or less.
  #
  # @param [String] symbol
  #   The new symbol for the section plane object.
  #
  # @version SketchUp 2018
  def symbol=(symbol)
  end

end

# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# An {Sketchup::HatchPatterns} object is a collection of {Sketchup::HatchPattern} objects.
# It is used to manage the hatch patterns in a model.
#
# An {Sketchup::HatchPattern} object represents an hatch pattern in the model.
#
# @version SketchUp 2027.0
class Sketchup::HatchPatterns < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieve an {Sketchup::HatchPattern} by name.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   path = 'path/to/pattern.skh'
  #   hatch_pattern = hatch_patterns.add('Pattern', path)
  #   result = hatch_patterns['Pattern']
  #
  # @param [String] name
  #
  # @return [Sketchup::HatchPattern, nil]
  #
  # @version SketchUp 2027.0
  def [](name)
  end

  # The {#add} method adds an {Sketchup::HatchPattern} to the {Sketchup::HatchPatterns}, loading it
  # from a file. The name must be non-empty and unique within the model.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   path = 'path/to/pattern.skh'
  #   hatch_pattern = hatch_patterns.add('Pattern', path)
  #
  # @param [String] name
  #
  # @param [String] path
  #   the file to load the pattern from
  #
  # @raise [ArgumentError] if the name is empty, already used by another hatch pattern, or the
  #   pattern could not be loaded from the file.
  #
  # @return [Sketchup::HatchPattern] the newly created hatch pattern
  #
  # @version SketchUp 2027.0
  def add(name, path)
  end

  # The {#each} method is used to iterate over all the patterns in the
  # {Sketchup::HatchPatterns}.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   hatch_patterns.each { |hatch_pattern| puts hatch_pattern.name }
  #
  # @return [Sketchup::HatchPatterns]
  #
  # @version SketchUp 2027.0
  #
  # @yield [hatch_pattern]
  #
  # @yieldparam [Sketchup::HatchPattern] hatch_pattern
  #   the hatch pattern
  def each
  end

  # The {#purge_unused} method is used to remove unused hatch patterns.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   hatch_patterns.purge_unused
  #
  # @return [Sketchup::HatchPatterns]
  #
  # @version SketchUp 2027.0
  def purge_unused
  end

  # The {#remove} method removes an {Sketchup::HatchPattern} from the {Sketchup::HatchPatterns}.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   path = 'path/to/pattern.skh'
  #   hatch_pattern = hatch_patterns.add('Pattern', path)
  #   hatch_patterns.remove(hatch_pattern)
  #
  # @param [Sketchup::HatchPattern] pattern
  #
  # @return [Boolean] true if the pattern was removed, false if it was not found
  #
  # @version SketchUp 2027.0
  def remove(pattern)
  end

  # The {#selected_hatch_pattern} method retrieves the currently selected {Sketchup::HatchPattern},
  # mirroring the selection in the desktop UI, or +nil+ if none is selected.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   pattern = hatch_patterns.selected_hatch_pattern
  #
  # @return [Sketchup::HatchPattern, nil] the selected pattern, or +nil+
  #
  # @version SketchUp 2027.0
  def selected_hatch_pattern
  end

  # The {#selected_hatch_pattern=} method sets the currently selected {Sketchup::HatchPattern},
  # mirroring the selection in the desktop UI. Pass +nil+ to clear the selection.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   hatch_patterns.selected_hatch_pattern = hatch_patterns['Pattern']
  #
  # @param [Sketchup::HatchPattern, nil] pattern
  #   the pattern to select, or +nil+ to clear the selection.
  #
  # @raise [ArgumentError] if the pattern does not belong to this collection.
  #
  # @version SketchUp 2027.0
  def selected_hatch_pattern=(pattern)
  end

  # The {#size} method retrieves the number of hatch patterns in the
  # {Sketchup::HatchPatterns}.
  #
  # @example
  #   hatch_patterns = Sketchup.active_model.hatch_patterns
  #   number = hatch_patterns.size
  #
  # @return [Integer] the number of hatch patterns
  #
  # @version SketchUp 2027.0
  def size
  end
  alias_method :length, :size

end

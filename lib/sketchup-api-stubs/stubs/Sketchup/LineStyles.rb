# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# Provides access to the different line style objects in the model.
#
# @version SketchUp 2019
class Sketchup::LineStyles < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method lets you retrieve a line style by name or index.
  #
  # The {#at} method is an alias of {#[]}.
  #
  # @example
  #   solid_style = Sketchup.active_model.line_styles["Solid Basic"]
  #   line_style = Sketchup.active_model.line_styles[1]
  #
  # @overload [](name)
  #
  #   @param [String] name The name of the line style to retrieve.
  #
  # @overload [](index)
  #
  #   @param [Integer] index The index of the line style to retrieve.
  #
  #   @raise [IndexError] If index is out of bounds.
  #
  # @return [Sketchup::LineStyle, nil] The line style retrieved. +nil+ if the name
  #   couldn't be retrieved.
  #
  # @version SketchUp 2019
  def [](arg)
  end

  # The {#[]} method lets you retrieve a line style by name or index.
  #
  # The {#at} method is an alias of {#[]}.
  #
  # @example
  #   solid_style = Sketchup.active_model.line_styles["Solid Basic"]
  #   line_style = Sketchup.active_model.line_styles[1]
  #
  # @overload [](name)
  #
  #   @param [String] name The name of the line style to retrieve.
  #
  # @overload [](index)
  #
  #   @param [Integer] index The index of the line style to retrieve.
  #
  #   @raise [IndexError] If index is out of bounds.
  #
  # @return [Sketchup::LineStyle, nil] The line style retrieved. +nil+ if the name
  #   couldn't be retrieved.
  #
  # @version SketchUp 2019
  def at(arg)
  end

  # The {#each} method is used to iterate through all the line styles.
  #
  # @example
  #   line_styles = Sketchup.active_model.line_styles
  #   line_styles.each{ |line_style| p line_style.name }
  #
  # @return [nil]
  #
  # @version SketchUp 2019
  #
  # @yieldparam [Sketchup::LineStyle] linestyle
  def each
  end

  # The {#names} method return the support line styles as strings.
  #
  # @example
  #   Sketchup.active_model.line_styles.names
  #
  # @return [Array<String>]
  #
  # @version SketchUp 2019
  def names
  end

  # The {#size} method returns the number of line styles that SketchUp supports.
  #
  # @example
  #   line_styles = Sketchup.active_model.line_styles
  #   line_styles.size
  #
  # @return [Integer] The count of line styles.
  #
  # @version SketchUp 2019
  def size
  end
  alias_method :length, :size

  # The {#to_a} method returns an array of all the line styles.
  #
  # @example
  #   line_styles = Sketchup.active_active_model.line_styles.to_a
  #
  # @return [Array] Containing all the line style objects.
  #
  # @version SketchUp 2019
  def to_a
  end

end

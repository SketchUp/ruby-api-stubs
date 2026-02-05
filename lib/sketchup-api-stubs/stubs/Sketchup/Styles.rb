# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The Styles class contains methods for manipulating a collection of styles in
# a model. Typically, you will access this via the active_model:
#
# There are two objects of this class that play important roles: the {#selected_style} and the
# {#active_style}.
#
# The latter is a temporary copy made from the {#selected_style} that allows the user to edit
# the style without committing to save anything. To save the changes, one should use
# {#update_selected_style}.
#
# @example
#   styles = Sketchup.active_model.styles
#   puts "There are #{styles.size} styles in your model."
#
# @version SketchUp 6.0
class Sketchup::Styles < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieves a style by either name or index.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style1 = styles[0]
  #   style2 = styles["MyStyle"]
  #
  # @overload [](name)
  #
  #   @param [String] name  The name of the style to retrieve.
  #   @return [Sketchup::Style, nil]
  #
  # @overload [](index)
  #
  #   @param [Integer] index  The index of the style to retrieve.
  #   @return [Sketchup::Style, nil]
  #
  # @version SketchUp 6.0
  def [](arg)
  end

  # The {#active_style} method is used to retrieve the active style.
  #
  # While {#selected_style} is the style being selected in the Style Browser,
  # the #{active_style} is a different object also including any unsaved style
  # changes. These changes are silently dropped once a new style is selected.
  # To save these changes to the selected style, call #{update_selected_style}.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.active_style
  #
  # @return [Sketchup::Style]
  #
  # @version SketchUp 6.0
  def active_style
  end

  # The {#active_style_changed} method tells you if the active style has been
  # edited by the user since it was last saved.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style_changed = styles.active_style_changed
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def active_style_changed
  end

  # The {#add_style} method is used to create and load a style from the given
  # file.
  #
  # @example For SketchUp 2025.0 and older
  #   filename = File.expand_path('./MyStyle.style')
  #   styles = Sketchup.active_model.styles
  #   status = styles.add_style(filename, true)
  #
  # @example For SketchUp 2026.0 and newer
  #   filename = File.expand_path('./MyStyle.style')
  #   styles = Sketchup.active_model.styles
  #   style = styles.add_style(filename, true)
  #
  # @overload add_style(filename, select)
  #
  #   @note Signature for versions prior to SketchUp 2026.0.
  #   @version SketchUp 6.0
  #   @param [String] filename The file path to the style file.
  #   @param [Boolean] select +true+ if you want to set the style to be the active style.
  #   @return [Boolean]
  #
  # @overload add_style(filename, select = false)
  #
  #   @version SketchUp 2026.0
  #   @param [String] filename The file path to the style file.
  #   @param [Boolean] select +true+ if you want to set the style to be the active style.
  #
  # @return [Sketchup::Style, nil] The newly created style or +nil+ if the the style could not be
  #   added.
  def add_style(*args)
  end

  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   number = styles.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumerable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer]
  #
  # @version SketchUp 6.0
  def count
  end

  # The {#each} method is used to iterate through styles.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   styles.each { |style|
  #     puts style.name
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yieldparam [Sketchup::Style] style
  def each
  end

  # The {#length} method is an alias of {#size}.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   number = styles.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2014
  def length
  end

  # The {#parent} method is used to return the model for the styles.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   model = styles.parent
  #
  # @return [Sketchup::Model]
  #
  # @version SketchUp 6.0
  def parent
  end

  # The {#purge_unused} method is used to remove unused styles from the model.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   styles.purge_unused
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def purge_unused
  end

  # The {#remove_style} method is used to remove a {Sketchup::Style} from the {Sketchup::Styles}.
  #
  # @example
  #   filename = File.expand_path('./MyStyle.style')
  #   styles = Sketchup.active_model.styles
  #   status = styles.add_style(filename, true)
  #   styles.remove(styles.first)
  #
  # @param [Sketchup::Style] style
  #
  # @raise [ArgumentError] If the style is not found in the Styles collection.
  #
  # @raise [ArgumentError] If the styles contains only one style.
  #
  # @return [nil]
  #
  # @version SketchUp 2026.0
  def remove_style(style)
  end

  # The {#selected_style} method is used to retrieve the style currently
  # selected in the Styles Browser.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.selected_style
  #
  # @return [Sketchup::Style] style
  #
  # @version SketchUp 6.0
  def selected_style
  end

  # The {#selected_style=} method is used to set the currently selected style.
  #
  # @bug Prior to SketchUp 2025.0 setting the {#selected_style=} to the {#active_style} would chrash
  #   SketchUp.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   filename = File.expand_path('./MyStyle.style')
  #   styles.add_style(filename, true)
  #   styles.selected_style = styles['[MyStyle]']
  #
  # @param [Sketchup::Style] style
  #
  # @raise [ArgumentError] If \p style is the {#active_style}.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def selected_style=(style)
  end

  # The {#size} method is used to retrieve the number of styles in the
  # collection.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   number = styles.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def size
  end

  # The {#update_selected_style} method commits the current style settings to the
  # style selected in the Style Browser.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   styles.update_selected_style
  #
  # @return [nil]
  #
  # @see #selected_style
  #
  # @version SketchUp 6.0
  def update_selected_style
  end

end

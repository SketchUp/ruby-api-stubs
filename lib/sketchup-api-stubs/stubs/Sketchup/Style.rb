# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The Style class contains methods for modifying information about a specific
# style. Styles are a collection of display settings that tell SketchUp how to
# draw the model.
#
# In SketchUp, there are two important style objects in a model:
# The {Sketchup::Styles#selected_style} is the style currently selected in the Styles Browser.
# The {Sketchup::Styles#active_style} is a temporary copy of the selected style that allows
# editing without committing changes. Changes to the active style are not saved unless you call
# {Sketchup::Styles#update_selected_style}.
#
# @example
#   styles = Sketchup.active_model.styles
#   puts "Your first style is named #{styles.first.name}"
#
# @version SketchUp 6.0
class Sketchup::Style < Sketchup::Entity

  # Instance Methods

  # The {#description} method gets the description for a {Sketchup::Style}.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.first
  #   puts "Your first style description is: #{style.description}"
  #
  # @return [String] description
  #
  # @version SketchUp 6.0
  def description
  end

  # The {#description=} method sets the description for a {Sketchup::Style}.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.first
  #   style.description = "My new style description."
  #
  # @param [String] description
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The {#name} method gets the name for a {Sketchup::Style}.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.first
  #   name = style.name
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#name=} method sets the name for a {Sketchup::Style}.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.first
  #   style.name = 'My Very Own Style'
  #
  # @param [String] name
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The {#path} method gets the file path the {Sketchup::Style} was loaded from.
  #
  # @example
  #   styles = Sketchup.active_model.styles
  #   style = styles.first
  #   name = style.path
  #
  # @return [String] path The file path the style was loaded from.
  #
  # @version SketchUp 2025.0
  def path
  end

end

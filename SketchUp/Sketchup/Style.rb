# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Style class contains methods for modifying information about a specific
# style. Styles are a collection of display settings that tell SketchUp how to
# draw the model.
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

end

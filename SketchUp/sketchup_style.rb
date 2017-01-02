# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Style class contains methods for modifying information about a specific
# style. Styles are a collection of display settings that tell SketchUp how to
# draw the model.
#
# @example 
#   # Get a handle to the styles collection.
#   styles = Sketchup.active_model.styles
#   
#   # Display the name of the first style.
#   first_style = styles[0]
#   UI.messagebox("Your first style is named " + first_style.name.to_s)
#
# @version SketchUp 6.0
class Sketchup::Style < Sketchup::Entity

  # Instance Methods

  # The description method is used to retrieve the description for a style.
  #
  # @example 
  #   style = Sketchup.active_model.styles[0]
  #   UI.messagebox("Your first style description is: " +
  #                 style.description.to_s)
  #
  # @return description - the description for the style.
  #
  # @version SketchUp 6.0
  def description
  end

  # The description= method is used to set a description for a style.
  #
  # @example 
  #   style = Sketchup.active_model.styles[0]
  #   style.description = "My new style description."
  #   UI.messagebox('My new style description is: ' + style.description)
  #
  # @param description
  #   A textual description of the style.
  #
  # @return status - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The name method is used to retrieve the name for a style.
  #
  # @example 
  #   name = style.name
  #
  # @return name - the name for the style.
  #
  # @version SketchUp 6.0
  def name
  end

  # The name= method is used to set the name for a style.
  #
  # @example 
  #   style = Sketchup.active_model.styles[0]
  #   style.name = 'My Very Own Style'
  #   UI.messagebox('My new style name is: ' + style.name)
  #
  # @param name
  #   - the new name for the style.
  #
  # @return name - the name that was set.
  #
  # @version SketchUp 6.0
  def name=(name)
  end

end

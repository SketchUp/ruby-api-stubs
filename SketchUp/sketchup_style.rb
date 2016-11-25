# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

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

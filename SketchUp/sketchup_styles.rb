# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Styles class contains methods for manipulating a collection of styles in
# a model. Typically, you will access this via the active_model:
#
# @example 
#   styles = Sketchup.active_model.styles
#   UI.messagebox "There are " + styles.count.to_s + " styles in your model."
#
# @version SketchUp 6.0
class Sketchup::Styles < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to retrieves a style by either name or index.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   style1 = styles[0]
  #   style2 = styles["name"]
  #
  # @param name_or_index
  #   The string name or index for a specific style.
  #
  # @return style - a Style object if successful
  #
  # @version SketchUp 6.0
  def [](name_or_index)
  end

  # The active_style method is used to retrieve the active style.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   style = styles.active_style
  #   UI.messagebox('The active style is: ' + active_style.name)
  #
  # @return style - the active Style object.
  #
  # @version SketchUp 6.0
  def active_style
  end

  # The active_style_changed method tells you if the active style has been
  # edited by the user since it was last saved.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   user_made_change = styles.active_style_changed
  #   UI.messagebox ('The active style was edited: ' + user_made_change.to_s)
  #
  # @return changed - true if the active style has been changed
  #   from when it was last saved.
  #
  # @version SketchUp 6.0
  def active_style_changed
  end

  # The add_style method is used to create and load a style from the given file.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   status = styles.add_style "c:\\MyStyle.style", true
  #   UI.messagebox ('A style was added: ' + status.to_s)
  #
  # @param filename
  #   The filename for the style.
  #
  # @param select
  #   true if you want to set the style to be the active
  #   style, false if not.
  #
  # @return status - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_style(filename, select)
  end

  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   number = styles.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return integer - the number of styles found.
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through styles.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   styles.each {| style |
  #     UI.messagebox('style: ' + style.name)
  #   }
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [style] Variable that will hold each style as it is found.
  def each
  end

  # The {#size} method is used to retrieve the number of styles in the
  # collection.
  # 
  # The {#length} method is an alias of {#size}.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   number = styles.size
  #
  # @return integer - the number of styles found.
  #
  # @version SketchUp 6.0
  def length
  end

  # parent pointer, so we can't use the normal "parent" method from Entity
  def parent
  end

  # The purge_unused method is used to remove unused styles from the model.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   status = styles.purge_unused
  #   UI.messagebox ('Purging Unused styles status: ' + status.to_s)
  #
  # @return status - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def purge_unused
  end

  # The selected_style method is used to retrieve the currently selected style.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   style = styles.selected_style
  #   UI.messagebox ('The selected style is: ' + style.name)
  #
  # @return style - the selected Style object.
  #
  # @version SketchUp 6.0
  def selected_style
  end

  # The selected_style= method is used to set the currently selected style.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   styles.selected_style = styles[styles.count -1]
  #
  # @param style
  #   The style object to select.
  #
  # @return false
  #
  # @version SketchUp 6.0
  def selected_style=(style)
  end

  # The {#size} method is used to retrieve the number of styles in the
  # collection.
  # 
  # The {#length} method is an alias of {#size}.
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   number = styles.size
  #
  # @return integer - the number of styles found.
  #
  # @version SketchUp 6.0
  def size
  end

  # The update_selected_style method returns true if the selected style
  # was changed (e.g. the user selected a different style).
  #
  # @example 
  #   styles = Sketchup.active_model.styles
  #   success = styles.update_selected_style
  #   UI.messagebox ('The selected style was switched: ' + success.to_s)
  #
  # @return status - true if the style was switched
  #
  # @version SketchUp 6.0
  def update_selected_style
  end

end

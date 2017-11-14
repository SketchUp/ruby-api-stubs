# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The UI module contains a number of methods for creating simple UI elements
# from a SketchUp Ruby script.
#
# @version SketchUp 6.0
module UI

  # Class Methods

  # The add_context_menu_handler method is used to register a block of code with
  # SketchUp that will be called when a context menu is to be displayed. The
  # context menu handler can then display the context menu with the items that
  # you have added.
  #
  # Be careful with what you do in a context menu handler. If you perform an
  # operation takes take a long time, such as traversing the model or selection
  # in a large model it will delay the menu.
  #
  # See the contextmenu.rb script in the Plugins/examples directory for an
  # example.
  #
  # @example
  #   # Right click on anything to see a Hello World item.
  #   UI.add_context_menu_handler do |context_menu|
  #     context_menu.add_item("Hello World") {
  #       UI.messagebox("Hello world")
  #     }
  #   end
  #
  # @return [Integer] the number of context handlers that are
  #   registered
  #
  # @version SketchUp 6.0
  #
  # @yield [menu] A block of code that takes a menu as its only as its
  #   only argument.
  def self.add_context_menu_handler
  end

  # The beep method plays a system beep sound.
  #
  # The beep method does not accept any arguments nor return any values.
  #
  # @example
  #   UI.beep
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def self.beep
  end

  # The create_cursor method is used to create a cursor from an image file at
  # the specified location. This must be called from within a custom
  # Tool. See the Tool class for a complete example.
  #
  # Since SketchUp 2016 it is possible to provide vector images for the cursors.
  # SVG format for Windows and PDF format for OS X.
  #
  # @example
  #   cursor_id = nil
  #   cursor_path = Sketchup.find_support_file("Pointer.png", "Plugins/")
  #   if cursor_path
  #     cursor_id = UI.create_cursor(cursor_path, 0, 0)
  #   end
  #
  #   def onSetCursor
  #     UI.set_cursor(cursor_id)
  #   end
  #
  # @param [String] filename
  #   Filename for an image.
  #
  # @param [Integer] hot_y
  #   A y coordinate that is the "hotpoint" for the cursor
  #   computed from the top edge of the of your cursor image.
  #   For example, a value of (hot_x, hot_y) = (5,10) would
  #   identify the hotpoint of the cursor at 5 pixels from
  #   the left edge of your cursor image and 10 pixels from
  #   the top edge of your cursor image.
  #
  # @param [Integer] hot_x
  #   An x coordinate that is the "hotpoint" for the cursor
  #   computed from the left edge of your cursor image.
  #
  # @return [Integer] ID associated with the cursor
  #
  # @version SketchUp 6.0
  def self.create_cursor(filename, hot_x, hot_y)
  end

  # Creates a dialog box for inputting user information. The dialog box contains
  # input fields with static text prompts, optional default values, optional
  # drop down selections, and optional title.
  #
  # You can also use this method to display drop down lists of options, by
  # passing an optional param.
  #
  # @example
  #   # With three params, it shows all text boxes:
  #   prompts = ["What is your Name?", "What is your Age?", "Gender"]
  #   defaults = ["Enter name", "", "Male"]
  #   input = UI.inputbox(prompts, defaults, "Tell me about yourself.")
  #
  #   # With four params, it shows a drop down box for prompts that have
  #   # pipe-delimited lists of options. In this case, the Gender prompt
  #   # is a drop down instead of a text box.
  #   prompts = ["What is your Name?", "What is your Age?", "Gender"]
  #   defaults = ["Enter name", "", "Male"]
  #   list = ["", "", "Male|Female"]
  #   input = UI.inputbox(prompts, defaults, list, "Tell me about yourself.")
  #
  # @overload inputbox(prompts, defaults, title)
  #
  #   @param [Array<String>] prompts
  #     An array of prompt names appearing in the input box
  #     adjacent to input fields.
  #   @param [Array<String>] defaults
  #     An array of default values for the input
  #     fields.
  #   @param [String] title
  #     The title for the input box.
  #
  # @overload inputbox(prompts, defaults, list, title)
  #
  #   @param [Array<String>] prompts
  #     An array of prompt names appearing in the input box
  #     adjacent to input fields.
  #   @param [Array<String>] defaults
  #     An array of default values for the input
  #     fields.
  #   @param [String, Array<String>] list
  #     An array containing pipe-separated strings of options.
  #   @param [String] title
  #     The title for the input box.
  #
  # @return [Array<String>, false] An array of returned values if the user did
  #   not cancel the dialog.  If the user canceled the
  #   dialog, false is returned.  The returned values in the
  #   array will be in the same order as the input fields.
  #
  # @version SketchUp 6.0
  def self.inputbox(*args)
  end

  # The inspector_names method is used to returns the names of all the
  # inspectors. Inspectors are another name for the various floating dialog
  # windows that you can activate from withing SketchUp, such as the Materials
  # window.
  #
  # @example
  #   inspectors = UI.inspector_names
  #
  # @return [Array<String>] an array of strings containing the names
  #   of inspectors.
  #
  # @version SketchUp 6.0
  def self.inspector_names
  end

  # The {#menu} method retrieves a SketchUp's menu object with a given name. This
  # is the first step toward adding your own custom items to the bottom
  # of SketchUp's menus.
  #
  # Valid menu names are: "File", "Edit", "View", "Camera", "Draw", "Tools",
  # "Window", "Extensions" and "Help".
  #
  # @example
  #   tool_menu = UI.menu("Tools")
  #   tool_menu.add_item("Cheese Tool") {
  #     UI.messagebox("Cheese activated.")
  #   }
  #
  # @note The "Extensions" menu was named "Plugins" prior to SketchUp 2015.
  #   For backward compatibility "Plugins" still works.
  #
  # @note In versions prior to SketchUp 2018 this would crash if you passed an
  #   empty string.
  #
  # @param menu_name
  #   The name of an existing top level menu.
  #
  # @return [Sketchup::Menu]
  #
  # @version SketchUp 6.0
  def self.menu(menu_name = "Plugins")
  end

  # Creates a dialog box containing static text with a series of buttons for
  # the user to choose from.
  #
  # Valid message box types are:
  # - +MB_OK+ - Contains an OK button.
  # - +MB_OKCANCEL+ - Contains OK and Cancel buttons.
  # - +MB_ABORTRETRYIGNORE+ - Contains Abort, Retry, and Ignore buttons.
  # - +MB_YESNOCANCEL+ - Contains Yes, No, and Cancel buttons.
  # - +MB_YESNO+ - Contains Yes and No buttons.
  # - +MB_RETRYCANCEL+ - Contains Retry and Cancel buttons.
  # - +MB_MULTILINE+ - Contains and OK button.
  #
  # Return values can be any of following:
  # - +IDOK+
  # - +IDCANCEL+
  # - +IDABORT+
  # - +IDRETRY+
  # - +IDIGNORE+
  # - +IDYES+
  # - +IDNO+
  #
  # In an +MB_MULTILINE+ message box, the message is displayed as a multi-line
  # message with scrollbars (as needed). +MB_MULTILNE+ also allows a third string
  # argument that will be used as the title for the messagebox.
  #
  # @example
  #   result = UI.messagebox('Do you like cheese?', MB_YESNO)
  #   if result == IDYES
  #     UI.messagebox('SketchUp likes cheese too!')
  #   end
  #
  # @param [String] message
  #   The message that you want to display.
  #
  # @param [Integer] type
  #   The message box type, which will be a constant from
  #   the list in the method comments.
  #
  # @return [Integer] A number corresponding to what the user selected.
  #
  # @version SketchUp 6.0
  def self.messagebox(message, type = MB_OK)
  end

  # The model_info_pages method is used to returns the names of all the
  # available model info pages. These include UI windows such as Components,
  # Credits, and Units.
  #
  # @example
  #   mypages = UI.model_info_pages
  #
  # @return [Array<String>] an array of strings containing the names of
  #   model info pages.
  #
  # @version SketchUp 6.0
  def self.model_info_pages
  end

  # The {.openURL} method is used to open the default Web browser to a URL.
  #
  # @example
  #   status = UI.openURL("http://www.sketchup.com")
  #
  # @param [String] url
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def self.openURL(url)
  end

  # The openpanel method is used to display the Open dialog box. The path that
  # is returned can then be used inside code to open a text or image file.
  # See the standard Ruby class File for examples of reading and writing from
  # disk.
  #
  # Bug Fixed in SketchUp 2014: Wildcards were not working properly from SU7 to
  # SU2013. Wildcard filters did not populate the file type dropdown. The filter
  # string would be shown in the file name field with '*' characters converted to
  # '_' characters. Note, the format of a wildcard filter string has been changed.
  #  See the description of the filename parameter below for details.
  #
  # @example
  #   chosen_image = UI.openpanel("Open SKP File", "c:/", "model.skp")
  #   chosen_image = UI.openpanel("Open Image File", "c:/", "Image Files|*.jpg;*.png;||")
  #   chosen_image = UI.openpanel("Open CAD File", "c:/", "DXF|*.dxf|DWG|*.dwg||")
  #
  # @param [String] title
  #   The title to apply to the open dialog box.
  #
  # @param [String] filename
  #   The default filename for the open panel. On Windows, you
  #   can alternatively pass a wildcard filter using this
  #   format: UIname|wildcard||. Additional filter dropdown
  #   list items can be added by adding additional pairs of
  #   filter name and filter like this:
  #   UIname1|wildcard1|UIname2|wildcard2||.
  #   Also multiple wildcard filters can be combined into a
  #   single line using a semicolon-separated list in the
  #   filter field: ui_name|wildcard1;wildcard2||.
  #
  # @param [String] directory
  #   The default directory for the open panel.
  #
  # @return [String] the full path and name of the file selected, or
  #   nil if the dialog was canceled.
  #
  # @version SketchUp 6.0
  def self.openpanel(title, directory, filename)
  end

  # The play_sound method is used to play a sound file. Valid sound files include
  # .wav and .mp3 files on the Mac and .wav files on the PC.
  #
  # @example
  #   UI.play_sound "Plugins/mediadiscussion.wav"
  #
  # @param [String] filename
  #   the relative path to the filename from the SketchUp
  #   install directory, or an absolute path to the file. (See
  #   Sketchup.find_support_file for a way to search for a
  #   specific file.)
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def self.play_sound(filename)
  end

  # The preferences_pages method is used to returns the names of all the
  # preferences pages. These include windows like Extensions.
  #
  # @example
  #   prefs = UI.preferences_pages
  #
  # @return [Array<String>] an array of strings containing the names
  #   of preference pages.
  #
  # @version SketchUp 6.0
  def self.preferences_pages
  end

  # Tells SketchUp to refresh all inspectors such as the Component Browser and
  # the Outliner. This is useful when you need to manually force a refresh after
  # you've made a change to the document via Ruby. Generally, SketchUp will keep
  # these in sync for you, but occasionally it does not, such as when
  # model.start_operation has disabled UI updates.
  #
  # @example
  #   UI.refresh_inspectors
  #
  # @return [nil]
  #
  # @version SketchUp 7.0
  def self.refresh_inspectors
  end

  # Tells SketchUp to refresh all floating toolbars. This is useful when you need
  # to manually force a refresh after you've made a change to the document via
  # Ruby. Generally, SketchUp will keep these in sync for you, but occasionally
  # it does not, such as when {Sketchup::Model#start_operation} has disabled UI
  # updates.
  # This only affects macOS, on Windows the toolbars are always refreshing.
  #
  # @example
  #   UI.refresh_toolbars
  #
  # @return [nil]
  #
  # @version SketchUp 2018
  def self.refresh_toolbars
  end

  # The savepanel method is used to display the Save dialog box. The path that
  # is returned can then be used inside code to save out a text or image file.
  # See the standard Ruby class File for examples of reading and writing from
  # disk.
  #
  # Bug Fixed in SketchUp 2014: Wildcards were not working properly from SU7 to
  # SU2013. Semicolon-separated lists of wildcards did not populate the file type
  # dropdown. The filter string would be shown in the file name field with '*'
  # characters converted to '_' characters.
  #
  # @example
  #   path_to_save_to = UI.savepanel("Save Image File", "c:\\", "Shapes.jpg")
  #
  # @param [String] title
  #   The title to apply to the save dialog box.
  #
  # @param [String] filename
  #   The default filename for the save panel. On Windows, you
  #   can alternatively pass a mask, like "*.txt", to have all
  #   the .txt files display. If you want multiple file types
  #   to display, you can supply multiple masks for the
  #   filename and separate them with a semicolon, like this:
  #   "*.txt;*.doc".
  #
  # @param [String] directory
  #   The default directory for the save panel.
  #
  # @return [String] the full path and name of the file
  #   selected or nil if the dialog was canceled.
  #
  # @version SketchUp 6.0
  def self.savepanel(title, directory, filename)
  end

  # Returns the scaling factor SketchUp uses on high DPI monitors. Useful for
  # things like {Sketchup::View#draw2d}.
  #
  # @example
  #   # Scale a set of points representing 2d screen points to account for high
  #   # DPI monitors.
  #   points2d = [
  #     Geom::Point3d.new(0, 0, 0),
  #     Geom::Point3d.new(8, 0, 0),
  #     Geom::Point3d.new(8, 4, 0),
  #     Geom::Point3d.new(0, 4, 0)
  #   ]
  #   tr = Geom::Transformation.scaling(UI.scale_factor)
  #   points2d.each { |point| point.transform!(tr)
  #
  # @note SU2017M0 will automatically scale up line width and text size, but will
  #   not scale up the points provided to {Sketchup::View#draw2d}.
  #
  # @return [Float]
  #
  # @version SketchUp 2017
  def self.scale_factor
  end

  # The select_directory method is used to display the OS dialog for selecting
  # one or several directories from the file system.
  #
  # Options:
  # - :title             string  The title for the dialog.
  # - :directory         string  Force the starting directory for the dialog. If
  #                              not specified the last chosen directory will be
  #                              used
  # - :select_multiple   boolean Set to true to allow multiple items to be
  #                              selected.
  #
  # @example
  #   # Default title and folder:
  #   chosen_folder = UI.select_directory
  #
  #   # Custom dialog title:
  #   chosen_folder = UI.select_directory(title: "Select Image Directory")
  #
  #   # Force a start folder:
  #   chosen_folder = UI.select_directory(directory: "C:/images")
  #
  #   # Allow multiple items to the selected:
  #   chosen_folder = UI.select_directory(select_multiple: true)
  #
  #   # Custom dialog title and force a start folder:
  #   chosen_folder = UI.select_directory(
  #     title: "Select Image Directory",
  #     directory: "C:/images"
  #   )
  #
  # @param [Hash] options
  #   The dialog can be customized by providing a hash or named arguments of options.
  #
  # @return [String, Array<String>] A string with the full path of the
  #   directory selected when
  #   :select_multiple option is set to
  #   false otherwise an array of strings
  #   or nil if the user cancelled.
  #
  # @version SketchUp 2015
  def self.select_directory(options)
  end

  # The set_cursor method is used to change the cursor to a new cursor with a
  # given cursor id. See UI.create_cursor and the Tool class for details
  # on creating your own tools with arbitrary cursors.
  #
  # If you call this while a standard SketchUp tool is active, you will not
  # see your custom cursor, as these tools are constantly setting their
  # own cursors to indicate SketchUp's state.
  #
  # @example
  #   def onSetCursor
  #     UI.set_cursor(cursor_id)
  #   end
  #
  # @param [Integer] cursor_id
  #   The id of the cursor you want to display.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def self.set_cursor(cursor_id)
  end

  # The set_toolbar_visible method is used to set whether a given toolbar is
  # visible.  Note that the toolbars and their names are different on the
  # Mac vs. PC, so be careful and be sure to test when using this method in a
  # cross-platform script.
  #
  # @example
  #   status = UI.set_toolbar_visible("Camera", true)
  #
  # @param [String] name
  #   The name of a Ruby toolbar.
  #
  # @param [Boolean] visible
  #   True to make the toolbar visible, false to hide it.
  #
  # @return [Boolean] true if successful, false if not.
  #
  # @version SketchUp 6.0
  def self.set_toolbar_visible(name, visible)
  end

  # The +show_extension_manager+ method is used to display the Extension Manager
  # dialog.
  #
  # @example
  #   UI.show_extension_manager
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def self.show_extension_manager
  end

  # The show_inspector method is used to display the inspector with the given
  # name. You can get the list of valid inspectors with UI.inspector_names.
  #
  # @example
  #   status = UI.show_inspector("Components")
  #
  # @param [String] name
  #   The name of inspector that you want to display.
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def self.show_inspector(name)
  end

  # The {.show_model_info} method is used to display the model info dialog for a
  # specific page. You can get the list of valid dialogs with
  # {UI.model_info_pages}.
  #
  # [SketchUp 2014] <code>"Classifications"</code> page was added.
  # [SketchUp 2017] <code>"Extensions"</code> page was removed.
  #
  # @example
  #   UI.show_model_info('Credits')
  #
  # @param [String] page_name
  #   The name of the model info dialog you want to display.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def self.show_model_info(page_name)
  end

  # The show_preferences method is used to display a SketchUp preferences dialog.
  # You can get the list of valid dialogs with UI.preferences_pages.
  #
  # Note that under OSX this method doesn't currently work.
  #
  # @example
  #   status = UI.show_preferences('GraphicsCard')
  #
  # @param [String] page_name
  #   The name of the preferences dialog you want to display.
  #
  # @return [Boolean] true
  #
  # @version SketchUp 6.0
  def self.show_preferences(page_name)
  end

  # The start_timer method is used to start a timer. This is an effective method
  # to create a repeating snippet of code for arbitrary animation.
  #
  # See this blog post for an detailed example of custom animation using timers:
  # http://sketchupapi.blogspot.com/2008/10/animate-yo-cheese.html
  #
  # Note that there is a bug that if you open a modal window in a non-repeating
  # timer the timer will repeat until the window is closed.
  #
  # @example
  #   # Beep once after 10 seconds.
  #   id = UI.start_timer(10, false) { UI.beep }
  #
  # @param [Boolean] repeat
  #   true if you want the timer to repeat, false
  #   (or omit) if you do not want it to repeat.
  #
  # @param [Numeric] seconds
  #   The time in seconds before your code should be called.
  #
  # @return [Integer] a timer ID
  #
  # @version SketchUp 6.0
  #
  # @yield [procedure] The procedure you want to execute after seconds has
  #   expired.
  def self.start_timer(seconds, repeat = false)
  end

  # The stop_timer method is used to stop a timer based on its id.
  #
  # @example
  #   # Stop timer before it triggers.
  #   id = UI.start_timer(10) { UI.beep }
  #   UI.stop_timer(id)
  #
  # @param [Integer] id
  #   The timer id for the timer that you want to stop.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def self.stop_timer(id)
  end

  # The toolbar method is used to get a Ruby toolbar by name. If the toolbar
  # doesn't exist a new one will be created.
  #
  # @example
  #   toolbar = UI.toolbar('Test')
  #
  # @param [String] name
  #   The name of the Ruby toolbar.
  #
  # @return [UI::Toolbar] a Toolbar object
  #
  # @version SketchUp 6.0
  def self.toolbar(name)
  end

  # The toolbar_names method is used to return the name of all the available
  # native toolbars (this differs between PC and Mac). These toolbar names
  # do not include Ruby toolbars.
  #
  # @example
  #   names = UI.toolbar_names
  #
  # @return [Array<String>] Array of strings representing toolbar names.
  #
  # @version SketchUp 6.0
  def self.toolbar_names
  end

  # The toolbar_visible? method is used to determine whether a given toolbar is
  # visible. Note that the toolbars and their names are different on the
  # Mac vs. PC, so be careful and be sure to test when using this method in a
  # cross-platform script.
  #
  # @example
  #   status = UI.toolbar_visible?("Camera")
  #
  # @param [String] name
  #   The name of a native toolbar.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def self.toolbar_visible?(name)
  end

end

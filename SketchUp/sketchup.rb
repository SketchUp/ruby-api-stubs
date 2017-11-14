# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Sketchup module contains a number of important utility methods for use in
# your Ruby scripts. Many of the classes in the API are implemented beneath
# this module. You can think of the Sketchup module as the "root" of the
# application tree. Most ruby calls start from the currently active model, and
# this is accessed via the Sketchup.active_model method.
#
# @example
#   # Grab a handle to the currently active model (aka the one the user is
#   # looking at in SketchUp.)
#   model = Sketchup.active_model
#
#   # Grab other handles to commonly used collections inside the model.
#   entities = model.entities
#   layers = model.layers
#   materials = model.materials
#   component_definitions = model.definitions
#   selection = model.selection
#
#   # Now that we have our handles, we can start pulling objects and making
#   # method calls that are useful.
#   first_entity = entities[0]
#   UI.messagebox("First thing in your model is a " + first_entity.typename)
#
#   number_materials = materials.length
#   UI.messagebox("Your model has " + number_materials.to_s + " materials.")
#
#   new_edge = entities.add_line( [0,0,0], [500,500,0])
#
# @version SketchUp 6.0
module Sketchup

  # Class Methods

  # The active_model method returns the currently active SketchUp model. On the
  # PC, this is the only model that one can have access to via the API, but
  # Macintosh versions of SketchUp can have multiple models open at once, in
  # which case the method will return the model that the user currently has
  # focused.
  #
  # @example
  #   model = Sketchup.active_model
  #   if !model
  #     UI.messagebox("Failure")
  #   else
  #     # code acting on the model
  #   end
  #
  # @return [Sketchup::Model] active model object if successful, false if
  #   unsuccessful
  #
  # @version SketchUp 6.0
  def self.active_model
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   status = Sketchup.add_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.add_observer(observer)
  end

  # The app_name method is used to retrieve the current application name.
  #
  # @example
  #   name = Sketchup.app_name
  #
  # @return [String] the name of the application, either
  #   "SketchUp Pro" or "SketchUp".
  #   Note: For versions earlier than SketchUp8 M4
  #   (Mac 8.0.15157 and Windows 8.0.15158) this function will
  #   return "Google SketchUp Pro" or "Google SketchUp".
  #
  # @version SketchUp 6.0
  def self.app_name
  end

  # The break_edges= method can be used to disable or enable the break edges
  # feature. Break edges is the SketchUp 7 feature that automatically splits
  # edges that the user draws which cross over one another.
  #
  # This feature is always on by default and cannot be disabled by the user
  # via the user interface, but you can call this method to disable it. Be
  # cautious in doing so, however, as the resulting model could then be altered
  # when the user later draws lines into it with the break edges feature
  # reactivated.
  #
  # @example
  #   Sketchup.break_edges = false
  #
  # @param [Boolean] enabled
  #   If true, break edges will be turned on. If false, it
  #   will be deactivated.
  #
  # @return [Boolean] true if break edges was turned on.
  #
  # @version SketchUp 7.0
  def self.break_edges=(enabled)
  end

  # The break_edges? method indicates whether the break edges feature is
  # currently turned on. Break edges is the SketchUp 7 feature that
  # automatically splits edges that the user draws which cross over one another.
  # This feature is always on by default and cannot be disabled by the user
  # via the user interface.
  #
  # @example
  #   is_on = Sketchup.break_edges?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.0
  def self.break_edges?
  end

  # The create_texture_writer method is used to create a TextureWriter object.
  #
  # @example
  #   texturewriter = Sketchup.create_texture_writer
  #
  # @return [Sketchup::TextureWriter] a texturewriter object if successful.
  #
  # @version SketchUp 6.0
  def self.create_texture_writer
  end

  # The debug_mode= method lets you controls whether SketchUp will output
  # warnings to the console when it detects incorrect usage of the API.
  # The setting takes effect right away, no need to restart SketchUp.
  #
  # @example
  #   Sketchup.debug_mode = true
  #
  # @param [Boolean] enabled
  #   If true, SketchUp will produce debug warnings.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2016
  def self.debug_mode=(enabled)
  end

  # The debug_mode? controls whether SketchUp will output warnings to the console
  # when it detects incorrect usage of the API.
  #
  # @example
  #   debug_mode = Sketchup.debug_mode?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 2016
  def self.debug_mode?
  end

  # The display_name_from_action method is used to gets a user-friendly name
  # from an action string. See Sketchup.send_action for a list of valid
  # action strings.
  #
  # @example
  #   Sketchup.display_name_from_action("viewRight:")
  #
  # @note This method has been non-functional on Mac since SketchUp 8.
  #
  # @param [String] action_name
  #   An action string.
  #
  # @return [String] a friendly name.
  #
  # @version SketchUp 6.0
  def self.display_name_from_action(action_name)
  end

  # Returns the ExtensionsManager where you can find all registered
  # SketchupExtension objects.
  #
  # @example
  #   extensions = Sketchup.extensions
  #   extensions.each{ |extension|
  #     puts "The next extension is named: #{extension.name} and its loaded? state is: #{extension.loaded?}"
  #   }
  #
  # @return [Sketchup::ExtensionsManager] an ExtensionsManager object.
  #
  # @version SketchUp 8.0 M2
  def self.extensions
  end

  # The file_new method is used to create a new file.
  #
  # @example
  #   new_sketchup = Sketchup.file_new
  #
  # @return [Module] The Sketchup module.
  #
  # @version SketchUp 6.0
  def self.file_new
  end

  # The find_support_files method is used to retrieve the relative path and name
  # of a file within the SketchUp installation directory.
  #
  # Forward slashes must be used to delimit between directory names.
  #
  # @example
  #   help_file = Sketchup.find_support_file("help.html", "Plugins/")
  #   if help_file
  #     # Print out the help_file full path
  #     UI.messagebox(help_file)
  #
  #     # Open the help_file in a web browser
  #     UI.openURL("file://" + help_file)
  #   else
  #     UI.messagebox("Failure")
  #   end
  #
  # @param [String] filename
  #   Name of the filename you want to find.
  #
  # @param [String] directory
  #   directory relative to the SketchUp
  #   installation directory.
  #
  # @return [String] the entire path if successful. If unsuccessful,
  #   the method returns false.
  #
  # @version SketchUp 6.0
  def self.find_support_file(filename, directory)
  end

  # The find_support_files method is used to retrieve the path and name of all
  # matching files within the SketchUp installation directory.
  #
  # Forward slashes must be used to delimit between directory names.
  #
  # @example
  #   files = Sketchup.find_support_files('rb', 'Plugins')
  #
  # @param [String] filename
  #   Extension of the files to be found.
  #
  # @param [String] directory
  #   directory relative to the SketchUp installation
  #   directory. Without this the result will
  #   be empty.
  #
  # @return [Array<String>] an array of files. If unsuccessful, the method
  #   returns false.
  #
  # @version SketchUp 6.0
  def self.find_support_files(filename, directory)
  end

  # The fix_shadow_strings= method lets you control whether shadow rendering
  # attempts to fix an artifact commonly referred to as "strings".  The fix
  # is actually very model dependent and not controllable from the UI, so this
  # method can be used to control it.
  #
  # @example
  #   Sketchup.fix_shadow_strings = true
  #
  # @param [Boolean] enabled
  #   If true, shadow strings fix will be turned on. If
  #   false, it will be deactivated.
  #
  # @return [Boolean] true if shadow strings fix was turned on.
  #
  # @version SketchUp 8.0 M1
  def self.fix_shadow_strings=(enabled)
  end

  # The fix_shadow_strings? method indicates whether the a fix for a shadow
  # rendering artifact commonly referred to as "strings" is enabled.  The fix
  # is actually very model dependent and not controllable from the UI, so this
  # method can be used to test it.
  #
  # @example
  #   is_on = Sketchup.fix_shadow_strings?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0 M1
  def self.fix_shadow_strings?
  end

  # The format_angle method takes a number as an angle in radians and formats it
  # into degrees. For example, format_angle(Math::PI) will return 180.0.
  #
  # @example
  #   degrees = Sketchup.format_angle(Math::PI)
  #
  # @param [Numeric] number
  #   A number to be formatted.
  #
  # @return [String] an angle in degrees if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def self.format_angle(number)
  end

  # The format_area method formats a number as an area using the current units
  # settings.
  #
  # The default unit setting is inches. For example, 10 becomes 10 inches
  # squared.
  #
  # @example
  #   area = Sketchup.format_area(number)
  #
  # @param [Numeric] number
  #   A number to be formatted.
  #
  # @return [String] an area if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.format_area(number)
  end

  # The format_degrees method formats a number as an angle given in degrees. For
  # example, 10 becomes 10.0. This is the equivalent to a to_f call.
  #
  # @example
  #   degrees = Sketchup.format_degrees(number)
  #
  # @param [Numeric] number
  #   A number to be formatted.
  #
  # @return [String] degrees if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.format_degrees(number)
  end

  # The format_length method formats a number as a length using the current
  # units settings.
  #
  # The default unit setting is inches. For example, 10 becomes 10".
  #
  # @example
  #   length = Sketchup.format_length(10)
  #   if length
  #     UI.messagebox(length)
  #   end
  #
  # @param [Numeric] number
  #   A number to be formatted.
  #
  # @return [String] length if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def self.format_length(number)
  end

  # The get_datfile_info method is used to retrieve the value for the given key
  # from Sketchup.dat.
  #
  # If the key is not found, default_value is returned.
  #
  # @example
  #   value = Sketchup.get_datfile_info(key, default_value)
  #
  # @param [String] key
  #   The key whose value you want to retrieve.
  #
  # @param [String] default_value
  #   The default value you want returned if key is not
  #   available.
  #
  # @return [String] a string value if successful.
  #
  # @version SketchUp 6.0
  def self.get_datfile_info(key, default_value)
  end

  # The get_i18ndatfile_info method is used to retrieve the value for the
  # given key from the internationalization file that SketchUp uses to work
  # in multiple languages.
  #
  # If the key is not found, default_value is returned.
  #
  # @example
  #   value = Sketchup.get_i18ndatfile_info(key, default_value)
  #
  # @param [String] key
  #   The key whose value you want to retrieve.
  #
  # @param [String] default_value
  #   The default value you want returned if key is not
  #   available.
  #
  # @return [String] a string value if successful.
  #
  # @version SketchUp 6.0
  def self.get_i18n_datfile_info(key, default_value)
  end

  # The os_language method returns the language code for the language SketchUp
  # is running in. This is an alias for the get_locale method.
  #
  # Valid return values are: en-US, fr, it, de, es, ja, ko, zh-CN, zh-TW,
  # pt-BR, nl, ru.
  # If the OS language does not have corresponding folder and files in the
  # SketchUp Resources folder, the returned language is, by default, en-US.
  #
  # @example
  #   language = Sketchup.os_language
  #
  # @return [String] a code representing the language SketchUp
  #   is displaying.
  #
  # @version SketchUp 6.0
  def self.get_locale
  end

  # The get_resource_path is used to retrieve the directory where "resource"
  # files are stored by SketchUp. Resource files include things like language
  # localization files.
  #
  # @example
  #   directory = Sketchup.get_resource_path("Styles.strings")
  #
  # @param [String] filename
  #   The filename of a resource file in the resource directory hierarchy.
  #
  # @return [String] the directory path to the resources folder.
  #
  # @version SketchUp 6.0
  def self.get_resource_path(filename)
  end

  # The get_shortcuts method retrieves an array of all keyboard shortcuts
  # currently registered with SketchUp. Each shortcut is returned as a
  # string with the shortcut and the command separated by a tab, similar
  # to "Ctrl+A\tEdit/Select All"
  #
  # @example
  #   shortcuts = Sketchup.get_shortcuts
  #
  # @return [Array<String>] an array of shortcut strings.
  #
  # @version SketchUp 6.0
  def self.get_shortcuts
  end

  # Installs the contents of a ZIP archive file into SketchUp's Plugins folder.
  # If the ZIP contains subfolders, these will be preserved. This allows for a
  # Ruby API plugin or Extension developer to distribute their plugin as a single
  # file regardless of how many asset files must be included.
  #
  # The user will be shown a warning message that they must agree to before the
  # install proceeds. If they do not agree, an Interrupt error will be raised.
  # If the user does agree but there is a problem with the unzip process, an
  # Exception will be raised. You can capture these states via a begin/rescue.
  # See the example below.
  #
  # If the install is successful, any Ruby files that have been added to
  # the Plugins folder will immediately be executed, saving the user a restart.
  #
  # To create an archive file, use your favorite tool (7zip, Winzip, etc.) to zip
  # up any files and folders in your plugins directory. If the archive contains a
  # SketchupExtension that you would like users to be able to install from the
  # Preferences > Extensions panel, rename your file to have a .rbz file
  # extension.
  #
  # @example
  #   path = 'c:/temp/SomePluginPackage.zip'
  #   begin
  #     Sketchup.install_from_archive(path)
  #   rescue Interrupt => error
  #     UI.messagebox("User said 'no': " + error)
  #   rescue Exception => error
  #     UI.messagebox("Error during unzip: " + error)
  #   end
  #
  # @param [String] filename
  #   The path to the RBZ or ZIP file to install.
  #
  # @raise [Exception] If the archive cannot be installed.
  #
  # @raise [Interrupt] If the user cancel the installation.
  #
  # @raise [Exception] If the archive cannot be found.
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0 M2
  def self.install_from_archive(filename)
  end

  # This methods indicates whether the host SketchUp application is 64bit.
  # Useful for extensions that ship with binaries and need to determine
  # which versions to load.
  #
  # @example
  #   # For backward compatibility, check for the existence of the method
  #   # and load 32bit binaries for SketchUp versions that do not have this
  #   # method.
  #   if Sketchup.respond_to?(:is_64bit?) && Sketchup.is_64bit?
  #     # Load 64bit binaries.
  #   else
  #     # Load 32bit binaries.
  #   end
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 2015
  def self.is_64bit?
  end

  # The is_online method is used to verify a connection to the Internet. This
  # method can take some time to execute, so be careful not to call it more often
  # than you need.
  #
  # @example
  #   status = Sketchup.is_online
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.is_online
  end

  # Returns a boolean flag indicating whether the application is SketchUp Pro.
  # Note that after the free trial period, SketchUp Pro will revert to regular
  # SketchUp and this method will return false until the user registers
  # the product.
  #
  # @example
  #   if Sketchup.is_pro?
  #     UI.messagebox("You are running SU Pro.")
  #   end
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.0
  def self.is_pro?
  end

  # The is_valid_filename? method is used to determine whether a filename
  # contains illegal characters.
  #
  # @example
  #   status = Sketchup.is_valid_filename?(filename)
  #
  # @param [String] filename
  #   A filename string.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def self.is_valid_filename?(filename)
  end

  # The load method is used to include encrypted and nonencrypted ruby files.
  #
  # You do not need to include the file extension on the path. This method will
  # look for .rb first (unencrypted) and then .rbe (encrypted) and finally .rbs
  # (the deprecated scrambled format) files.
  # See the "Distributing your Plugin" article for details.
  #
  # @example
  #   sfile = "application_loader" # file extension not required
  #   status = Sketchup.load(sfile)
  #
  # @param [String] path
  #   The path, including the filename, to the file you want
  #   to require.
  #
  # @return [Boolean] True if the file is included. False if the
  #   file is not included.
  #
  # @version SketchUp 6.0
  def self.load(path)
  end

  # The open_file method is used to open a file.
  #
  # @example
  #   result = Sketchup.open_file("C:\\model.skp")
  #
  # @param [String] filename
  #   The path and filename to open.
  #
  # @return [Boolean] true if opening the file succeeded,
  #   false otherwise.
  #
  # @version SketchUp 6.0
  def self.open_file(filename)
  end

  # The os_language method returns the language code for the language SketchUp
  # is running in. This is an alias for the get_locale method.
  #
  # Valid return values are: en-US, fr, it, de, es, ja, ko, zh-CN, zh-TW,
  # pt-BR, nl, ru.
  # If the OS language does not have corresponding folder and files in the
  # SketchUp Resources folder, the returned language is, by default, en-US.
  #
  # @example
  #   language = Sketchup.os_language
  #
  # @return [String] a code representing the language SketchUp
  #   is displaying.
  #
  # @version SketchUp 6.0
  def self.os_language
  end

  # The parse_length method parses a string as a length.
  #
  # For example, "200" becomes 200.0.
  #
  # @example
  #   float = Sketchup.parse_length("2'") # Returns 24 (representing inches)
  #   length = float.to_l # Convert to a Length type if needed.
  #
  # @param [String] string
  #   The string to be parsed as a number.
  #
  # @return [Float] the numerical representation of the string if
  #   successful, or nil if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.parse_length(string)
  end

  # This methods returns a symbol indicating the current platform.
  #
  # It should be used over RUBY_PLATFORM as this returns a different value for
  # Windows since SketchUp 2014.
  #
  # Older SketchUp versions still need to check
  # <code>RUBY_PLATFORM.include?('mswin')</code> or
  # <code>RUBY_PLATFORM.include?('darwin')</code>.
  #
  # Possible return values:
  # - :platform_win
  # - :platform_osx
  #
  # @example
  #   module MyExtension
  #     IS_WIN = Sketchup.platform == :platform_win
  #     IS_OSX = Sketchup.platform == :platform_osx
  #   end
  #
  # @return [Symbol] Current OS platform.
  #
  # @version SketchUp 2014
  def self.platform
  end

  # The plugins_disabled= method lets you control whether SketchUp will load
  # Ruby scripts from the plugins directory at startup time. This is primarily
  # a trouble-shooting method. If you are having strange behavior in SketchUp
  # that you suspect is from a bad script, you can type
  # Sketchup.plugins_disabled=true into the Ruby console and restart SketchUp
  # to see if the problem is fixed.
  #
  # @example
  #   # Type this in the Ruby console then restart SketchUp.
  #   Sketchup.plugins_disabled = true
  #
  #   # To reactivate plugins, type this into the Ruby console and restart.
  #   Sketchup.plugins_disabled = false
  #
  # @param [Boolean] enabled
  #   If true, the plugins directory will not load.
  #
  # @return [Boolean] true if plugins were disabled.
  #
  # @version SketchUp 8.0 M2
  def self.plugins_disabled=(enabled)
  end

  # The plugins_disabled? method indicates whether Ruby scripts in the plugins
  # directory will be loaded at startup time.
  #
  # @example
  #   is_disabled = Sketchup.plugins_disabled?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0 M2
  def self.plugins_disabled?
  end

  # The quit method is used to terminate the application. This will pop-up the
  # usual model save prompts if there are unsaved models open. User can cancel
  # the model save, in which case the application will not terminate.
  #
  # @example
  #   Sketchup.quit
  #   # Do not expect code to execute reliably after this point.
  #
  # @return self
  #
  # @version SketchUp 2014
  def self.quit
  end

  # The read_default method is used to retrieve the string associated with a
  # value within the specified sub-section section of a .INI file or registry
  # (within the Software > SketchUp > SketchUp [Version] section).
  #
  # @example
  #   result = Sketchup.read_default("section", "variable", "default")
  #
  # @param [String] section
  #   A section in an .INI or registry.
  #
  # @param [Object] default
  #   A default value if the value is not found.
  #
  # @param [String] variable
  #   A variable within the section.
  #
  # @return [Object, nil] if unsuccessful, the value of the default
  #   if successful.
  #
  # @version SketchUp 6.0
  def self.read_default(section, variable, default = nil)
  end

  # The register_extension method is used to register an extension with
  # SketchUp's extension manager (in SketchUp preferences).
  #
  # @example
  #   utilities_extension = SketchupExtension.new("Utilities Tools",
  #     "Utilities/utilitiesTools.rb")
  #
  #   utilities_extension.description = "Adds Tools->Utilities to the " +
  #     "SketchUp inteface. The Utilities submenu contains two tools: " +
  #     "Create Face and Query Tool."
  #
  #   Sketchup.register_extension(utilities_extension, false)
  #
  # @note It is recommended to set +load_on_start+ to true unless you have a very
  #   good reason not to.
  #
  # @param [SketchupExtension] extension
  #   A SketchupExtension object.
  #
  # @param [Boolean] load_on_start
  #   Passing true into this will load the
  #   extension immediately and set it so
  #   that it will load automatically
  #   whenever SketchUp restarts.
  #
  # @return [Boolean] +true+ if extension registered properly
  #
  # @version SketchUp 6.0
  def self.register_extension(extension, load_on_start = false)
  end

  # The register_importer method is used to register an importer with SketchUp.
  #
  # @example
  #   status = Sketchup.register_importer(importer)
  #
  # @param [Sketchup::Importer] importer
  #   An Importer object representing the importer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.register_importer(importer)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   status = Sketchup.remove_observer(observer)
  #
  # @param [Sketchup::AppObserver] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.remove_observer(observer)
  end

  # The require method is used to include encrypted and nonencrypted ruby files.
  # This is an alias of the Sketchup.load method.
  #
  # You do not need to include the file extension on the path. This method will
  # look for .rbe first (encrypted) and then .rbs (the deprecated scrambled
  # format) and finally .rb (unencrypted) files. The loading order was changed
  # in SketchUp 2016 when the new .rbe encryption was introduced. Prior to
  # SketchUp 2016 the loading order was first .rb then .rbs.
  #
  # @example
  #   sfile = "application_loader" # file extension not required
  #   status = Sketchup::require(sfile)
  #
  # @param [String] path
  #   The path, including the filename, to the file you want
  #   to require.
  #
  # @return [Boolean] True if the file is included. False if the
  #   file is not included.
  #
  # @version SketchUp 6.0
  def self.require(path)
  end

  # The save_thumbnail method is used to generate a thumbnail for any SKP file -
  # not necessarily the loaded model.
  #
  # @example
  #   status = Sketchup.save_thumbnail("skp_filename", "image_filename")
  #
  # @param [String] skp_filename
  #   The name of the SketchUp file whose model you want
  #   represented in the thumbnail.
  #
  # @param [String] img_filename
  #   The name of the file where the thumbnail will be saved.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.save_thumbnail(skp_filename, img_filename)
  end

  # The send_action method sends a message to the message queue to perform some
  # action asynchronously.
  #
  # Valid actions are:
  # - showRubyPanel:
  # - viewBack:
  # - viewBottom:
  # - viewFront:
  # - viewIso:
  # - viewLeft:
  # - viewRight:
  # - viewTop:
  # - viewPerspective:
  # - viewShowAxes:
  # - viewShowHidden:
  # - viewZoomExtents:
  # - viewZoomToSelection:
  # - viewUndo:
  # - selectOrbitTool:
  # - selectPositionCameraTool:
  # - selectDollyTool:
  # - selectTurnTool:
  # - selectWalkTool:
  # - selectZoomTool:
  # - selectFieldOfViewTool:
  # - selectZoomWindowTool:
  # - pageAdd:
  # - pageDelete:
  # - pageUpdate:
  # - pageNext:
  # - pagePrevious:
  # - renderWireframe:
  # - renderHiddenLine:
  # - renderMonochrome:
  # - renderShaded:
  # - renderTextures:
  # - selectArcTool:
  # - selectArc3PointTool:
  # - selectArc3PointPieTool:
  # - selectAxisTool:
  # - selectCircleTool:
  # - selectEraseTool:
  # - selectFreehandTool:
  # - selectLineTool:
  # - selectMeasureTool:
  # - selectMoveTool:
  # - selectOffsetTool:
  # - selectPaintTool:
  # - selectPolygonTool:
  # - selectProtractorTool:
  # - selectPushPullTool:
  # - selectRectangleTool:
  # - selectRectangle3PointTool:
  # - selectRotateTool:
  # - selectScaleTool:
  # - selectSectionPlaneTool:
  # - selectTextTool:
  # - selectDimensionTool:
  # - selectExtrudeTool:
  # - selectSelectionTool:
  # - editUndo:
  # - editRedo:
  # - editHide:
  # - editUnhide:
  # - fixNonPlanarFaces:
  #
  # Added in SketchUp 8.0+:
  # - addBuilding:
  # - getPhotoTexture:
  # - selectImageIglooTool:
  # - selectNorthTool:
  #
  # Added in SketchUp 2013+:
  # - showExtensionStore:
  #
  # Removed in SketchUp 2013+:
  # - addBuilding:
  #
  # On the PC only, you can also send these numeric values. (Note that these are
  # officially "unsupported" and are not guaranteed to work in current or
  # future versions of the API.)
  #
  # - 10501: set view to Top
  # - 10502: set view to Front
  # - 10503: set view to Rear
  # - 10504: set view to Left
  # - 10505: set view to Right
  # - 10506: set view to Bottom
  # - 10507: set view to Axonometric
  # - 10510: set render mode to Wire
  # - 10511: set render mode to Hidden lines removal
  # - 10512: set render mode to Surfaces Shading
  # - 10513: set render mode to Transparency
  # - 10519: set camera to ortho (removes perspective)
  # - 10520: walk tool
  # - 10521: display the System Preferences dialog box (Files tab)
  # - 10522: removes axes display
  # - 10523: pan tool
  # - 10525: set the interactive eye height feature
  # - 10526: zoom window
  # - 10527: zoom extents
  # - 10529: zoom out 2
  # - 10531: toggle the Standard toolbar
  # - 10532: toggle the Camera toolbar
  # - 10533: display the Shadows Settings dialog box
  # - 10537: toggle the Views toolbar
  # - 10538: display the System Preferences dialog box (Display tab)
  # - 10545: toggle Color ByLayer
  # - 10546: toggle Shadows toolbar
  # - 10551: toogle Large icons
  # - 10576: toggle Render Mode toolbar
  # - 10596: set Render Mode to No Transparency (Preferences)
  # - 10597: set Render Mode to Wire (Preferences)
  # - 10598: set Render Mode to Transparency (Preferences)
  # - 10599: set Render Mode to Surfaces Shading (Preferences)
  # - 10600: set Render Mode to Texture (Preferences)
  # - 10601: set Render Mode to No Texture (Preferences)
  # - 10602: toggle Shadows
  # - 10603: toggle Profiles
  # - 10604: toggle Extension Lines
  # - 10605: toggle Jitter edges
  # - 21019: hide Status bar and VCB
  # - 21020: show Status bar and VCB
  # - 21022: hide Status bar and VCB
  # - 21023: place 3d text box
  # - 21024: select the Measure tool
  # - 21031: select the Freehand Draw tool
  # - 21041: select the PushPull tool
  # - 21048: select the Move tool
  # - 21052: hide selected objects
  # - 21056: create face with selected edges closed loop
  # - 21057: select the Protractor tool
  # - 21060: display Components Window
  # - 21061: toggle Draw toolbar
  # - 21063: toggle Model Bounding Box display
  # - 21065: select the Arc tool
  # - 21067: creat a new Page
  # - 21069: select the Arc 3 Point tool
  # - 21070: select the Arc 3 Point Pie tool
  # - 21074: show the Materials Browser Window
  # - 21076: display the Preferences dialog box (Text activated)
  # - 21077: display the Tip of the day Window
  # - 21078: select the Paint Bucket tool
  # - 21080: display the Page Manager Window
  # - 21082: display the Macros Dialog Box
  # - 21086: display the Components Browser Window
  # - 21094: select the Rectangle tool
  # - 21095: select the Polygon tool
  # - 21096: select the Circle tool
  # - 21098: open the Open Window
  # - 21100: select the Offset tool
  # - 21101: slect all objects
  # - 21112: open the Import Window
  # - 21124: launch the validity check tool
  # - 21126: select the Axes tool
  # - 21029: select the Rotate tool
  # - 21032: toggle Layer toolbar
  # - 21036: display the Save as Window
  # - 21046: spin the model a full 360&deg; and display report
  # - 21047: fast Pick Time report
  # - 21049: open the Export model Window
  # - 21169: select the Position Camera tool
  # - 21170: display the Preferences, Tour Guide activated
  # - 21180: create a new Page just right of selected page
  # - 21200: display the Insert Image Window
  # - 21233: display Area of selected face
  # - 21234: display Area of all faces with selected material
  # - 21236: select the Scale tool
  # - 21237: display the Export 2D Graphics Window
  # - 21245: display a Polygon Offset Factors dialog box
  # - 21276: reverse selected face(s)
  # - 21287: select the Divide feature
  # - 21337: select the Section Plane Placement tool
  # - 21354: open the Layer Window
  # - 21386: open the Export Animation Window
  # - 21405: select the Text tool
  # - 21406: display Fog dialog box
  # - 21410: select the Dim tool
  # - 21433: toggle Edit toolbar
  # - 21442: select the FollowMe tool
  # - 21448: select the Axes tool
  # - 21453: select all objects
  # - 21460: display Licence
  # - 21462: display Authorization dialog box
  # - 21463: display un-authorizing message
  # - 21464: display Open Licence files (Network) Window
  # - 21466: display Quick reference Card in Adobe Reader
  # - 21467: display Licences in use dialog box
  # - 21469: zoom extents to selected objects
  # - 21476: perform a non-planar check on selected objects
  # - 21477: list accelerators in window
  # - 21485: erase selected objects
  # - 21487: display Edit current material dialog box
  # - 21485: erase all new created pages
  # - 21488: display Entity Info Window
  # - 21490: display Soften Edges Window
  # - 21491: display Profiles
  # - 21492: display Extended Edges
  # - 21493: display Jitter Lines
  # - 21494: select Field of view tool
  # - 21513: display the outliner
  # - 21520: override Tile Rendering Size dialog box
  # - 21525: select the FollowMe tool
  # - 21542: display the Insert Image Window
  # - 21560 and up: causes a runtime Error
  #
  # @example
  #   result = Sketchup.send_action("selectArcTool:")
  #
  # @param [String, Integer] action
  #   The action to be performed.
  #
  # @return [Boolean] +true+ if successful, +false+ if unsuccessful
  #
  # @version SketchUp 6.0
  def self.send_action(action)
  end

  # The {#send_to_layout} method is used to open a file in LayOut.
  #
  # @example
  #   result = Sketchup.send_to_layout("C:/models/hexaflexagon.layout")
  #
  # @param [String] file
  #   The path and filename to open, either .skp or .layout.
  #
  # @return [Boolean] true if opening the file succeeded,
  #   false otherwise.  If LayOut is not installed or the file is not present
  #   this function will return false.
  #
  # @version SketchUp 2018
  def self.send_to_layout(file)
  end

  # The set_status_text method is used to
  # set the text appearing on the status bar within the drawing window.
  #
  # If no arguments are passed, the status bar content is cleared. Valid
  # positions are:
  #
  # - +SB_PROMPT+ - the text will appear at the left-side of the status bar
  # - +SB_VCB_LABEL+ - the text will appear in place of the VCB label
  # - +SB_VCB_VALUE+ - the text will appear in the VCB
  #
  # @example
  #   result = Sketchup.set_status_text("This is a Test", SB_VCB_VALUE)
  #   if result
  #     #code to do something if set_status_text is successful
  #   end
  #
  # @overload set_status_text
  #
  #   Clears all status panes.
  #   @return [nil]
  #
  # @overload set_status_text(status_text = '', position = SB_PROMPT)
  #
  #   @param [String]  status text the status text that will appear.
  #   @param [Integer] position    the position where the text will appear.
  #   @return [nil]
  #
  # @version SketchUp 6.0
  def self.set_status_text(*args)
  end

  # The status_text= method is used to set the text appearing on the status
  # bar within the drawing window.
  #
  # This is the same as calling set_status_text with a 2nd parameter of
  # SB_PROMPT.
  #
  # @example
  #   result = Sketchup.status_text = "This is a Test"
  #
  # @param [String] status_text
  #   The status text that will appear.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def self.status_text=(status_text)
  end

  # The temp_dir method is used to retrieve the OS temporary directory for the
  # current user. You can use this directory to write temporary files that are
  # not required to persist between SketchUp sessions.
  #
  # @example
  #   temp_dir = Sketchup.temp_dir
  #
  # @return [String] a string containing the full temporary directory path
  #
  # @version SketchUp 2014
  def self.temp_dir
  end

  # The template method is used to get the file name of the current template.
  # Templates are the .skp files that are loaded when the user select File > New.
  #
  # @example
  #   name = Sketchup.template
  #
  # @return [String] the current template
  #
  # @version SketchUp 6.0
  def self.template
  end

  # The template= method is used to set the file name of the current template.
  # Templates are the .skp files that are loaded when the user select File > New.
  #
  # @example
  #   status = Sketchup.template = "filename"
  #
  # @param [String] filename
  #   The name of the template to set.
  #
  # @return [String] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.template=(filename)
  end

  # The template_dir is used to retrieve the directory where templates are
  # stored by the SketchUp install. Templates are the .skp files that are loaded
  # when the user select File > New.
  #
  # @example
  #   directory = Sketchup.template_dir
  #
  # @return [String] containing the full template directory path
  #
  # @version SketchUp 6.0
  def self.template_dir
  end

  # The undo method is used undo the last transaction on the undo stack.
  #
  # @example
  #   Sketchup.undo
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def self.undo
  end

  # The vcb_label= method is used to set the label that appears on the vcb,
  # or the "value control box", which is another word for the "measurements"
  # text entry box that appears at the bottom on the SketchUp window.
  #
  # This is the same as calling set_status_text with a 2nd parameter of
  # SB_VCB_LABEL.
  #
  # @example
  #   result = Sketchup.vcb_label = "This is a Test"
  #
  # @param [String] label_text
  #   The label text that will appear.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def self.vcb_label=(label_text)
  end

  # The vcb_value= method is used to set the value that appears on the vcb,
  # or the "value control box", which is another word for the "measurements"
  # text entry box that appears at the bottom on the SketchUp window.
  #
  # This is the same as calling set_status_text with a 2nd parameter of
  # SB_VCB_VALUE.
  #
  # @example
  #   result = Sketchup.vcb_value = "This is a Test"
  #
  # @param [String] value
  #   The text that will appear as the vcb's value.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def self.vcb_value=(value)
  end

  # Gets the current version of sketchup in decimal form.
  #
  # @example
  #   version = Sketchup.version
  #   if (version)
  #     UI.messagebox version
  #   else
  #     return
  #   end
  #
  # @return [String] the decimal form of the version
  #
  # @version SketchUp 6.0
  def self.version
  end

  # Get the current version of sketchup as a whole number for comparisons. The
  # number returned has the major, minor, and build values packed into an integer
  # value as follows:
  # - Major version = X
  # - Minor version = Y
  # - Build number = Z
  #
  # SketchUp 6.0 - SketchUp 2015
  # - XXYYYZZZ
  #
  # SketchUp 2016+
  # - XXYZZZZZZZ
  #
  # @example
  #   if (15003000...15004000) === Sketchup.version_number
  #     puts "SketchUp 15.3"
  #   end
  #   if Sketchup.version_number >= 1600000000
  #     puts "New format"
  #   end
  #
  # @return [Integer] the whole number form of the version
  #
  # @version SketchUp 6.0
  def self.version_number(*args)
  end

  # The write_default method is used to set the string associated with a
  # variable within the specified sub-section of a .plist file on the Mac
  # or the registry on Windows
  # (within the Software > SketchUp > SketchUp [Version] section).
  #
  # @example
  #   result = Sketchup.write_default("section", "key", "my_value")
  #
  # @param [String] section
  #   A section in a .plist file (Mac) or the registry
  #   (Windows).
  #
  # @param [Object] value
  #   The value to store.
  #
  # @param [String] key
  #   A key within the section.
  #
  # @return [Boolean] True if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def self.write_default(section, key, value)
  end

end

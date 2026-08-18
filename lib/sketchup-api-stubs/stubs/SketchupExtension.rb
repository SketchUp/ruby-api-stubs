# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# A SketchUp extension is a piece of software that extends the capabilities of
# SketchUp. It could be a new drawing tool, a content library or a way to
# automate a tedious and time consuming task.
#
# The {SketchupExtension} handles the extension metadata, such as name,
# author and version, as well as a path to the main Ruby file with the
# actual functionality you want to add.
#
# See {Extension Requirements}[file.extension_requirements.html]
#
# See {Creating a SketchUp
# Extension}[https://developer.sketchup.com/article-creating-a-sketchup-extension]
#
# @example
#   require 'sketchup.rb'
#   require 'extensions.rb'
#
#   stair_extension = SketchupExtension.new('Stair Tools", "stair_tools/core')
#   stair_extension.version = '1.0.0'
#   stair_extension.description = 'Tools to draw stairs automatically.'
#   Sketchup.register_extension(stair_extension, true)
#
# @note By default Extension Warehouse encrypts extensions and convert .rb files to
#   .rbe files. Omit the file extension to let SketchUp look for both.
#
# @version SketchUp 6.0
class SketchupExtension

  # Instance Methods

  # Loads the extension, meaning the underlying ruby script is immediately
  # interpreted. This is the equivalent of checking the extension's checkbox
  # in the Extension Manager.
  #
  # @example
  #   # This will register the extension, a necessary step for it to appear
  #   # in SketchUp's Extension Manager > Extensions list
  #   ext_c = SketchupExtension.new('Stair Tools C', 'StairTools/core')
  #   Sketchup.register_extension(ext_c, false)
  #
  #   # And this will load the extension.
  #   ext_c.check
  #
  # @return [Boolean] whether the load succeeded
  #
  # @version SketchUp 8.0 M2
  def check
  end

  # The {#copyright} method returns the copyright string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.copyright = '2008'
  #   copyright = extension.copyright
  #
  # @return [String] the Extension copyright
  #
  # @version SketchUp 6.0
  def copyright
  end

  # The {#copyright=} method sets the copyright string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.copyright = '2008'
  #   copyright = extension.copyright
  #
  # @param [String] copyright
  #   The copyright to set
  #
  # @return [String] the new copyright
  #
  # @version SketchUp 6.0
  def copyright=(copyright)
  end

  # The {#creator} method returns the creator string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.creator = 'Trimble Navigation, Inc.'
  #   creator = extension.creator
  #
  # @return [String] the Extension creator
  #
  # @version SketchUp 6.0
  def creator
  end

  # The {#creator=} method sets the creator string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.creator = 'Trimble Navigation, Inc.'
  #   creator = extension.creator
  #
  # @param [String] creator
  #   The creator to set
  #
  # @return [String] the new creator
  #
  # @version SketchUp 6.0
  def creator=(creator)
  end

  # The {#description} method returns the long description which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.description = 'My description.'
  #   description = extension.description
  #
  # @return [String] the Extension description
  #
  # @version SketchUp 6.0
  def description
  end

  # The {#description=} method sets the long description which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.description = 'My description.'
  #   description = extension.description
  #
  # @param [String] description
  #   The description string to set.
  #
  # @return [String] the Extension description
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The {#extension_path} method returns the file system path to the extension's
  # outer rb file.
  #
  # @return [String] the file system path to the extension
  #
  # @version SketchUp 2013
  def extension_path
  end

  # The {#id} method returns the Extension Warehouse ID string.
  #
  # @return [String] the Extension Warehouse ID
  #
  # @version SketchUp 2013
  def id
  end

  # The new method is used to create a new SketchupExtension object. Note
  # that once the extension object is created, it will not appear in the
  # Extension Manager dialog until your register it with the
  # Sketchup.register_extension method.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #
  #   # Then be sure to register it. By passing a 2nd param of true, you're
  #   # telling SketchUp to load the extension by default.
  #   Sketchup.register_extension(extension, true)
  #
  # @note It is recommended to omit the file extension provided in the +path+
  #   argument. SketchUp will resolve the file extension to +.rbe+, +.rbs+
  #   or +.rb+.
  #
  # @param [String] title
  #   The name of the extension
  #
  # @param [String] path
  #   The relative path to the script that loads your
  #   plugin.
  #
  # @return [SketchupExtension]
  #
  # @version SketchUp 6.0
  def initialize(title, path)
  end

  # Return the Ruby load error for an extension that failed to load.
  #
  # @example
  #   # broken/broken_file.rb
  #   raise "This file raises an exception"
  #
  #   # broken.rb
  #   extension = SketchupExtension.new("Broken Extension", "broken/broken_file")
  #   extension.version = "1.0.0"
  #   extension.description = "This extension's has an error."
  #   Sketchup.register_extension(extension, true)
  #
  #   extension.load_error
  #   # => RuntimeError
  #
  # @return [Exception, nil]
  #
  # @version SketchUp 2026.2
  def load_error
  end

  # Returns whether the extension is set to load when SketchUp starts up.
  #
  # @example
  #   ext = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   puts "load_on_start? is false: #{ext.load_on_start?.to_s}"
  #   Sketchup.register_extension(ext, true)
  #   puts "load_on_start? is now true: #{ext.load_on_start?.to_s}"
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0 M2
  def load_on_start?
  end

  # Returns whether the extension is currently loaded, meaning the actual ruby
  # script that implements the extension has been evaluated.
  #
  # @example
  #   ext = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   puts "loaded? is false: #{ext.loaded?.to_s}"
  #   Sketchup.register_extension(ext, true)
  #   puts "loaded? is now true: #{ext.loaded?.to_s}"
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0 M2
  def loaded?
  end

  # The {#name} method returns the name which appears for
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   name = extension.name
  #
  # @return [String] the Extension name
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#name=} method sets the name which appears for
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.name = 'Renamed Stair Tools'
  #
  # @param [String] name
  #   The new name
  #
  # @return [String] the Extension name
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # Returns whether the extension has been registered via
  # Sketchup.register_extension.
  #
  # @example
  #   ext = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   puts "My registered? is false: #{ext.registered?.to_s}"
  #   Sketchup.register_extension(ext, true)
  #   puts "Now registered? is now true: #{ext.registered?.to_s}"
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0 M2
  def registered?
  end

  # Unloads the extension. This is the equivalent of unchecking the extension's
  # checkbox in the Extension Manager > Extensions list.
  #
  # Note that technically the extension is not "unloaded" in the sense that it
  # stops running during the current SketchUp session, but the next time the
  # user restarts SketchUp, the extension will not be active.
  #
  # @example
  #   # This unloads all extensions. The next time SketchUp starts, none of
  #   # the extensions will be active.
  #   Sketchup.extensions.each { |extension|
  #     extension.uncheck
  #   }
  #
  # @return [Boolean] whether the unload succeeded
  #
  # @version SketchUp 8.0 M2
  def uncheck
  end

  # The {#version} method returns the version which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.version = '5.0'
  #   version = extension.version
  #
  # @return [String] the Extension version
  #
  # @version SketchUp 6.0
  def version
  end

  # The {#version=} method sets the version which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example
  #   # Create an entry in the Extension list that loads a script called
  #   # core.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core')
  #   extension.version = '5.0'
  #   version = extension.version
  #
  # @param [String] version
  #   The version string to set.
  #
  # @return [String] the Extension version
  #
  # @version SketchUp 6.0
  def version=(version)
  end

  # The {#version_id} method returns the Extension Warehouse Version ID string.
  #
  # @return [String] the Extension Warehouse Version ID string
  #
  # @version SketchUp 2013
  def version_id
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class SketchupExtension

  # Instance Methods

  # Loads the extension, meaning the underlying ruby script is immediately
  # interpreted. This is the equivalent of checking the extension's checkbox
  # in the Preferences > Extensions list.
  #
  # @example 
  #   # This will register the extension, a necessary step for it to appear
  #   # in SketchUp's Preferences > Extensions list
  #   ext_c = SketchupExtension.new('Stair Tools C', 'StairTools/core.rb')
  #   Sketchup.register_extension(ext_c, false)
  #   
  #   # And this will load the extension.
  #   ext_c.check
  #
  # @return boolean - whether the load succeeded
  #
  # @version SketchUp 8.0 M2
  def check
  end

  # The copyright method returns the copyright string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.copyright = '2008'
  #   copyright = extension.copyright
  #
  # @return copyright - the Extension copyright
  #
  # @version SketchUp 6.0
  def copyright
  end

  # The copyright= method sets the copyright string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.copyright = '2008'
  #   copyright = extension.copyright
  #
  # @param copyright
  #   The copyright to set
  #
  # @return copyright - the new copyright
  #
  # @version SketchUp 6.0
  def copyright=(copyright)
  end

  # The creator method returns the creator string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.creator = 'Trimble Navigation, Inc.'
  #   creator = extension.creator
  #
  # @return creator - the Extension creator
  #
  # @version SketchUp 6.0
  def creator
  end

  # The creator= method sets the creator string which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.creator = 'Trimble Navigation, Inc.'
  #   creator = extension.creator
  #
  # @param creator
  #   The creator to set
  #
  # @return creator - the new creator
  #
  # @version SketchUp 6.0
  def creator=(creator)
  end

  # The description method returns the long description which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.description = 'My description.'
  #   description = extension.description
  #
  # @return description - the Extension description
  #
  # @version SketchUp 6.0
  def description
  end

  # The description= method sets the long description which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.description = 'My description.'
  #   description = extension.description
  #
  # @param description
  #   The description string to set.
  #
  # @return description - the Extension description
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The extension_path method returns the file system path to the extension's
  # outer rb file.
  #
  # @return extension_path - the file system path to the extension
  #
  # @version SketchUp 2013
  def extension_path
  end

  # The id method returns the Extension Warehouse ID string.
  #
  # @return id - the Extension Warehouse ID
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
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   
  #   # Then be sure to register it. By passing a 2nd param of true, you're
  #   # telling SketchUp to load the extension by default.
  #   Sketchup.register_extension(extension, true)
  #
  # @param title
  #   The name of the extension
  #
  # @param path
  #   The relative path to the script that loads your
  #   plugin.
  #
  # @return extension - the new Extension object
  #
  # @version SketchUp 6.0
  def initialize(title, path)
  end

  # Returns whether the extension is set to load when SketchUp starts up.
  #
  # @example 
  #   ext = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   UI.messagebox("load_on_start? is false: #{ext.load_on_start?.to_s}")
  #   Sketchup.register_extension(ext, true)
  #   UI.messagebox("load_on_start? is now true: #{ext.load_on_start?.to_s}")
  #
  # @return boolean - true if the extension loads on startup.
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
  #   ext = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   UI.messagebox("loaded? is false: #{ext.loaded?.to_s}")
  #   Sketchup.register_extension ext, true
  #   UI.messagebox("loaded? is now true: #{ext.loaded?.to_s}")
  #
  # @return boolean - true if the extension has been loaded
  #
  # @return [Boolean] 
  #
  # @version SketchUp 8.0 M2
  def loaded?
  end

  # The name method returns the name which appears for
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   name = extension.name
  #
  # @return name - the Extension name
  #
  # @version SketchUp 6.0
  def name
  end

  # The name= method sets the name which appears for
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.name = 'Renamed Stair Tools'
  #
  # @param name
  #   The new name
  #
  # @return name - the Extension name
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # Returns whether the extension has been registered via
  # Sketchup.register_extension.
  #
  # @example 
  #   ext = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   UI.messagebox("My registered? is false: #{ext.registered?.to_s}")
  #   Sketchup.register_extension(ext, true)
  #   UI.messagebox("Now registered? is now true: #{ext.registered?.to_s}")
  #
  # @return boolean - true if the extension has been registered.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 8.0 M2
  def registered?
  end

  # Unloads the extension. This is the equivalent of unchecking the extension's
  # checkbox in the Preferences > Extensions list.
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
  # @return boolean - whether the unload succeeded
  #
  # @version SketchUp 8.0 M2
  def uncheck
  end

  # The version method returns the version which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.version = '5.0'
  #   version = extension.version
  #
  # @return version - the Extension version
  #
  # @version SketchUp 6.0
  def version
  end

  # The version method sets the version which appears beneath
  # an extension inside the Extensions Manager dialog.
  #
  # @example 
  #   # Create an entry in the Extension list that loads a script called
  #   # core.rb.
  #   extension = SketchupExtension.new('Stair Tools', 'StairTools/core.rb')
  #   extension.version = '5.0'
  #   version = extension.version
  #
  # @param version
  #   The version string to set.
  #
  # @return version - the Extension version
  #
  # @version SketchUp 6.0
  def version=(version)
  end

  # The version_id method returns the Extension Warehouse Version ID string.
  #
  # @return version_id - the Extension Warehouse Version ID string
  #
  # @version SketchUp 2013
  def version_id
  end

end

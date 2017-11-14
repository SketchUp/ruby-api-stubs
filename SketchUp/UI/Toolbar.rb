# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Toolbar class contains methods to create and manipulate SketchUp
# toolbars in Ruby. Toolbars are collections of buttons that you can use
# to activate custom Tools or ruby scripts.
#
# Also see the Command object for details on creating "commands" which
# can be called from your toolbars.
#
# @example
#   toolbar = UI::Toolbar.new "Test"
#   # This toolbar icon simply displays Hello World on the screen
#   cmd = UI::Command.new("Test") {
#     UI.messagebox "Hello World"
#   }
#   cmd.small_icon = "ToolPencilSmall.png"
#   cmd.large_icon = "ToolPencilLarge.png"
#   cmd.tooltip = "Test Toolbars"
#   cmd.status_bar_text = "Testing the toolbars class"
#   cmd.menu_text = "Test"
#   toolbar = toolbar.add_item cmd
#   toolbar.show
#
# @version SketchUp 6.0
class UI::Toolbar

  # Includes

  include Enumerable

  # Class Methods

  # The new method creates a new Toolbar object.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #
  # @param [String] toolbarname
  #   The name for the new toolbar.
  #
  # @return [UI::Toolbar] the newly created toolbar object
  #
  # @version SketchUp 6.0
  def self.new(toolbarname)
  end

  # Instance Methods

  # The add_item method is used to add an item to the toolbar.
  #
  # @example
  #   toolbar = toolbar.add_item command
  #
  # @param [UI::Command] command
  #   A Command object representing the command to add to the
  #   toolbar.
  #
  # @return [UI::Toolbar] the toolbar where the command was just added
  #
  # @version SketchUp 6.0
  def add_item(command)
  end

  # The add_separator method is used to add a line separator to the toolbar.
  #
  # @example
  #   toolbar = toolbar.add_separator
  #
  # @return [UI::Toolbar] the toolbar where the line separator was just added
  #
  # @version SketchUp 6.0
  def add_separator(arg)
  end

  # The {#count} method is inherited from the +Enumerable+ mix-in module.
  #
  # @example
  #   number = toolbar.count
  #
  # @return [Integer]
  #
  # @version SketchUp 2014
  def count
  end

  # The each method is used to iterate through all of the commands
  # attached to a toolbar.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This command displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Test") { UI.messagebox("Hello World") }
  #   toolbar.add_item cmd
  #   toolbar = toolbar.add_separator
  #   cmd = UI::Command.new("Test 2") { UI.messagebox("Hello World 2") }
  #   toolbar.add_item cmd
  #   toolbar.show
  #   toolbar.each { | item |
  #     puts item
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 8.0 M1
  #
  # @yield [key, value] Variables that will hold each key and value as they are
  #   found.
  def each
  end

  # The get_last_state method is used to determine if the toolbar was hidden or
  # visible in the previous session of SketchUp.
  #
  # Valid states are 1 for visible, 0 for hidden, -1 for before never shown.
  #
  # @example
  #   state = toolbar.get_last_state
  #
  # @return [Boolean] the last state of the toolbar (see comments)
  #
  # @version SketchUp 6.0
  def get_last_state
  end

  # The hide method is used to hide the toolbar on the user interface.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This toolbar icon simply displays Hello World on the screen
  #   cmd = UI::Command.new("Test") {
  #     UI.messagebox "Hello World"
  #   }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   cmd.tooltip = "Test Toolbars"
  #   cmd.status_bar_text = "Testing the toolbars class"
  #   cmd.menu_text = "Test"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #   UI.messagebox "Toolbar Showing"
  #   toolbar.hide
  #   UI.messagebox "Toolbar Hidden"
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def hide
  end

  # The {#length} method returns the number of items in the toolbar.
  #
  # @example
  #   number = toolbar.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2014
  def length
  end

  # The name method returns the name of the toolbar.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This command displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Test") { UI.messagebox("Hello World") }
  #   toolbar.add_item cmd
  #   toolbar = toolbar.add_separator
  #   cmd = UI::Command.new("Test 2") { UI.messagebox("Hello World 2") }
  #   puts toolbar.name
  #   toolbar.show
  #
  # @return [String] the name of the toolbar.
  #
  # @version SketchUp 8.0 M1
  def name
  end

  # The restore method is used to reposition the toolbar to its previous
  # location and show if not hidden.
  #
  # @example
  #   toolbar.restore
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def restore
  end

  # The show method is used to display the toolbar in the user interface.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This toolbar icon simply displays Hello World on the screen
  #   cmd = UI::Command.new("Test") {
  #     UI.messagebox "Hello World"
  #   }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   cmd.tooltip = "Test Toolbars"
  #   cmd.status_bar_text = "Testing the toolbars class"
  #   cmd.menu_text = "Test"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def show
  end

  # The {#size} method is an alias of {#length}.
  #
  # @example
  #   number = toolbar.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

  # The visible? method is used to find out if a toolbar is currently visible.
  #
  # @example
  #   visible = toolbar.visible?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def visible?
  end

end

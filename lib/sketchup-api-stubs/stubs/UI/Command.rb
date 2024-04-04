# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Command class is the preferred class for adding tools to the menus and
# Ruby toolbars. For example, you could add a menu item and pass it a code
# block directly, or you could first create a Command.
#
# Using Commands gives you greater control over how the item works in the UI,
# and it allows multiple spots in the UI to call the same code. For example,
# You might want a toolbar button and a context-click menu item to both point
# to the same command, and to control the tooltip and its "graying" from
# a single spot in your code.
#
# @example
#   # You can add menu items as procedure blocks, as shown here, but
#   # you have no control over whether it is grayed out, for example.
#   UI.menu("Draw").add_item("My Procedure") {
#     UI.messagebox("My Procedure")
#   }
#
#   # Better to create a command object.
#   cmd = UI::Command.new("Tester") {
#     UI.messagebox("My Command")
#   }
#   cmd.menu_text = "My Command"
#   cmd.set_validation_proc {
#     if Sketchup.active_model.selection.length == 0
#       MF_GRAYED
#     else
#       MF_ENABLED
#     end
#   }
#   UI.menu("Draw").add_item cmd
#
# @version SketchUp 6.0
class UI::Command

  # Instance Methods

  # The {#extension} method returns the command's associated extension.
  #
  # @example
  #   extension = Sketchup.extensions['Sandbox Tools']
  #   cmd = UI::Command.new("Tester") {}
  #   cmd.extension = extension
  #   p cmd.extension == extension
  #
  # @note This is an advanced feature that extension developers normally won't
  #   have to deal with. It's purpose is to address scenarios when SketchUp
  #   isn't able to automatically infer which extension the command belongs to.
  #
  # @return [SketchupExtension, nil]
  #
  # @version SketchUp 2022.0
  def extension
  end

  # The {#extension=} method explicitly sets the command's associated extension.
  #
  # @example
  #   extension = Sketchup.extensions['Sandbox Tools']
  #   cmd = UI::Command.new("Tester") {}
  #   cmd.extension = extension
  #
  # @note This is an advanced feature that extension developers normally won't
  #   have to deal with. It's purpose is to address scenarios when SketchUp
  #   isn't able to automatically infer which extension the command belongs to.
  #   These scenarios are for example an extension using a library to add its
  #   commands or command manager extensions.
  #
  # @param [SketchupExtension, nil] extension
  #
  # @version SketchUp 2022.0
  def extension=(extension)
  end

  # The {#get_validation_proc} method returns the command's validation proc.
  #
  # @example
  #   cmd = UI::Command.new("Tester") {}
  #   cmd.set_validation_proc { MF_DISABLED }
  #   proc = cmd.get_validation_proc
  #
  # @return [Proc, nil]
  #
  # @see #set_validation_proc
  #
  # @version SketchUp 2022.0
  def get_validation_proc
  end

  # The new method is used to create a new command.
  #
  # @example
  #   UI.menu("Draw").add_separator
  #
  #   # Adds a Test submenu to the Draw menu where the Tester menu item appears
  #   testmenu = UI.menu("Draw").add_submenu("Test")
  #
  #   # This menu item simply displays Hello World on the screen when clicked.
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   testmenu.add_item cmd
  #
  # @note Prior to SketchUp 2019 it was not possible to sub-class {UI::Command}
  #   due to a bug in how SketchUp initialized the class.
  #
  # @param [String] menutext
  #   The text that will appear for this command's menu item
  #   if it appears on a menu.
  #
  # @return [UI::Command] the new Command object
  #
  # @version SketchUp 6.0
  #
  # @yield Code that executes the command when the menu item or
  #   toolbar item is selected.
  def initialize(menutext)
  end

  # The large_icon method returns the icon file for the command's
  # large icon.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This command displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Test") { UI.messagebox("Hello World") }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #   puts cmd.large_icon
  #
  # @return [String] the path to the large icon.
  #
  # @version SketchUp 8.0 M1
  def large_icon
  end

  # The large_icon= method is used to identify the icon file for the command's
  # large icon. large icons should be 32x32 pixel images for best display
  # quality.
  #
  # Since SketchUp 2016 it is possible to provide vector images for the command.
  # SVG format for Windows and PDF format for OS X. Since the vector images scale
  # for both small and large icon sizes, you may choose to use only one vector
  # image for both variants.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This command displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Test") { UI.messagebox("Hello World") }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #
  # @param [String] path
  #   The path to the large icon.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def large_icon=(path)
  end

  # The menu_text method returns the menu item name for the command.
  #
  # @example
  #   add_separator_to_menu("Draw")
  #   # Adds a Test submenu to the Draw menu where the Tester menu item appears
  #   testmenu = UI.menu("Draw").add_submenu("Test")
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   cmd.menu_text = "New String"
  #   testmenu.add_item cmd
  #   puts cmd.menu_text
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def menu_text
  end

  # The menu_text= method is used to set the menu item name for the command.
  #
  # @example
  #   add_separator_to_menu("Draw")
  #   # Adds a Test submenu to the Draw menu where the Tester menu item appears
  #   testmenu = UI.menu("Draw").add_submenu("Test")
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   cmd.menu_text = "New String"
  #   testmenu.add_item cmd
  #
  # @param [String] menuitem
  #   A string representing the menu item for the command.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def menu_text=(menuitem)
  end

  # The {#proc} method returns the command's proc that is called when the command
  # is invoked.
  #
  # @example
  #   cmd = UI::Command.new("Tester") {}
  #   cmd.set_validation_proc { MF_DISABLED }
  #   proc = cmd.proc
  #   proc.call
  #
  # @return [Proc]
  #
  # @version SketchUp 2022.0
  def proc
  end

  # The {#set_validation_proc} method allows you to change whether the command
  # is enabled, checked, etc. For instance, the command toggling a dialog window
  # may be displayed as checked while the dialog is open.
  #
  # @bug On Mac the validation proc isn't called as often as it should. For
  #   instance a selection change doesn't trigger it.
  #
  # @example
  #   # Create a command object.
  #   cmd = UI::Command.new("Tester") {
  #     UI.messagebox("My Command")
  #   }
  #   cmd.menu_text = "My Command"
  #   cmd.set_validation_proc {
  #     if Sketchup.active_model.selection.length == 0
  #       MF_GRAYED
  #     else
  #       MF_ENABLED
  #     end
  #   }
  #   UI.menu("Draw").add_item(cmd)
  #
  # @note Avoid disabling an command as it often isn't obvious to the user why
  #   it is disabled. Prefer keeping the command enabled but show an error
  #   message if pressed when it cannot be used.
  #
  # @return [UI::Command]
  #
  # @see #get_validation_proc
  #
  # @version SketchUp 6.0
  #
  # @yield []
  #
  # @yieldreturn [Integer] +MF_ENABLED+, +MF_DISABLED+, +MF_CHECKED+,
  #   +MF_UNCHECKED+, or +MF_GRAYED+
  def set_validation_proc
  end

  # The small_icon method returns the icon file for the command's
  # small icon.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This toolbar command displays Hello World on the screen when clicked.
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #   puts cmd.small_icon
  #
  # @return [String] the path to the small_icon
  #
  # @version SketchUp 8.0 M1
  def small_icon
  end

  # The small_icon= method is used to identify the icon file for the command's
  # small icon. Small icons should be 24x24 pixel images for best display
  # quality.
  #
  # Since SketchUp 2016 it is possible to provide vector images for the cursors.
  # SVG format for Windows and PDF format for OS X. Since the vector images scale
  # for both small and large icon sizes, you may choose to use only one vector
  # image for both variants.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This toolbar command displays Hello World on the screen when clicked.
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #
  # @param [String] path
  #   A path to the small icon.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def small_icon=(path)
  end

  # The status_bar_text method returns the status bar text for the
  # command.
  #
  # @example
  #   toolbar = UI::Toolbar.new("Test")
  #   # This toolbar tool simply displays Hello World on the screen
  #   # when clicked
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   cmd.status_bar_text = "Testing the toolbars class."
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #   puts cmd.status_bar_text
  #
  # @return [String] the status bar text.
  #
  # @version SketchUp 8.0 M1
  def status_bar_text
  end

  # The status_bar_text= method is used to set the status bar text for the
  # command. This should be a description what the command does.
  #
  # @example
  #   toolbar = UI::Toolbar.new("Test")
  #   # This toolbar tool simply displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Tester") { UI.messagebox("Hello World") }
  #   cmd.small_icon = "ToolPencilSmall.png"
  #   cmd.large_icon = "ToolPencilLarge.png"
  #   cmd.status_bar_text = "Testing the toolbars class."
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #
  # @param [String] text
  #   The text that will appear on the status bar when the
  #   cursor is over the command's menu item.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def status_bar_text=(text)
  end

  # The tooltip method returns command item's tooltip text.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This command displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Test") { UI.messagebox("Hello World") }
  #   cmd.tooltip = "Hello World Tool"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #   puts cmd.tooltip
  #
  # @return [String] the tooltip text
  #
  # @version SketchUp 8.0 M1
  def tooltip
  end

  # The {#tooltip=} method is used to define a command item's tooltip header. Tooltips
  # will appear when the command is attached to a tool bar and the user hovers
  # their cursor over the icon.
  #
  # @example
  #   toolbar = UI::Toolbar.new "Test"
  #   # This command displays Hello World on the screen when clicked
  #   cmd = UI::Command.new("Test") { UI.messagebox("Hello World") }
  #   cmd.tooltip = "Hello World Tool"
  #   toolbar = toolbar.add_item cmd
  #   toolbar.show
  #
  # @note The tooltip text should repeat the commands' title text. For the command
  #   description, use {#status_bar_text}.
  #
  # @param [String] text
  #   The text of the tooltip.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def tooltip=(text)
  end

end

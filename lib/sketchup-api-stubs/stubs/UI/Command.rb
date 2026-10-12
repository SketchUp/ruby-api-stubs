# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The Command class is used to create toolbar buttons and menu entries for invoking your extension.
#
# @example
#   file_extension = Sketchup.platform == :platform_win ? "svg" : "pdf"
#
#   menu = UI.menu("Extensions").add_submenu("My Extension")
#   toolbar = UI::Toolbar.new("My Extension")
#
#   command = UI::Command.new("My Action") do
#     UI.messagebox("Hello World!")
#   end
#   command.menu_text = "My Action"
#   command.tooltip = "My Action"
#   command.status_bar_text = "One sentence explaining what the action does."
#   command.large_icon = "icons/my_action.#{file_extension}"
#
#   # More commands here...
#
#   menu.add_item(command)
#   toolbar.add_item(command)
#   toolbar.show
#
# @version SketchUp 6.0
class UI::Command

  # Instance Methods

  # The {#extension} method returns the command's associated extension.
  #
  # @example
  #   extension = Sketchup.extensions['Sandbox Tools']
  #   command = UI::Command.new("Test") {}
  #   command.extension = extension
  #   command.extension == extension
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
  #   cmd = UI::Command.new("Test") {}
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
  #   command = UI::Command.new("My Action") {}
  #   command.set_validation_proc { MF_CHECKED }
  #   proc = command.get_validation_proc
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
  # @bug Prior to SketchUp 2019 it was not possible to sub-class {UI::Command}
  #   due to a bug in how SketchUp initialized the class.
  #
  # @example
  #   command = UI::Command.new("Example Command") { UI.messagebox("Hello World!") }
  #   UI.menu("Extensions").add_item(command)
  #
  # @param [String] menutext
  #   The text that will appear for this command's menu item
  #   if it appears on a menu.
  #
  # @return [UI::Command]
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
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.large_icon = "icons/my_action.svg"
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
  #   command.large_icon
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def large_icon
  end

  # The large_icon= method is used to set the icon file for the command's
  # large icon. large icons should be 32x32 pixel images for best display
  # quality. Along the edge there should be a 4 px empty margin for the icon to
  # match those of native SketchUp commands.
  #
  # Starting in SketchUp 2016 it is possible to use vector images for better display
  # at varying UI scaling. SVG format for Windows and PDF format for Mac.
  # Since the vector images scale for both small and large icon sizes,
  # you only need to use one.
  #
  # Starting in SketchUp 2027 it is possible to use SVG on both Windows and Mac.
  #
  # @example
  #   file_extension = Sketchup.platform == :platform_win ? "svg" : "pdf"
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.large_icon = "icons/my_action.#{file_extension}"
  #   toolbar = toolbar.add_item(command)
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
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.menu_text = "My Action"
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
  #   command.menu_text
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def menu_text
  end

  # The menu_text= method is used to set the menu item name for the command.
  #
  # @example
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.menu_text = "My Action"
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
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
  #   command = UI::Command.new("Test") { UI.messagebox("Hello World!") }
  #   proc = command.proc
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
  #   menu = UI.menu("Extensions")
  #   command = UI::Command.new("Display Color by Layer") do
  #     rendering_options = Sketchup.active_model.rendering_options
  #     rendering_options["DisplayColorByLayer"] = ! rendering_options["DisplayColorByLayer"]
  #   end
  #   command.set_validation_proc do
  #     rendering_options = Sketchup.active_model.rendering_options
  #     if rendering_options["DisplayColorByLayer"]
  #       MF_CHECKED
  #     else
  #       MF_UNCHECKED
  #     end
  #   end
  #   menu.add_item(command)
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
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.small_icon = "icons/my_action.svg"
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
  #   command.small_icon
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def small_icon
  end

  # The small_icon= method is used to set the icon file for the command's
  # small icon. Small icons should be 24x24 pixel images for best display
  # quality.
  #
  # Starting in SketchUp 2016 it is possible to use vector images for better display
  # at varying UI scaling. SVG format for Windows and PDF format for Mac.
  # Since the vector images scale for both small and large icon sizes,
  # you only need to use one.
  #
  # Starting in SketchUp 2027 it is possible to use SVG on both Windows and Mac.
  #
  # @example
  #   file_extension = Sketchup.platform == :platform_win ? "svg" : "pdf"
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.small_icon = "icons/my_action.#{file_extension}"
  #   toolbar = toolbar.add_item(command)
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

  # The status_bar_text method returns the description of the command.
  #
  # @example
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.status_bar_text = "Show a message that says hello world."
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
  #   command.status_bar_text
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def status_bar_text
  end

  # The status_bar_text= method is used to set the description for the
  # command. This should typically be a one sentence paragraph with a
  # trailing point.
  #
  # @example
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.status_bar_text = "Show a message that says hello world."
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
  #
  # @param [String] text
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def status_bar_text=(text)
  end

  # The tooltip method returns command item's tooltip's header text.
  #
  # @example
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.tooltip = "My Action"
  #   toolbar = toolbar.add_item(command)
  #   toolbar.show
  #   command.tooltip
  #
  # @return [String]
  #
  # @version SketchUp 8.0 M1
  def tooltip
  end

  # The {#tooltip=} method is used to define a command item's tooltip header. Tooltips
  # will appear when the command is attached to a tool bar and the user hovers
  # their cursor over the icon.
  #
  # @example
  #   toolbar = UI::Toolbar.new("My Toolbar")
  #   command = UI::Command.new("My Action") { UI.messagebox("Hello World!") }
  #   command.tooltip = "My Action"
  #   toolbar = toolbar.add_item(command)
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

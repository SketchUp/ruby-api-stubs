# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# An interface to a menu.
#
# @version SketchUp 6.0
class Sketchup::Menu

  # Instance Methods

  # The {#add_item} method is used to add a menu item to the specified menu.
  #
  # This method takes a block that defines the action to perform when the menu
  # item is selected.
  #
  # The item id that is returned can be used when adding an optional
  # validation procedure for the menu item.
  #
  # @example
  #   menu = UI.menu('Plugins')
  #   menu.add_item("Test") { puts 'Hello World' }
  #
  # @overload add_item(title, &block)
  #
  #   @param [String] title
  #   @yield  A block that will be invoked when the menu item is selected.
  #   @return [Integer] A unique integer id for the added menu item.
  #
  # @overload add_item(command)
  #
  #   @param [UI::Command] command
  #   @return [Integer] A unique integer id for the added menu item.
  #
  # @version SketchUp 6.0
  def add_item(*args)
  end

  # The {#add_separator} method is used to add a menu separator to a menu.
  #
  # @example
  #   plugins_menu = UI.menu("Plugins")
  #   plugins_menu.add_separator
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def add_separator
  end

  # The {#add_submenu} method is used to add a sub-menu to a menu.
  #
  # @example
  #   plugins_menu = UI.menu("Plugins")
  #   submenu = plugins_menu.add_submenu("Test")
  #   submenu.add_item("Hello World") {
  #     UI.messagebox("Hi there!")
  #   }
  #
  # @param [String] title
  #   The title of the sub menu.
  #
  # @return [Sketchup::Menu] a Menu object
  #
  # @version SketchUp 6.0
  def add_submenu(title)
  end

  # The {#set_validation_proc} method is used to specify the menu validation
  # procedure. Your procedure should return either MF_ENABLED, MF_DISABLED,
  # MF_CHECKED, MF_UNCHECKED, or MF_GRAYED.
  #
  # @example
  #   plugins_menu = UI.menu("Plugins")
  #   item = plugins_menu.add_item("Test") { UI.messagebox "My Test Item"}
  #   status = plugins_menu.set_validation_proc(item)  {
  #     if Sketchup.is_pro?
  #       MF_ENABLED
  #     else
  #       MF_GRAYED
  #     end
  #   }
  #
  # @param [Integer] item
  #   The numerical identifier for the menu item.
  #
  # @version SketchUp 6.0
  #
  # @yield A method that will be invoked when the menu item is
  #   selected.
  def set_validation_proc(item, &block)
  end

end

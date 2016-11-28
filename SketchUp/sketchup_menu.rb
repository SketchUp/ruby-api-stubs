# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::Menu

  # Instance Methods

  # The add_item menu item is used to add a menu item to the specified menu.
  # 
  # This method takes a block that defines the action to perform when the menu
  # item is selected.
  # 
  # The item id that is returned can be used when adding an optional
  # validation procedure for the menu item.
  #
  # @example 
  #   plugins_menu = UI.menu("Plugins")
  #   item = plugins_menu.add_item("Test") { test }
  #   if (item)
  #     UI.messagebox item
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param menu
  #   A string name of the menu to add.
  #
  # @return item_id - a unique integer id for the added menu item.
  #
  # @version SketchUp 6.0
  #
  # @yield A method that will be invoked when the menu item is
  #   selected.
  def add_item(menu, &block)
  end

  # The add_separator method is used to add a menu separator to a menu.
  #
  # @example 
  #   plugins_menu = UI.menu("Plugins")
  #   plugins_menu.add_separator
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def add_separator
  end

  # The add_submenu method is used to add a sub-menu to a menu.
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
  # @return submenu - a Menu object
  #
  # @version SketchUp 6.0
  def add_submenu(title)
  end

  # The set_validation_proc method is used to identify the menu validation
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
  # @param menu
  #   A string name of the menu to add.
  #
  # @return item_id - a unique numerical item id for the menu
  #
  # @version SketchUp 6.0
  #
  # @yield A method that will be invoked when the menu item is
  #   selected.
  def set_validation_proc(menu, &block)
  end

end

# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# {UI::Notification} objects allows you to show native notifications in the
# desktop. Notifications can have a message, icon and accept and/or dismiss
# buttons with callback blocks.
#
# @example
#   # For consistency, the accept (yes) and the dismiss (no) buttons
#   # are always displayed in the same order.
#   message = "A new version of pizza is available. Install now?"
#   @notification = UI::Notification.new(sketchup_extension, message)
#   @notification.on_accept("Pizza!") { puts "Pizza" }
#   @notification.on_dismiss("No thanks") { puts "No pizza" }
#   @notification.show
#
#   # The two options are however not treated differently by SketchUp and can
#   # also be used for questions with no strict yes/no answer.
#   message = "Pizza clashes with health. Select which one to keep."
#   @notification = UI::Notification.new(sketchup_extension, message)
#   @notification.on_accept("Pizza") { puts "Pizza" }
#   @notification.on_dismiss("Health") { puts "Salad" }
#   @notification.show
#
# @version SketchUp 2017
class UI::Notification

  # Instance Methods

  # Gets the icon name, this is the path that will be used to get the icon from
  # the file system path.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world", "/path/to/icon",
  #       "Icon Tooltip")
  #   puts "Icon Name: #{@notification.icon_name}"
  #   @notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def icon_name
  end

  # Sets the icon path, this icon will be loaded from the path give, the path
  # has to be a local filesystem path.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.icon_name = "/path/to/icon"
  #   @notification.show
  #
  # @param [String] icon_name
  #   String providing the icon filesystem path.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def icon_name=(icon_name)
  end

  # Gets the icon Tooltip, this is the string that appear when the mouse is over
  # the icon.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world", "/path/to/icon",
  #       "Icon Tooltip")
  #   puts "Tooltip: #{@notification.icon_tooltip}"
  #   @notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def icon_tooltip
  end

  # Sets the icon Tooltip, this string will appear when the mouse is over the
  # icon.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.icon_tooltip = "icon Tooltip"
  #   @notification.show
  #
  # @param [String] icon_tooltip
  #   String providing the new icon Tooltip.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def icon_tooltip=(icon_tooltip)
  end

  # Creates a new {UI::Notification} object.
  #
  # @bug Prior to SketchUp 2018 messages could only be 3 lines long on Windows
  #   and 2 lines on Mac. Now the notification expands to fit its content.
  #
  # @bug Prior to SketchUp 2021.1 SketchUp could crash if the {UI::Notification} object is garbaged
  #   collected while it has notifications displayed on the screen. This could happen if the
  #   {UI::Notification} object was assigned to a local variable. The local variable would go out of
  #   scope and the garbage collector might collect it before the callbacks are invoked.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world", "/path/to/icon",
  #       "Icon Tooltip")
  #   @notification.show
  #
  # @note In order to insert line breaks into the message you need to use +\\r\\n+.
  #
  # @param [SketchupExtension] sketchup_extension
  #   {SketchupExtension} instance used to identify
  #   the source of the notification.
  #
  # @param [String] message
  #   Message to display.
  #
  # @param [String] icon_name
  #   Path to an icon to display along with the message.
  #
  # @param [String] icon_tooltip
  #   Tooltip for the icon.
  #
  # @return [UI::Notification]
  #
  # @version SketchUp 2017
  def initialize(sketchup_extension, message = nil, icon_name = nil, icon_tooltip = nil)
  end

  # Gets the message as string.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension)
  #   puts "This is the current message: #{@notification.message}"
  #   @notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def message
  end

  # Sets a new message. Notifications are meant for quick and brief messages.
  # These message disappear automatically after a short while if they are not
  # interacted with.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension)
  #   @notification.message = "Hello world"
  #   @notification.show
  #
  # @note In order to insert line breaks into the message you need to use +\\r\\n+.
  #
  # @param [String] message
  #   String providing the new message.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def message=(message)
  end

  # Shows a button in the notification with the given title and callback block,
  # both arguments are required.
  #
  # @bug Prior to SketchUp 2019 both the accept and dismiss buttons were
  #   displayed, even if only one had been implemented.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.on_accept("Accept")  do |notification, title|
  #      puts "The user pressed [#{title}] with message #{notification.message}"
  #   end
  #   @notification.show
  #
  # @param [String] title
  #   Sets the title of the button.
  #
  # @param [Proc] block
  #   Sets the action callback, this will be called when
  #   the user clicks on the dismiss button.
  #
  # @raise [RuntimeError] When calling on_accept when the notification has
  #   already been shown.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def on_accept(title, block)
  end

  # Returns the accept's button title.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.on_accept("Accept")  do |notification, title|
  #      puts "The user pressed #{notification.on_accept_title}"
  #   end
  #   @notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def on_accept_title
  end

  # Shows a button in the notification with the given title and callback block.
  # Both arguments are required. This callback is only called if you press the
  # Dismiss button, not when the time runs out and the notification automatically
  # disappears.
  #
  # @bug Prior to SketchUp 2019 both the accept and dismiss buttons were
  #   displayed, even if only one had been implemented.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.on_dismiss("Close")  do |notification, title|
  #      puts "The user pressed [#{title}] with message #{notification.message}"
  #   end
  #   @notification.show
  #
  # @param [String] title
  #   Sets the title of the button.
  #
  # @param [Proc] block
  #   Sets the action callback, this will be called when
  #   the user clicks on the dismiss button.
  #
  # @raise [RuntimeError] When calling on_dismiss when the notification has
  #   already been shown.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def on_dismiss(title, block)
  end

  # Returns the dismiss's button title.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.on_dismiss("Close")  do |notification, title|
  #      puts "The user pressed #{notification.on_dismiss_title}"
  #   end
  #   @notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def on_dismiss_title
  end

  # Shows the notification. If not interacted with, the notification will
  # disappear without calling any callbacks.
  #
  # @bug If assigned to a local variable SketchUp might crash prior to SketchUp 2021.1.
  #   See {#initialize} for more details.
  #
  # @example
  #   @notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   @notification.show
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def show
  end

end

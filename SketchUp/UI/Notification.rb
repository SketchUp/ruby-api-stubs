# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# UI::Notification objects allows you to show native notifications in the
# desktop, they are positioned in the top right of your screen, they can be
# customized to have a message, icon and accept and/or dismiss buttons with
# callback blocks.
#
# @version SketchUp 2017
class UI::Notification

  # Instance Methods

  # Gets the icon name, this is the path that will be used to get the icon from
  # the file system path.
  #
  # @example
  #   notification = UI::Notification.new(sketchup_extension, "Hello world", "/path/to/icon", "icon Tooltip")
  #   puts "Icon Name: #{notification.icon_name}"
  #   notification.show
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
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.icon_name = "/path/to/icon"
  #   notification.show
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
  #   notification = UI::Notification.new(sketchup_extension, "Hello world", "/path/to/icon", "icon Tooltip")
  #   puts "Tooltip: " notification.icon_tooltip
  #   notification.show
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
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.icon_tooltip = "icon Tooltip"
  #   notification.show
  #
  # @param [String] icon_tooltip
  #   String providing the new icon Tooltip.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def icon_tooltip=(icon_tooltip)
  end

  # The new method is used to create a new {UI::Notification}.
  #
  # In order to insert line breaks into the message you need to use +\\r\\n+.
  #
  # @example
  #   notification = UI::Notification.new(sketchup_extension, "Hello world", "/path/to/icon", "icon Tooltip")
  #   notification.show
  #
  # @param [String] icon_tooltip
  #   Optionally set an image tooltip.
  #
  # @param [String] icon_name
  #   Optionally set a path to an image.
  #
  # @param [String] message
  #   Optionally assign the message.
  #
  # @param [SketchupExtension] sketchup_extension
  #   Required sketchup_extension
  #   to identify the sender.
  #
  # @return [UI::Notification]
  #
  # @version SketchUp 2017
  def initialize(sketchup_extension, message, icon_name, icon_tooltip)
  end

  # Gets the message as string.
  #
  # @example
  #   notification = UI::Notification.new(sketchup_extension)
  #   puts "This is the current message: #{notification.message}"
  #   notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def message
  end

  # Sets a new message, notifications are meant for quick & brief messages,
  # remember that they are dismissed automatically.
  #
  # @example
  #   notification = UI::Notification.new(sketchup_extension)
  #   notification.message = "Hello world"
  #   notification.show
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
  # @example
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.on_accept("Accept")  do |notification, title|
  #      puts "The user pressed [#{title}] with message #{notification.message}"
  #   end
  #   notification.show
  #
  # @param [String] title
  #   Sets the title of the button.
  #
  # @param [Block] block
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
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.on_accept("Accept")  do |notification, title|
  #      puts "The user pressed #{notification.on_accept_title}"
  #   end
  #   notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def on_accept_title
  end

  # Shows a button in the notification with the given title and callback block,
  # both arguments are required.
  #
  # @example
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.on_dismiss("Close")  do |notification, title|
  #      puts "The user pressed [#{title}] with message #{notification.message}"
  #   end
  #   notification.show
  #
  # @param [String] title
  #   Sets the title of the button.
  #
  # @param [Block] block
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
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.on_dismiss("Close")  do |notification, title|
  #      puts "The user pressed #{notification.on_dismiss_title}"
  #   end
  #   notification.show
  #
  # @return [String]
  #
  # @version SketchUp 2017
  def on_dismiss_title
  end

  # Shows the notification in the top right of the screen, the notifications will
  # be ordered from top to bottom if multiple notifications are shown, it will
  # automatically be dismissed if no action is taken.
  #
  # @example
  #   notification = UI::Notification.new(sketchup_extension, "Hello world")
  #   notification.show
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def show
  end

end

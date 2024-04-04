# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Ruby HtmlDialog class allows you to create and interact with HTML dialog
# boxes from Ruby. This is the best way to generate complex, embedded UIs
# inside SketchUp, but it does generally require HTML and JavaScript expertise.
#
# If your goal is to simple display a website to your users, consider using
# {UI#openURL}, which will show them a web page in their default browser rather
# than inside a dialog in SketchUp.
#
# The left, top, width, height etc. dimensions of the dialog are in logical
# units. This means you provide the units as if they where on a monitor with
# "normal" DPI. The units given will be multiplied by the same factor as
# returned by {UI.scale_factor}.
#
# For usage examples, including how to migrate from the old WebDialog class,
# see https://github.com/SketchUp/htmldialog-examples.
# You may use the {https://sketchup.github.io/modus-for-sketchup-extensions Trimble Modus}
# framework for a look and feel of your dialog that matches that of SketchUp's dialogs.
#
# HtmlDialog uses the following versions of CEF (Chromium Embedded Framework):
#
# [SketchUp 2024.0]
#   CEF 112
# [SketchUp 2021.1]
#   CEF 88
# [SketchUp 2019.0]
#   CEF 64
# [SketchUp 2018.0]
#   CEF 56
# [SketchUp 2017.0]
#   CEF 52
#
# @note The window size is not guaranteed to be pixel perfect in all SketchUp
#   versions and operating systems. Prefer responsive designs that can take
#   up some fluctuations in size.
#
# @version SketchUp 2017
class UI::HtmlDialog

  # Constants

  CEF_VERSION = nil # Stub value.

  CHROME_VERSION = nil # Stub value.

  STYLE_DIALOG = nil # Stub value.
  STYLE_UTILITY = nil # Stub value.
  STYLE_WINDOW = nil # Stub value.

  # Instance Methods

  # The {#add_action_callback} method establishes a Ruby callback method that your
  # html dialog can call to perform some function.
  #
  # Use the +sketchup.callback_method_name+ to invoke the callback method from your
  # html dialog. Your JavaScript in the html dialog will invoke the callback with
  # the same number of arguments.
  #
  # The call is asynchronous. JavaScript call might return before Ruby callback
  # even called. Use +onCompleted+ callback to get notified for completion.
  #
  # Basic types such as booleans, numbers, strings, arrays and hashes are
  # automatically converted between Ruby and JavaScript.
  #
  # @example Ruby Code
  #   dialog.add_action_callback("say") { |action_context, param1, param2|
  #     puts "JavaScript said #{param1} and #{param2}"
  #   }
  #
  # @example JavaScript
  #   sketchup.say('Hello World', 42);
  #
  # @example JavaScript with callback
  #   sketchup.say('Hello World', 42, {
  #     onCompleted: function() {
  #       console.log('Ruby side done.');
  #     }
  #   });
  #
  # @note When an HtmlDialog is closed, all callbacks to that instance are
  #   cleared. Re-attach them if you need to open the dialog again.
  #
  # @param [String] callback_name
  #   The name of the callback method to be invoked from the html dialog.
  #
  # @return [Boolean] +true+ if action added successfully, +false+ otherwise.
  #
  # @version SketchUp 2017
  #
  # @yield [action_context, *args]
  #
  # @yieldparam [Object] action_context
  #   Currently unused.
  #
  # @yieldparam [Array<Object>] args
  #   The parameters sent from JavaScript.
  def add_action_callback(callback_name)
  end

  # The {#bring_to_front} method is used to bring the window to the front,
  # putting it on top of other windows even if its minimized.
  #
  # @bug Prior to SketchUp 2021.1, on Mac, the focus the was not being set
  #   on the {UI::HtmlDialog}.
  #
  # @example
  #   dialog.bring_to_front
  #
  # @return [nil]
  #
  # @see Sketchup.focus
  #
  # @version SketchUp 2017
  def bring_to_front
  end

  # The {#center} method is used to center the HtmlDialog relative to the active
  # model window. If there is no active model window, this function doesn't do
  # anything.
  #
  # @example
  #   dialog.center
  #
  # @return [true] This always return true, never false.
  #
  # @version SketchUp 2017
  def center
  end

  # The {#close} method is used to close a dialog box.
  #
  # @example
  #   dialog.close
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def close
  end

  # The {#execute_script} method is used to execute a JavaScript string on the
  # html dialog asynchronously.
  #
  # @example
  #   js_command = "document.getElementById('id').innerHTML = '<b>Hi!</b>'"
  #   dialog.execute_script(js_command)
  #
  # @param [String] script
  #   The JavaScript script to execute on the HtmlDialog.
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def execute_script(script)
  end

  # The {#get_content_size} method is used to get the content size of the HtmlDialog, in logical
  # pixels.
  #
  # @example
  #   width, height = dialog.get_content_size
  #
  # @return [Array(Integer, Integer), nil] Content width and height of the HtmlDialog.
  #   A nil value is returned if the HtmlDialog
  #   is not visible.
  #
  # @version SketchUp 2021.1
  def get_content_size
  end

  # The {#get_position} method is used to get the position of the HtmlDialog
  # relative to the screen, in logical pixels.
  #
  # @example
  #   left, top = dialog.get_position
  #
  # @return [Array(Integer, Integer), nil] Left and top position of the dialog.
  #   A nil value is returned if the HtmlDialog
  #   is not visible.
  #
  # @version SketchUp 2021.1
  def get_position
  end

  # The {#get_size} method is used to get the outer frame size of the HtmlDialog, in logical pixels.
  #
  # @example
  #   width, height = dialog.get_size
  #
  # @return [Array(Integer, Integer), nil] Outer frame width and height of the HtmlDialog.
  #   A nil value is returned if the HtmlDialog
  #   is not visible.
  #
  # @version SketchUp 2021.1
  def get_size
  end

  # The new method is used to create a new HtmlDialog.
  #
  # In SketchUp 2021.1 +use_content_size+ was added.
  # When set to +true+, +width+, +height+, +min_width+,
  # +max width+, +min_height+, +max_height+ will represent the size of the
  # content area of the window. This excludes the titlebar and the window frame.
  # When +use_content_size+ is set to +false+ (the default value),
  # the size dimensions will represent the outer frame size.
  #
  # The +properties+ hash accepts an optional key +style+ where the value is
  # one of:
  #
  # [+UI::HtmlDialog::STYLE_DIALOG+]   HtmlDialog stays at the top of SketchUp.
  #
  # [+UI::HtmlDialog::STYLE_WINDOW+]   HtmlDialog can go behind SketchUp and
  #                                    doesn't disappear when SketchUp looses
  #                                    focus.
  #
  # [+UI::HtmlDialog::STYLE_UTILITY+]  HtmlDialog is shown with small titlebar
  #                                    and stays on top of SketchUp.
  #
  # @bug Prior to SketchUp 2019 the +:width+ and +:height+ provided is ignored
  #   if a +:preference_key+ is also present. To work around this bug on older
  #   versions use {#set_size} after you initialize the dialog.
  #
  # @bug SketchUp 2022.0 fixed a bug where position was set incorrectly when
  #   +use_content_size+ was set to +true+.
  #
  # @bug SketchUp 2022.0 fixed a bug where +max_height+ and +max_width+ were swapped
  #   when +use_content_size+ was set to +true+.
  #
  # @bug SketchUp 2022.0 fixed a bug where +use_content_size+ was not persisted (when
  #   +preferences_key+ is set).
  #
  # @bug SketchUp 2022.0 fixed a bug on Mac where size and position of the
  #   HtmlDialog were not persisted when SketchUp was closed without first
  #   closing the HtmlDialog window.
  #
  # @bug SketchUp 2023.0 introduced a bug where the position given in {#initialize}
  #   is set relative to the SketchUp main window. If you rely on the position to be
  #   absolute to the screen then you can use {#set_position} after creating the
  #   dialog.
  #
  # @example With options Hash
  #   dialog = UI::HtmlDialog.new(
  #   {
  #     :dialog_title => "Dialog Example",
  #     :preferences_key => "com.sample.plugin",
  #     :scrollable => true,
  #     :resizable => true,
  #     :width => 600,
  #     :height => 400,
  #     :left => 100,
  #     :top => 100,
  #     :min_width => 50,
  #     :min_height => 50,
  #     :max_width =>1000,
  #     :max_height => 1000,
  #     :style => UI::HtmlDialog::STYLE_DIALOG
  #   })
  #   dialog.set_url("http://www.sketchup.com")
  #   dialog.show
  #
  # @example With keyword style argument
  #   dialog = UI::HtmlDialog.new(
  #     dialog_title: "Dialog Example",
  #     preferences_key: "my_name_my_extension_my_dialog",
  #     scrollable: true,
  #     resizable: true,
  #     width: 600,
  #     height: 400,
  #     left: 100,
  #     top: 100,
  #     min_width: 50,
  #     min_height: 50,
  #     max_width: 1000,
  #     max_height: 1000,
  #     style: UI::HtmlDialog::STYLE_DIALOG
  #   )
  #   dialog.set_url("https://www.sketchup.com")
  #   dialog.show
  #
  # @note Prefix +preference_key+ with something unique to your extension.
  #
  # @note If there is no reference kept to the HtmlDialog object, the window
  #   will close once the garbage collection runs. This behavior can be confusing
  #   in trivial test code but is usually not a concern in real life scenarios.
  #   Typically a persistent reference, e.g. an instance variable, should be kept
  #   to bring the dialog to front, rather than creating a duplicate, if the user
  #   should request it a second time.
  #
  # @option properties [String] :dialog_title
  #
  # @option properties [String] :preferences_key
  #
  # @option properties [Boolean] :scrollable
  #
  # @option properties [Boolean] :resizable (true)
  #
  # @option properties [Boolean] :use_content_size (false)
  #
  # @option properties [Integer] :width (250)
  #
  # @option properties [Integer] :height (250)
  #
  # @option properties [Integer] :left (0)
  #
  # @option properties [Integer] :top (0)
  #
  # @option properties [Integer] :min_width (0)
  #
  # @option properties [Integer] :min_height (0)
  #
  # @option properties [Integer] :max_width (-1)
  #
  # @option properties [Integer] :max_height (-1)
  #
  # @option properties [Integer] :style (UI::HtmlDialog::STYLE_DIALOG)
  #
  # @param [Hash] properties
  #   A hash containing the initial properties of
  #   the newly created dialog.
  #
  # @return [UI::HtmlDialog]
  #
  # @version SketchUp 2017
  def initialize(properties)
  end

  # The {#set_can_close} method is used to attach a block that is executed just
  # before closing, this block has to return a boolean, if the block returns
  # false the close will be canceled.
  #
  # @example
  #   dialog.set_can_close { false }
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  #
  # @yieldreturn [Boolean] Return a boolean to indicate if the dialogs should
  #   close.
  def set_can_close
  end

  # The {#set_content_size} method is used to set the content size of the HtmlDialog, in logical
  # pixels.
  #
  # @example
  #   dialog.set_content_size(600, 400)
  #
  # @param [Integer] width
  #   Content width of the HtmlDialog.
  #
  # @param [Integer] height
  #   Content height of the HtmlDialog.
  #
  # @return [nil]
  #
  # @version SketchUp 2021.1
  def set_content_size(width, height)
  end

  # The {#set_file} method is used to identify a local HTML file to display in the
  # HtmlDialog.
  #
  # @example
  #   dialog.set_file("c:/mypage.html")
  #
  # @param [String] filename
  #   The filename for the HtmlDialog file (HTML file)
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def set_file(filename)
  end

  # The {#set_html} method is used to load a HtmlDialog with a string of provided
  # HTML.
  #
  # @example
  #   html = '<b>Hello world!</b>'
  #   dialog.set_html(html)
  #
  # @param [String] html_string
  #   A string of valid html to display in your
  #   HtmlDialog.
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def set_html(html_string)
  end

  # The {#set_on_closed} method is used to attach a block that will be
  # executed when a dialog is already in the process of closing, do any last
  # minute operations within this block such as saving the current state.
  #
  # @example
  #   dialog.set_on_closed { save_selection }
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def set_on_closed
  end

  # The {#set_position} method is used to set the position of the HtmlDialog
  # relative to the screen, in pixels.
  #
  # @bug Prior to SketchUp 2021.1, on Windows, calling this method incorrectly
  #   set the focus on the {UI::HtmlDialog}.
  #
  # @example
  #   dialog.set_position(100, 50)
  #
  # @param [Integer] left
  #   The number of pixels from the left.
  #
  # @param [Integer] top
  #   The number of pixels from the top of the screen.
  #
  # @return [true] This always return true, never false.
  #
  # @version SketchUp 2017
  def set_position(left, top)
  end

  # The {#set_size} method is used to set the outer frame size of the HtmlDialog, in pixels.
  #
  # @bug Prior to SketchUp 2021.1, on Windows, calling this method incorrectly
  #   set the focus on the {UI::HtmlDialog}.
  #
  # @example
  #   dialog.set_size(320, 240)
  #
  # @param [Integer] width
  #   Outer frame width of the HtmlDialog.
  #
  # @param [Integer] height
  #   Outer frame height of the HtmlDialog.
  #
  # @return [true] This always return true, never false.
  #
  # @version SketchUp 2017
  def set_size(width, height)
  end

  # The {#set_url} method is used to load a HtmlDialog with the content at a
  # specific URL. This method allows you to load web sites in a HtmlDialog.
  #
  # @example
  #   dialog.set_url("https://www.sketchup.com")
  #
  # @param [String] url
  #   The URL for a specific web site.
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def set_url(url)
  end

  # The {#show} method is used to display a non-modal dialog box.
  #
  # @example
  #   dialog.show
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def show
  end

  # The {#show_modal} method is used to display a modal dialog box.
  #
  # @example
  #   dialog.show_modal
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  def show_modal
  end

  # The {#visible?} method is useful to tell if the dialog is shown and still
  # alive, if the dialog is minimized or not visible on the screen this will
  # still return +true+.
  #
  # @example
  #   if dialog.visible?
  #     dialog.bring_to_front
  #   else
  #     dialog = UI::HtmlDialog.new
  #     dialog.set_url("https://www.sketchup.com")
  #     dialog.show
  #   end
  #
  # @return [Boolean] Returns true if the dialog is open.
  #
  # @version SketchUp 2017
  def visible?
  end

end

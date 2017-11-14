# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Ruby HtmlDialog class allows you to create and interact with HTML dialog
# boxes from Ruby. This is the best way to generate complex, embedded UIs
# inside SketchUp, but it does generally require HTML and JavaScript expertise.
#
# If your goal is to simple display a website to your users, consider using
# {UI#openURL}, which will show them a web page in their default browser rather
# than inside a dialog in SketchUp.
#
# @version SketchUp 2017
class UI::HtmlDialog

  # Constants

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
  # @example Ruby Code
  #   dialog.add_action_callback("say") { |action_context, param1, param2|
  #     puts "JavaScript said #{param1} and #{param2}"
  #   }
  #
  # @note When an HtmlDialog is closed, all callbacks to that instance are
  #   cleared. Re-attach them if you need to open the dialog again.
  #
  # @param [String] callback_name
  #   The name of the callback method to be
  #   invoked from the html dialog.
  #
  # @return [Boolean] true if action added successfully, false
  #   otherwise.
  #
  # @version SketchUp 2017
  #
  # @yield [action_context, ...]
  #
  # @yieldparam [Object] ...
  #   The parameters sent from JavaScript.
  #
  # @yieldparam [Object] action_context
  #   action_context  Currently unused.
  def add_action_callback(callback_name)
  end

  # The {#bring_to_front} method is used to bring the window to the front,
  # putting it on top of other windows even if its minimized.
  #
  # @example
  #   dialog.bring_to_front
  #
  # @return [nil]
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
  # @return [true]
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

  # The new method is used to create a new HtmlDialog.
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
  # @example
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
  # @option properties [Integer] :width (250)
  #
  # @option properties [Integer] :max_height (-1)
  #
  # @option properties [String] :dialog_title
  #
  # @option properties [String] :preferences_key
  #
  # @option properties [Boolean] :scrollable
  #
  # @option properties [Boolean] :resizable (true)
  #
  # @option properties [Integer] :height (250)
  #
  # @option properties [Integer] :max_width (-1)
  #
  # @option properties [Integer] :left (0)
  #
  # @option properties [Integer] :top (0)
  #
  # @option properties [Integer] :min_width (0)
  #
  # @option properties [Integer] :min_height (0)
  #
  # @option properties [Integer] :style (UI::HtmlDialog::STYLE_DIALOG)
  #
  # @param [Hash] properties
  #   A hash containing the initial properties of
  #   the newly created dialog.
  #
  # @return [HtmlDialog]
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
  # @example
  #   dialog.set_position(100, 50)
  #
  # @param [Integer] left
  #   The number of pixels from the left.
  #
  # @param [Integer] top
  #   The number of pixels from the top of the screen.
  #
  # @return [true]
  #
  # @version SketchUp 2017
  def set_position(left, top)
  end

  # The {#set_size} method is used to set the size of the HtmlDialog, in pixels.
  #
  # @example
  #   dialog.set_size(320, 240)
  #
  # @param [Integer] width
  #   Width of the HtmlDialog.
  #
  # @param [Integer] height
  #   Height of the HtmlDialog.
  #
  # @return [true]
  #
  # @version SketchUp 2017
  def set_size(width, height)
  end

  # The {#set_url} method is used to load a HtmlDialog with the content at a
  # specific URL. This method allows you to load web sites in a HtmlDialog.
  #
  # @example
  #   dialog.set_url("http://www.sketchup.com")
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
  #     dialog.set_url("http://www.sketchup.com")
  #     dialog.show
  #   end
  #
  # @return [Boolean] Returns true if the dialog is open.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def visible?
  end

end

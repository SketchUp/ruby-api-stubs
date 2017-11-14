# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Ruby WebDialog class allows you to create and interact with DHTML dialog
# boxes from Ruby.
#
# If your goal is to simply display a website to your users, consider using
# UI.getURL, which will show them a web page in their default browser rather
# than inside a dialog in SketchUp.
#
# See this blog post for a detailed, step-by-step example:
# http://sketchupapi.blogspot.com/2008/02/sharing-data-between-sketchup-ruby-and.html
#
# Under Windows the IE render mode is different in webdialogs than from what
# you see in the normal browser. It will by default pick an older render mode
# and different versions of SketchUp will use different modes. In order to
# reliably control the render mode of your webdialogs under Windows you need to
# insert a special META compatibility tag:
#
#   // To always force the latest version available:
#   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
#
#   // To lock to a specific IE version:
#   <meta http-equiv="X-UA-Compatible" content="IE=8"/>
#
# Starting with SketchUp 2013, you can embed a special HTML link in your dialog
# that will launch Extension Warehouse and show a specified extension's page.
# This can be useful if your extension has a dependency on another one and you
# would like to direct the user to install that extension.
#
# For example, to launch an extension's page whose URL is:
# http://extensions.sketchup.com/en/content/advanced-camera-tools
# The link would be:
#
# @deprecated Please use {UI::HtmlDialog} that was introduced in
#   SketchUp 2017.
#
# @example
#   <a href="skp:launchEW@advanced-camera-tools">Get Advanced Camera Tools</a>
#
# @version SketchUp 6.0
class UI::WebDialog

  # Instance Methods

  # The add_action_callback method establishes a Ruby callback method that your
  # web dialog can call to perform some function.
  #
  # Use the skp:callback_method_name to invoke the callback method from your
  # webdialog. Your JavaScript in the webdialog will invoke the callback method
  # with a string representing arguments to the callback method.
  #
  # Note that you're sending data down to Ruby as a single string that's
  # passed via the window.location bar. In Internet Explorer on PC, there is
  # a length limit of 2038 characters for this bar, so if you're
  # needing to pass large data down you might consider using get_element_value
  # to pull in a longer string from a hidden input field in the HTML.
  #
  # @example
  #   # In Ruby code...
  #   dlg.add_action_callback("ruby_messagebox") {|dialog, params|
  #     UI.messagebox("You called ruby_messagebox with: " + params.to_s)
  #   }
  #
  #   # JavaScript inside the page loaded into the WebDialog:
  #   # window.location = 'skp:ruby_messagebox@Hello World';
  #
  # @param callback_name
  #   The name of the callback method to be invoked from the
  #   webdialog.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  #
  # @yield [dialog, params]
  #
  # @yieldparam params
  #   Any parameters passed to the dialog from HTML.
  #   This is passed as a single string.
  #
  # @yieldparam dialog
  #   The dialog.
  def add_action_callback(callback_name)
  end

  # By default, actions are only allowed on the host where the webdialog is
  # displayed. The allow_actions_from_host method is used to selectively allow
  # actions to take place on a host remote from the host where the webdialog
  # exists. If the webdialog is local, no remote host is allowed unless you use
  # this method.
  #
  # @example
  #   dialog.allow_actions_from_host("sketchup.com")
  #
  # @param [String] hostname
  #   The name (domain) of the host that your webdialog can
  #   access safely.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def allow_actions_from_host(hostname)
  end

  # The bring_to_front method is used to bring the webdialog to the front of all
  # the windows on the desktop. See show_modal for how to ensure that your
  # WedDialogs are on top.
  #
  # @example
  #   dialog.bring_to_front
  #
  # @return [UI::WebDialog]
  #
  # @version SketchUp 6.0
  def bring_to_front
  end

  # The close method is used to close the webdialog.
  #
  # @example
  #   dialog.close
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def close
  end

  # The execute_script method is used to execute a JavaScript string on the web
  # dialog.
  #
  # @example
  #   js_command = "document.getElementById('id').innerHTML = '<b>Hi!</b>'"
  #   dialog.execute_script(js_command)
  #
  # @param [String] script
  #   The JavaScript script to execute on the webdialog.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def execute_script(script)
  end

  # The get_default_dialog_color method is used to get the default dialog color
  # for the web dialog.
  #
  # @example
  #   dialog.get_default_dialog_color
  #   #ece9d8
  #
  # @return [String] a six digit hexidecimal number representing the color
  #
  # @version SketchUp 6.0
  def get_default_dialog_color
  end

  # The get_element_value method is used to get a value, with a given
  # element_id, from the web dialog's DOM.
  #
  # @example
  #   # In Ruby code:
  #   dialog.get_element_value("myTextInput")
  #
  #   # In webdialog's HTML:
  #   <input type="text" id="myTextInput" value="hello">
  #
  # @param [String] element_id
  #   The name of the element in your HTML code.
  #
  # @return [String] a string containing the retrieved value.
  #
  # @version SketchUp 6.0
  def get_element_value(element_id)
  end

  # The +new+ method is used to create a new webdialog.
  #
  # Since SU2017 the position and size of the dialog is DPI aware - it will scale
  # to the DPI of the monitor automatically. Specify units as they would be on a
  # traditional low-DPI monitor.
  #
  # Note that the browser which is embedded inside the dialog depends on the
  # user's OS. On Mac, Safari is embedded, while on the PC whatever version of
  # Internet Explorer is installed will be embedded.
  #
  # @example
  #   dlg = UI::WebDialog.new("Show sketchup.com", true,
  #     "ShowSketchupDotCom", 739, 641, 150, 150, true);
  #   dlg.set_url "http://www.sketchup.com"
  #   dlg.show
  #
  # @overload initialize(dialog_title = "", scrollable = true, pref_key = nil, width = 250, height = 250, left = 0, top = 0, resizable = true)
  #
  #   @param [String] dialog_title   The title to be displayed in the webdialog.
  #   @param [Boolean] scrollable    true if you want to allow scrollbars, false
  #                                  if you do not want to allow scrollbars.
  #   @param [String, nil] pref_key  The registry entry where the location and
  #                                  size of the dialog will be saved.
  #                                  If preferences_key is not included, the
  #                                  location and size will not be stored.
  #   @param [Integer] width         The width of the webdialog.
  #   @param [Integer] height        The height of the webdialog.
  #   @param [Integer] left          The number of pixels from the left.
  #   @param [Integer] top           The number of pixels from the top.
  #   @param [Integer] resizable     true if you want the webdialog to be resizable,
  #                                  false if not.
  #   @return [UI::WebDialog]
  #
  # @overload initialize(properties)
  #
  #   @version SketchUp 7.0
  #   @param [Hash] properties  A hash containing the initial properties of
  #                             the newly created dialog.
  #   @option properties [String] :dialog_title
  #   @option properties [String] :preferences_key
  #   @option properties [Boolean] :scrollable
  #   @option properties [Boolean] :resizable (true)
  #   @option properties [Integer] :width (250)
  #   @option properties [Integer] :height (250)
  #   @option properties [Integer] :left (0)
  #   @option properties [Integer] :top (0)
  #   @option properties [Integer] :min_width (0)
  #   @option properties [Integer] :min_height (0)
  #   @option properties [Integer] :max_width (-1)
  #   @option properties [Integer] :max_height (-1)
  #   @option properties [Integer] :full_security (false)
  #   @option properties [Integer] :mac_only_use_nswindow (false)
  #   @return [UI::WebDialog]
  #
  # @version SketchUp 6.0
  def initialize(*args)
  end

  # The max_height method is used to get the maximum height that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   max = dialog.max_height
  #
  # @return [Integer] the maximum height in pixels
  #
  # @version SketchUp 7.0
  def max_height
  end

  # The max_height= method is used to set the maximum height that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   dialog.max_height = 400
  #
  # @param [Integer] height
  #   The maximum height in pixels
  #
  # @return [Integer]
  #
  # @version SketchUp 7.0
  def max_height=(height)
  end

  # The max_width method is used to get the maximum width that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   max = dialog.max_width
  #
  # @return [Integer] the maximum width in pixels
  #
  # @version SketchUp 7.0
  def max_width
  end

  # The max_width= method is used to set the maximum width that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   dialog.max_width = 500
  #
  # @param [Integer] width
  #   The maximum width in pixels
  #
  # @return [Integer]
  #
  # @version SketchUp 7.0
  def max_width=(width)
  end

  # The min_width method is used to get the minimum height that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   min = dialog.min_height
  #
  # @return [Integer] the minimum height in pixels
  #
  # @version SketchUp 7.0
  def min_height
  end

  # The min_height= method is used to set the minimum height that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   dialog.min_height = 100
  #
  # @param [Integer] height
  #   The minimum height in pixels
  #
  # @return [Integer]
  #
  # @version SketchUp 7.0
  def min_height=(height)
  end

  # The min_width method is used to get the minimum width that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   min = dialog.min_width
  #
  # @return [Integer] the minimum width in pixels
  #
  # @version SketchUp 7.0
  def min_width
  end

  # The min_width= method is used to set the minimum width that the user is
  # allowed to resize the dialog to.
  #
  # @example
  #   dialog.min_width = 200
  #
  # @param [Integer] width
  #   The minimum width in pixels
  #
  # @return [Integer]
  #
  # @version SketchUp 7.0
  def min_width=(width)
  end

  # The navigation_buttons_enabled= method is used to set whether the home, next,
  # and back buttons are visible at the top of the WebDialog on the mac. This
  # method has no use on the PC, as these buttons are never displayed.
  #
  # @example
  #   dialog.navigation_buttons_enabled = false
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.0
  def navigation_buttons_enabled=(nav_buttons)
  end

  # The navigation_buttons_enabled? method is used to get whether the home, next,
  # and back buttons are visible at the top of the WebDialog on the mac. This
  # method has no use on the PC, as these buttons are never displayed.
  #
  # On the mac, this defaults to true for new WebDialogs.
  #
  # @example
  #   nav_buttons = dialog.navigation_buttons_enabled?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.0
  def navigation_buttons_enabled?
  end

  # The post_url method is used to send the data to a url using the HTTP POST
  # method.
  #
  # @example
  #   data = dialog.post_url("http://www.mydomain.com/formchecker.cgi",data)
  #
  # @param [String] url
  #   The url to send the data.
  #
  # @param [String] data
  #   The data to be sent.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def post_url(url, data)
  end

  # The screen_scale_factor method returns the ratio of screen pixels to logical
  # window units (called 'points' on Mac) for the screen this WebDialog is
  # currently in. On a retina screen Mac, this ratio will be greater than 1.0.
  # On Windows this always return 1.0.
  #
  # @example
  #   factor = dialog.screen_scale_factor
  #
  # @return [Float] screen scale factor
  #
  # @version SketchUp 2014
  def screen_scale_factor
  end

  # The set_background_color method is used to set the background color for the
  # webdialog.
  #
  # @example
  #   dlg.set_background_color("f3f0f0")
  #
  # @param [String] color
  #   A six digit hexidecimal color.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_background_color(color)
  end

  # The #{set_file} method is used to identify a local HTML file to display in
  # the webdialog.
  #
  # @example
  #   file = File.join(__dir__, 'mypage.html')
  #   dialog.set_file(file)
  #
  # @param [String] filename
  #   The filename for the webdialog file (HTML file).
  #
  # @param [String] path
  #   A path that filename is relative to.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_file(filename, path = nil)
  end

  # The set_full_security method is used to place the WebDialog into a higher
  # security mode where remote URLs and plugins (such as Flash) are not allowed
  # inside the browser. This defaults to false when a new WebDialog is created.
  #
  # @example
  #   dialog.set_full_security
  #
  # @return [UI::WebDialog] the updated WebDialog
  #
  # @version SketchUp 7.0
  def set_full_security
  end

  # The set_html method is used to load a webdialog with a string of provided
  # HTML.
  #
  # @example
  #   html= '<b>Hello world!</b>'
  #   dialog.set_html(html)
  #
  # @param [String] html_string
  #   A string of valid html to display in your webdialog.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_html(html_string)
  end

  # The set_on_close method is used to establish one or more activities to
  # perform when the dialog closes (such as saving values stored in the dialog).
  #
  # @example
  #   dialog.set_on_close{ UI.messagebox("Closing the webDialog") }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield Ruby block to perform when the dialog closes.
  def set_on_close
  end

  # The set_position method is used to set the position of the webdialog
  # relative to the screen, in pixels.
  #
  # @example
  #   dialog.set_position(100,50)
  #
  # @param [Integer] left
  #   The number of pixels from the left.
  #
  # @param [Integer] top
  #   The number of pixels from the top of the screen.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_position(left, top)
  end

  # The set_size method is used to set the size of the webdialog, in pixels.
  #
  # @example
  #   dialog.set_size(320,240)
  #
  # @param [Integer] w
  #   Width of the webdialog.
  #
  # @param [Integer] h
  #   Height of the webdialog.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_size(w, h)
  end

  # The set_url method is used to load a webdialog with the content at a
  # specific URL. This method allows you to load web sites in a webdialog.
  #
  # @example
  #   dialog.set_url "http://www.sketchup.com"
  #
  # @param [String] url
  #   The URL for a specific web site.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_url(url)
  end

  # The show method is used to display a non-modal dialog box.
  #
  # @example
  #   dialog.show {
  #     dialog.execute_script("alert(10)");
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [dialog] (optional) Ruby code to perform when the dialog is first
  #   displayed.
  def show
  end

  # The show_modal method is used to display a modal dialog box. In SketchUp 6
  # and 7, this behaves differently on Mac vs. PC. On the PC, it shows a truly
  # modal dialog, meaning so long as the WebDialog is visible, no input can be
  # performed elsewhere inside SketchUp. On the Mac, "modal" WebDialogs do not
  # behave this way, but instead are "always on top" of other windows.
  #
  # @example
  #   dialog.show_modal {
  #     dialog.execute_script("alert(10)");
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [dialog] (optional) Ruby code to perform when the dialog is first
  #   displayed.
  def show_modal
  end

  # The visible? method is used to tell if the webdialog is currently shown.
  #
  # @example
  #   vis = dialog.visible?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def visible?
  end

  # The write_image method is used to grab a portion of the web dialog screen and
  # save the image to the given file path.
  #
  # @example
  #   dialog.write_image('c:/grab.jpg', 70, 0, 0, 100, 100)
  #   dialog.write_image('c:/grab.png', 4, 0, 0, 100, 100)
  #
  # @param [Integer] top_left_x
  #   The x coordinate of the upper left corner of the
  #   region to grab.
  #
  # @param [String] image_path
  #   The destination path of the saved image.
  #
  # @param [Integer] option
  #   Specifies what method to use when saving the image. For
  #   JPG/JPEG images, this specifies the image quality and
  #   can range from 1 to 100. For PNG images this specifies
  #   the compression algorithm: <4 (best speed), 4-8
  #   (default), or >=9 (best compression).
  #
  # @param [Integer] bottom_right_y
  #   The x coordinate of the lower right corner of the
  #   region to grab.
  #
  # @param [Integer] bottom_right_x
  #   The x coordinate of the lower right corner of the
  #   region to grab.
  #
  # @param [Integer] top_left_y
  #   The x coordinate of the upper left corner of the
  #   region to grab.
  #
  # @version SketchUp 7.1
  def write_image(image_path, option, top_left_x, top_left_y, bottom_right_x, bottom_right_y)
  end

end

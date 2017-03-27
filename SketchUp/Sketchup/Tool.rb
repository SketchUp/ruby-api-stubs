# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Tool is the interface that you implement to create a SketchUp tool.
# See the file Plugins/Examples/linetool.rb (in your SketchUp install
# directory) for an example of how to create a custom tool in Ruby.
#
# To create a new tool in Ruby, you must define a new class that implements
# the methods for the events that you want to respond to. You do not have
# to implement methods for every possible event that a Tool can respond to.
#
# Once you have defined a tool class, you select that tool by creating an
# instance of it and passing it to {Sketchup::Model#select_tool}. For
# example:
#
#   class MyTool
#     def activate
#       puts 'Your tool has been activated.'
#     end
#   end
#
#   my_tool = MyTool.new
#   Sketchup.active_model.select_tool(my_tool)
#
# The following table contains several constants you can use when check for
# certain key presses inside the keyboard handling callbacks:
#
# - +CONSTRAIN_MODIFIER_KEY+ = Shift Key
# - +CONSTRAIN_MODIFIER_MASK+ = Shift Key
# - +COPY_MODIFIER_KEY+ = Alt/Option on Mac, Ctrl on PC
# - +COPY_MODIFIER_MASK+ = Alt/Option on Mac, Ctrl on PC
# - +ALT_MODIFIER_KEY+ = Command on Mac, Alt on PC
# - +ALT_MODIFIER_MASK+ = Command on Mac, Alt on PC
#
# @version SketchUp 6.0
class Sketchup::Tool

  # Instance Methods

  # The activate method is called by SketchUp when the tool is selected.
  # It is a good place to put most of your initialization, such as instance
  # variables to track the state of the tool.
  #
  # @example
  #   def activate
  #     puts 'Your tool has been activated.'
  #   end
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def activate
  end

  # The deactivate method is called when the tool is deactivated because a
  # different tool was selected.
  #
  # @example
  #   def deactivate(view)
  #     puts "Your tool has been deactivated in view: #{view}"
  #   end
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def deactivate(view)
  end

  # The {#draw} method is called by SketchUp whenever the view is refreshed to
  # allow the tool to do its own drawing. If the tool has some temporary graphics
  # that it wants displayed while it is active, it should implement this method
  # and draw to the {Sketchup::View}.
  #
  # @example
  #   def draw(view)
  #     # Draw a square.
  #     points = [
  #       Geom::Point3d.new(0, 0, 0),
  #       Geom::Point3d.new(9, 0, 0),
  #       Geom::Point3d.new(9, 9, 0),
  #       Geom::Point3d.new(0, 9, 0)
  #     ]
  #     # Fill
  #     view.drawing_color = Sketchup::Color.new(255, 128, 128)
  #     view.draw(GL_QUADS, points)
  #     # Outline
  #     view.line_stipple = '' # Solid line
  #     view.drawing_color = Sketchup::Color.new(64, 0, 0)
  #     view.draw(GL_LINE_LOOP, points)
  #   end
  #
  # @note If you draw outside the model bounds you need to implement
  #   {Tool#getExtents} which return a bounding box large enough to include the
  #   points you draw. Otherwise your drawing will be clipped.
  #
  # @param [Sketchup::View] view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @see Sketchup::View#draw
  #
  # @see getExtents
  #
  # @version SketchUp 6.0
  def draw(view)
  end

  # The enableVCB? method is used to tell SketchUp whether to allow the user to
  # enter text into the VCB (value control box, aka the "measurements" panel).
  # If you do not implement this method, then the vcb is disabled by default.
  #
  # @example
  #   # For this tool, allow vcb text entry while the tool is active.
  #   def enableVCB?
  #     return true
  #   end
  #
  # @return enable - true if you want the VCB enabled
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def enableVCB?
  end

  # In order to accurately draw things, SketchUp needs to know the extents of
  # what it is drawing. If the tool is doing its own drawing, it may need to
  # implement this method to tell SketchUp the extents of what it will be
  # drawing. If you don't implement this method, you may find that part of what
  # the tool is drawing gets clipped to the extents of the rest of the
  # model.
  #
  # This must return a BoundingBox. In a typical implementation, you
  # will create a new BoundingBox, add points to set the extents of the drawing
  # that the tool will do and then return it.
  #
  # @example
  #   def getExtents
  #     bb = Sketchup.active_model.bounds
  #     return bb
  #   end
  #
  # @return BoundingBox - a BoundingBox object
  #
  # @version SketchUp 6.0
  def getExtents
  end

  # The getInstructorContentDirectory method is used to tell SketchUp the
  # directory containing your Tool's instructor content. To use this, create
  # a custom instructor directory, put an index.html file inside of it, and then
  # return that path via this method. If the SketchUp user has the Instructor
  # window open when they activate your tool, they will see your html file.
  #
  # NOTE: Prior to SketchUp 2014 this method would assume the path was relative
  # to the SketchUp resource folder. From 2014 and onwards you can specify the
  # absolute path to an HTML file or the absolute path to a directory containing
  # an index.html file.
  #
  # @example
  #   def getInstructorContentDirectory
  #     extension_path = Sketchup.extensions['MyExtension].extension_path
  #     instructor_path = File.join(extension_path, 'MyExtension', 'instructor')
  #     return instructor_path
  #   end
  #
  # @return directory - the string directory where the Instructor
  #   content exists.
  #
  # @version SketchUp 6.0
  def getInstructorContentDirectory
  end

  # The getMenu method is called by SketchUp to let the tool provide its own
  # context menu. Most tools will not want to implement this method and,
  # instead, use the normal context menu found on all entities.
  #
  # If you do implement this method, the argument is a Menu. You should use the
  # add_item method to build the context menu.
  #
  # Your tool will use a standard context menu by default if you do not
  # implement this method. Implement this method if you want a context-click to
  # display something other than this default context menu.
  #
  # In SketchUp 2015 the flags, x, y and view parameters were added. They are
  # needed if you need to pick the entities under the mouse position. The new
  # parameters are optional, but if you need to use one you must include them
  # all.
  #
  # @example
  #   if Sketchup.version.to_i < 15
  #     # Compatible with SketchUp 2014 and older:
  #     def getMenu(menu)
  #       menu.add_item('Say Hello') {
  #         UI.messagebox('Hello')
  #       }
  #     end
  #   else
  #     # Only works with SketchUp 2015 and newer:
  #     def getMenu(menu, flags, x, y, view)
  #       ph = view.pick_helper(x, y)
  #       entity = ph.best_picked
  #       if entity
  #         view.model.selection.clear
  #         view.model.selection.add(entity)
  #         menu.add_item("Erase #{entity.typename}") {
  #           entity.erase!
  #         }
  #      end
  #    end
  #   end
  #
  # @param [optional] flags
  #   A bit mask that tells the state of the
  #   modifier keys and other mouse buttons at the time.
  #   Added in SU2015.
  #
  # @param menu
  #   A Menu object.
  #
  # @param [optional] x
  #   The X coordinate on the screen where the
  #   event occurred. Added in SU2015.
  #
  # @param [optional] view
  #   A View object where the method was invoked.
  #   Added in SU2015.
  #
  # @param [optional] y
  #   The Y coordinate on the screen where the
  #   event occurred. Added in SU2015.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def getMenu(menu, flags, x, y, view)
  end

  # The onCancel method is called by SketchUp to cancel the current operation of
  # the tool. The typical response will be to reset the tool to its initial
  # state.
  #
  # The reason identifies the action that triggered the call. The reason can be
  # one of the following values:
  #
  # - +0+: the user canceled the current operation by hitting the escape key.
  # - +1+: the user re-selected the same tool from the toolbar or menu.
  # - +2+: the user did an undo while the tool was active.
  #
  # @example
  #   def onCancel(reason, view)
  #     puts "MyTool was canceled for reason ##{reason} in view: #{view}"
  #   end
  #
  # @param reason
  #   A reason value (see comments).
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onCancel(reason, view)
  end

  # The onKeyDown method is called by SketchUp when the user presses a key on
  # the keyboard. If you want to get input from the VCB, you should implement
  # onUserText rather than this method.
  #
  # This method is can be used for special keys such as the Shift key, Ctrl key,
  # and so on, or for just determining which key a user pressed. This method is
  # actually called for all keys that are pressed.
  #
  # There are several
  # "virtual keys" defined as constants you can use.  Their use is cross
  # platform. They are:
  #
  # - +VK_ALT+
  # - +VK_COMMAND+
  # - +VK_CONTROL+
  # - +VK_DELETE+
  # - +VK_DOWN+
  # - +VK_END+
  # - +VK_HOME+
  # - +VK_INSERT+
  # - +VK_LEFT+
  # - +VK_MENU+
  # - +VK_NEXT+
  # - +VK_PRIOR+
  # - +VK_RIGHT+
  # - +VK_SHIFT+
  # - +VK_SPACE+
  # - +VK_UP+
  #
  # V6: There is a bug on Windows where the typematic effect does
  # not work. Typematic effects work fine on a Mac.
  #
  # @example
  #   def onKeyDown(key, repeat, flags, view)
  #     puts "onKeyDown: key = #{key}"
  #     puts "        repeat = #{repeat}"
  #     puts "         flags = #{flags}"
  #     puts "          view = #{view}"
  #   end
  #
  # @param key
  #   The key that was pressed.
  #
  # @param repeat
  #   A value of 1 for a single press of a key.  A value of 2
  #   if the user has pressed a key and is holding it down.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys at
  #   the time of the onKeyDown.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onKeyDown(key, repeat, flags, view)
  end

  # The onKeyUp method is called by SketchUp when the user releases a key on the
  # keyboard.
  #
  # @example
  #   def onKeyUp(key, repeat, flags, view)
  #     puts "onKeyUp: key = #{key}"
  #     puts "      repeat = #{repeat}"
  #     puts "       flags = #{flags}"
  #     puts "        view = #{view}"
  #   end
  #
  # @param key
  #   The key that was pressed.
  #
  # @param repeat
  #   A value of 1 for a single press of a key.  A value of 2
  #   if the user has pressed a key and is holding it down.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys at
  #   the time of the onKeyUp.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onKeyUp(key, repeat, flags, view)
  end

  # The onLButtonDoubleClick is called by SketchUp when the user double clicks
  # with the left mouse button.
  #
  # @example
  #   def onLButtonDoubleClick(flags, x, y, view)
  #     puts "onLButtonDoubleClick: flags = #{flags}"
  #     puts "                          x = #{x}"
  #     puts "                          y = #{y}"
  #     puts "                       view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys
  #   and other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onLButtonDoubleClick(flags, x, y, view)
  end

  # The onLButtonDown method is called by SketchUp when the left mouse button is
  # pressed. Most tools will implement this method.
  #
  # @example
  #   def onLButtonDown(flags, x, y, view)
  #     puts "onLButtonDown: flags = #{flags}"
  #     puts "                   x = #{x}"
  #     puts "                   y = #{y}"
  #     puts "                view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onLButtonDown(flags, x, y, view)
  end

  # The onLButtonUp method is called by SketchUp when the left mouse button is
  # released.
  #
  # @example
  #   def onLButtonUp(flags, x, y, view)
  #     puts "onLButtonUp: flags = #{flags}"
  #     puts "                 x = #{x}"
  #     puts "                 y = #{y}"
  #     puts "              view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onLButtonUp(flags, x, y, view)
  end

  # NOTE: Though this method has been documented in the Ruby API for many years,
  # it has never worked properly. We are leaving this documentation in place
  # for now in the hopes of fixing the implementation, but you won't have any
  # luck trying to use it in SU7 and earlier.
  #
  # The onMButtonDoubleClick method is called by SketchUp when the middle mouse
  # button (on a three button mouse) is double-clicked.
  #
  # Only implement this method if you want SketchUp to react to a middle mouse
  # button being double-clicked.
  #
  # @example
  #   def onMButtonDoubleClick(flags, x, y, view)
  #     puts "onMButtonDoubleClick: flags = #{flags}"
  #     puts "                          x = #{x}"
  #     puts "                          y = #{y}"
  #     puts "                       view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onMButtonDoubleClick(flags, x, y, view)
  end

  # The onMButtonDown method is called by SketchUp when the middle mouse button
  # (on a three button mouse) is down.
  #
  # The Orbit tool is activated by default when the middle mouse button is down.
  # Implement this method if you want a middle mouse button to do something
  # other than invoke the Orbit tool.
  #
  # @example
  #   def onMButtonDown(flags, x, y, view)
  #     puts "onMButtonDown: flags = #{flags}"
  #     puts "                    x = #{x}"
  #     puts "                    y = #{y}"
  #     puts "                 view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onMButtonDown(flags, x, y, view)
  end

  # The onMButtonUp method is called by SketchUp when the middle mouse button
  # (on a three button mouse) is released.
  #
  # SketchUp returns to the previous tool from the Orbit tool when the middle
  # mouse button is released. Implement this method if you want a middle mouse
  # button to do something other than return to the previous tool when in the
  # Orbit tool.
  #
  # @example
  #   def onMButtonUp(flags, x, y, view)
  #     puts "onMButtonUp: flags = #{flags}"
  #     puts "                  x = #{x}"
  #     puts "                  y = #{y}"
  #     puts "               view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onMButtonUp(flags, x, y, view)
  end

  # The onMouseEnter method is called by SketchUp when the mouse enters the View
  # object.
  #
  # @example
  #   def onMouseEnter(view)
  #     puts "onMouseEnter: view = #{view}"
  #   end
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onMouseEnter(view)
  end

  # The onMouseLeave method is called by SketchUp when the mouse leaves the View
  # object.
  #
  # @example
  #   def onMouseLeave(view)
  #     puts "onMouseLeave: view = #{view}"
  #   end
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onMouseLeave(view)
  end

  # The onMouseMove method is called by SketchUp whenever the mouse is moved.
  # You will often want to implement this method.
  #
  # Try to make this method as efficient as possible because this method is
  # called often.
  #
  # @example
  #   def onMouseMove(flags, x, y, view)
  #     puts "onMouseMove: flags = #{flags}"
  #     puts "                  x = #{x}"
  #     puts "                  y = #{y}"
  #     puts "               view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onMouseMove(flags, x, y, view)
  end

  # The onRButtonDoubleClick is called by SketchUp when the user double clicks
  # with the right mouse button.
  #
  # @example
  #   def onRButtonDoubleClick(flags, x, y, view)
  #     puts "onRButtonDoubleClick: flags = #{flags}"
  #     puts "                          x = #{x}"
  #     puts "                          y = #{y}"
  #     puts "                       view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onRButtonDoubleClick(flags, x, y, view)
  end

  # The onRButtonDown method is called by SketchUp when the user presses
  # the right mouse button. Implement this method, along with the tool.getMenu
  # method, when you want your tool to do something other than display the
  # default context menu when the right mouse button is clicked.
  #
  # @example
  #   def onRButtonDown(flags, x, y, view)
  #     puts "onRButtonDown: flags = #{flags}"
  #     puts "                   x = #{x}"
  #     puts "                   y = #{y}"
  #     puts "                view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onRButtonDown(flags, x, y, view)
  end

  # The onRButtonUp method is called by SketchUp when the user releases the
  # right mouse button.
  #
  # @example
  #   def onRButtonUp(flags, x, y, view)
  #     puts "onRButtonUp: flags = #{flags}"
  #     puts "                 x = #{x}"
  #     puts "                 y = #{y}"
  #     puts "              view = #{view}"
  #   end
  #
  # @param flags
  #   A bit mask that tells the state of the modifier keys and
  #   other mouse buttons at the time.
  #
  # @param x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @param y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onRButtonUp(flags, x, y, view)
  end

  # The onReturn method is called by SketchUp when the user hit the Return key
  # to complete an operation in the tool. This method will rarely need to be
  # implemented.
  #
  # @example
  #   def onMouseLeave(view)
  #     puts "onMouseLeave: view = #{view}"
  #   end
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onReturn(view)
  end

  # The onSetCursor method is called by SketchUp when the tool wants to set the
  # cursor.
  #
  # @example
  #   def onSetCursor
  #     puts "onSetCursor: view = #{view}"
  #     # You would set your cursor here. See UI.set_cursor method.
  #     UI.set_cursor(@cursor_id)
  #   end
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onSetCursor
  end

  # The onUserText method is called by SketchUp when the user has typed text
  # into the VCB and hit return.
  #
  # @example
  #   def onUserText(text, view)
  #     puts "onSetCursor: text = #{text}, view = #{view}"
  #   end
  #
  # @param text
  #   The text string that was typed into the VCB.
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def onUserText(text, view)
  end

  # The resume method is called by SketchUp when the tool becomes active again
  # after being suspended.
  #
  # @example
  #   def resume(view)
  #     puts "resume: view = #{view}"
  #   end
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def resume(view)
  end

  # The suspend method is called by SketchUp when the tool temporarily becomes
  # inactive because another tool has been activated. This typically happens
  # when a viewing tool is activated, such as when orbit is active due to the
  # middle mouse button.
  #
  # @example
  #   def suspend(view)
  #     puts "suspend: view = #{view}"
  #   end
  #
  # @param view
  #   A View object where the method was invoked.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def suspend(view)
  end

end

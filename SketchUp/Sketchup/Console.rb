# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Console class is used by SketchUp to direct $stdout and $stderr to the
# Ruby Console. It is a singleton class that only has one instance available.
# This instance is accessible via the SKETCHUP_CONSOLE constant.
#
# In SketchUp 2014 methods were added to allow developers to control the
# visibility of the Ruby Console.
#
# Also note that in SketchUp 2014, writing to the console does not work from
# within Ruby threads other than the main thread. So the following code will
# not produce any output.
#
# @example
#   t = Thread.new { puts 'This will not be written to the console.' }
#   t.join
#
# @example
#   # By default $stdout is directed to SKETCHUP_CONSOLE.
#   p $stdout
#
#   # $stdout can however be redirected so the safe way to access the
#   # SketchUp console is by using the SKETCHUP_CONSOLE constant.
#   p SKETCHUP_CONSOLE
#
# @version SketchUp 2014
class Sketchup::Console

  # Instance Methods

  # Clears the contents of SketchUp's Ruby Console.
  #
  # @example
  #   SKETCHUP_CONSOLE.clear
  #
  # @return true.
  #
  # @version SketchUp 2014
  def clear
  end

  # Hides the SketchUp Ruby Console.
  #
  # @example
  #   SKETCHUP_CONSOLE.hide
  #
  # @return true.
  #
  # @version SketchUp 2014
  def hide
  end

  # Displays the SketchUp Ruby Console.
  #
  # @example
  #   SKETCHUP_CONSOLE.show
  #
  # @return true.
  #
  # @version SketchUp 2014
  def show
  end

  # Returns the visibility state of the SketchUp Ruby Console.
  #
  # @example
  #   puts SKETCHUP_CONSOLE.visible?
  #
  # @return true if visible, false if not.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2014
  def visible?
  end

end

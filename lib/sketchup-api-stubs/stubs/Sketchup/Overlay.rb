# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# An Overlay provides contextual model information directly in the viewport.
# This can be presented in 2D and 3D.
#
# Examples can be annotations or analytical model information such as geometry
# analysis, energy analysis, etc.
#
# The overlay feature is not intended as a mechanism to provide custom entities
# to SketchUp. Whatever overlays draw is not pickable nor exportable.
#
# It is also not allowed to perform model changes from overlay events. Doing
# so will result in a +RuntimeError+ being thrown.
#
# @api Overlays
#
# @example
#   class ExampleOverlay < Sketchup::Overlay
#
#     def initialize
#       super('example_inc.my_overlay', 'Example Overlay')
#     end
#
#     def draw(view)
#       rectangle = [
#         [100, 100, 0], [300, 100, 0], [300, 200, 0], [100, 200, 0]
#       ]
#       view.drawing_color = 'blue'
#       view.draw2d(GL_QUADS, rectangle)
#       point = Geom::Point3d.new(120, 120, 0)
#       view.draw_text(point, "Hello Overlay", size: 20, bold: true, color: 'white')
#     end
#
#   end
#
#   # Using an observer to create a new overlay per model.
#   class ExampleAppObserver < Sketchup::AppObserver
#
#     def expectsStartupModelNotifications
#       true
#     end
#
#     def register_overlay(model)
#       overlay = ExampleOverlay.new
#       model.overlays.add(overlay)
#     end
#     alias_method :onNewModel, :register_overlay
#     alias_method :onOpenModel, :register_overlay
#
#   end
#
#   observer = ExampleAppObserver.new
#   Sketchup.add_observer(observer)
#
#   # The following line is needed if you copy+paste in the Ruby Console or
#   # at the moment the extension is installed:
#   observer.register_overlay(Sketchup.active_model)
#
# @version SketchUp 2023.0
class Sketchup::Overlay

  # Instance Methods

  # This is a short user facing description of the overlay that will appear in the UI.
  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name}: #{overlay.description}"
  #   }
  #
  # @return [String]
  #
  # @version SketchUp 2023.0
  def description
  end

  # Sets a short user facing description of the overlay that will appear in the UI.
  # Set this before adding to the {Sketchup::OverlaysManager}.
  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name}: #{overlay.description}"
  #   }
  #
  # @return [String]
  #
  # @version SketchUp 2023.0
  def description=(description)
  end

  #
  # @abstract It is called whenever the view updates.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #     def draw(view)
  #       # Draw a square.
  #       points = [
  #         Geom::Point3d.new(0, 0, 0),
  #         Geom::Point3d.new(9, 0, 0),
  #         Geom::Point3d.new(9, 9, 0),
  #         Geom::Point3d.new(0, 9, 0)
  #       ]
  #       # Fill
  #       view.drawing_color = Sketchup::Color.new(255, 128, 128)
  #       view.draw(GL_QUADS, points)
  #       # Outline
  #       view.line_stipple = '' # Solid line
  #       view.drawing_color = Sketchup::Color.new(64, 0, 0)
  #       view.draw(GL_LINE_LOOP, points)
  #     end
  #
  #   end
  #
  # @note This is called very often. Perform minimal amount of computation in
  #   this event. Cache the data needed to draw what the overlay needs whenever
  #   possible.
  #
  # @note If you draw outside the model bounds you need to implement
  #   {Sketchup::Overlay#getExtents} which return a bounding box large enough to
  #   include the points you draw. Otherwise your drawing will be clipped.
  #
  # @param [Sketchup::View] view
  #   A View object where the method was invoked.
  #
  # @see getExtents
  #
  # @see Sketchup::View#draw
  #
  # @version SketchUp 2023.0
  def draw(view)
  end

  #
  # @api Overlays
  #
  # @note In most cases, extensions doesn't need to expose any new UI for
  #   enabling them. This can be done from the Overlays panel. However, in some
  #   cases the extension might have additional UI related to the overlays and
  #   might want to offer a way to toggle its overlays along with the rest of
  #   the UI.
  #
  # @param [Boolean] enabled
  #
  # @raise [RuntimeError] if the overlay is not added to a model.
  #
  # @version SketchUp 2023.0
  def enabled=(enabled)
  end

  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name} (#{overlay.overlay_id}) Enabled: #{overlay.enabled?}"
  #   }
  #
  # @return [Boolean]
  #
  # @version SketchUp 2023.0
  def enabled?
  end

  # In order to accurately draw things, SketchUp needs to know the extents of
  # what it is drawing. If the overlay is doing its own drawing, it may need to
  # implement this method to tell SketchUp the extents of what it will be
  # drawing. If you don't implement this method, you may find that part of what
  # the overlay is drawing gets clipped to the extents of the rest of the
  # model.
  #
  # This must return a {Geom::BoundingBox}. In a typical implementation, you
  # will create a new {Geom::BoundingBox}, add points to set the extents of the
  # drawing that the overlay will do and then return it.
  #
  # @abstract The method should be implementing sub-classes ensure what is drawn
  #   in 3D space doesn't appear clipped. If the overlay only draws in 2D this
  #   isn't needed.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #       @points = [ [0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0] ]
  #     end
  #
  #     def getExtents
  #       bb = Sketchup.active_model.bounds
  #       bb.add(@points)
  #       return bb
  #     end
  #
  #     def draw(view)
  #       view.draw(GL_QUADS, @points)
  #     end
  #
  #   end
  #
  # @note This is called very often. Perform minimal amount of computation in
  #   this event. Cache the data needed to compute the bounds of what the overlay
  #   draws whenever possible.
  #
  # @return [Geom::BoundingBox]
  #
  # @version SketchUp 2023.0
  def getExtents
  end

  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       description = "A short sentence describing the overlay."
  #       super('example_inc.my_overlay', 'Example Overlay', description: description)
  #     end
  #
  #   end
  #
  #   overlay = ExampleOverlay.new
  #
  # @param [String] id
  #   The string should be unique per overlay subclass.
  #   A good pattern would be something like: +"company_name.extension_name.overlay_name"+.
  #
  # @param [String] name
  #   This is a user facing display name that will appear in the UI.
  #   Make it short and representative for what the overlay does.
  #
  # @param [String] description
  #   This is a user facing description that will appear in the UI.
  #   Make it short and representative for what the overlay does.
  #
  # @raise [ArgumentError] if +id+ or +name+ is an empty string
  #
  # @version SketchUp 2023.0
  def initialize(id, name, description: "")
  end

  # This is a user facing display name that will appear in the UI.
  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name} (#{overlay.overlay_id}) Enabled: #{overlay.enabled?}"
  #   }
  #
  # @return [String]
  #
  # @version SketchUp 2023.0
  def name
  end

  # The {#onMouseEnter} method is called by SketchUp when the mouse enters the
  # viewport.
  #
  # @abstract It can be used by implementing sub-classes to react to
  #   mouse movement in the viewport.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #     def onMouseEnter(flags, x, y, view)
  #       puts "onMouseEnter: flags = #{flags}"
  #       puts "                  x = #{x}"
  #       puts "                  y = #{y}"
  #       puts "               view = #{view}"
  #     end
  #
  #   end
  #
  # @param [Integer] flags
  #   A bit mask that tells the state of the modifier
  #   keys and other mouse buttons at the time.
  #
  # @param [Integer] x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param [Integer] y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @param [Sketchup::View] view
  #
  # @version SketchUp 2023.0
  def onMouseEnter(flags, x, y, view)
  end

  # The {#onMouseLeave} method is called by SketchUp when the mouse enters the
  # viewport.
  #
  # @abstract It can be used by implementing sub-classes to react to
  #   mouse movement in the viewport.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #     def onMouseLeave(view)
  #       puts "onMouseLeave"
  #     end
  #
  #   end
  #
  # @param [Sketchup::View] view
  #
  # @version SketchUp 2023.0
  def onMouseLeave(view)
  end

  # Try to make this method as efficient as possible because this method is
  # called often.
  #
  # @abstract It can be used by implementing sub-classes to react to
  #   mouse movement in the viewport.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #     def onMouseMove(flags, x, y, view)
  #       puts "onMouseMove: flags = #{flags}"
  #       puts "                  x = #{x}"
  #       puts "                  y = #{y}"
  #       puts "               view = #{view}"
  #     end
  #
  #   end
  #
  # @param [Integer] flags
  #   A bit mask that tells the state of the modifier
  #   keys and other mouse buttons at the time.
  #
  # @param [Integer] x
  #   The X coordinate on the screen where the event occurred.
  #
  # @param [Integer] y
  #   The Y coordinate on the screen where the event occurred.
  #
  # @param [Sketchup::View] view
  #
  # @version SketchUp 2023.0
  def onMouseMove(flags, x, y, view)
  end

  #
  # @api Overlays
  #
  # @example Implementing
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #   end
  #
  # @example Accessing
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name} (#{overlay.overlay_id}) Enabled: #{overlay.enabled?}"
  #   }
  #
  # @return [String]
  #
  # @version SketchUp 2023.0
  def overlay_id
  end

  # Describes the source associated with the overlay. This is automatically inferred
  # when the overlay instance is initialized.
  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name} (Extension: #{overlay.source})"
  #   }
  #
  # @return [String]
  #
  # @version SketchUp 2023.0
  def source
  end

  #
  # @abstract It can be used by implementing sub-classes to react when the overlay
  #   becomes active, for instance when the user turns it on.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #     def start
  #       puts "Overlay #{self} started"
  #     end
  #
  #   end
  #
  # @version SketchUp 2023.0
  def start
  end

  #
  # @abstract It can be used by implementing sub-classes to react when the overlay
  #   becomes inactive, for instance when the user turns it off.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #
  #     def stop(view)
  #       puts "Overlay #{self} stopped"
  #     end
  #
  #   end
  #
  # @version SketchUp 2023.0
  def stop
  end

  # Indicates whether the overlay is valid. An overlay becomes invalid after
  # being removed from the model and cannot be reused.
  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #   end
  #
  #   overlay = ExampleOverlay.new
  #   p overlay.valid? # => true
  #   Sketchup.active_model.overlays.add(overlay)
  #   p overlay.valid? # => true
  #
  #   Sketchup.active_model.overlays.remove(overlay)
  #   p overlay.valid? # => false
  #
  # @return [Boolean]
  #
  # @version SketchUp 2023.0
  def valid?
  end

end

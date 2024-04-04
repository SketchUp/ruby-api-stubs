# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# This class contains methods to manipulate the current point of view of the
# model. The drawing methods here (draw_line, draw_polyline, etc) are meant to
# be invoked within a tool's Tool.draw method. Calling them outside Tool.draw
# will have no effect.
#
# You access the View by calling the Model.active_view method.
#
# @example
#   view = Sketchup.active_model.active_view
#
# @version SketchUp 6.0
class Sketchup::View

  # Instance Methods

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   status = view.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The {#animation=} method is used to set an animation that is displayed for a
  # view. See {Sketchup::Animation} for details on how to create an animation object.
  #
  # @example
  #   animation = ViewSpinner.new
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   anim = view.animation = animation
  #
  # @param [#nextFrame] animation
  #
  # @version SketchUp 6.0
  def animation=(animation)
  end

  # The average_refresh_time is used to set the average time used to refresh the
  # current model in the view. This can be used to estimate the frame rate for
  # an animation.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   time = view.average_refresh_time
  #
  # @return [Float] the time in seconds
  #
  # @version SketchUp 6.0
  def average_refresh_time
  end

  # The camera method is used to retrieve the camera for the view.
  #
  # @example
  #   camera = view.camera
  #
  # @return [Sketchup::Camera] a Camera object
  #
  # @version SketchUp 6.0
  def camera
  end

  # The {#camera=} method is used to set the camera for the view. If a transition
  # time is given, then it will animate the transition from the current camera
  # to the new one.
  #
  # @example
  #   camera = Sketchup::Camera.new([5, 5, 9], [5, 10, 0], Z_AXIS)
  #   view = Sketchup.active_model.active_view
  #   view.camera = camera
  #
  # @overload camera=(camera)
  #
  #   @param [Sketchup::Camera] camera The new camera object.
  #
  # @overload camera=(camera_and_transition)
  #
  #   @param [Array(Sketchup::Camera, Float)] camera_and_transition
  #     The second item in the array represents the transition time from the
  #     existing camera to the new one.
  #
  # @version SketchUp 6.0
  def camera=(arg)
  end

  # The center method is used to retrieve the coordinates of the center of the
  # view in pixels. It is returned as an array of 2 values for x and y.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   c = view.center
  #
  # @return [Geom::Point3d] the center of the view
  #
  # @version SketchUp 6.0
  def center
  end

  # The corner method is used to retrieve the coordinates of one of the corners
  # of the view. The argument is an index between 0 and 3 that identifies which
  # corner you want. This method returns an array with two integers which are
  # the coordinates of the corner of the view in the view space. If the view
  # uses a Camera with a fixed aspect ratio, then the corners are the corners of
  # the viewing are of the camera which might be different than the actual
  # corners of the view itself.
  #
  # The index numbers are as follows:
  #  - 0: top left,
  #  - 1: top right,
  #  - 2: bottom left,
  #  - 3: bottom right.
  #
  # @example
  #   point = view.corner index
  #
  # @param [Integer] index
  #   A value between (or including) 0 and 3 identifying the
  #   corner whose coordinate you want to retrieve.
  #
  # @return [Array(Integer, Integer)] a 2d array [w,h] representing the screen point
  #
  # @version SketchUp 6.0
  def corner(index)
  end

  # The {#draw} method is used to do basic drawing. This method can only be
  # called from within the {Tool#draw} method of a tool that you implement in
  # Ruby.
  #
  # The following constants are all OpenGL terms and have been externalized to
  # Ruby. Here is a summary of their meanings:
  #
  # [GL_POINTS]
  #   Treats each vertex as a single point. Vertex n defines point n. N
  #   points are drawn.
  #
  # [GL_LINES]
  #   Treats each pair of vertices as
  #   an independent line segment. Vertices 2n-1 and 2n define line n. N/2 lines
  #   are drawn.
  #
  # [GL_LINE_STRIP]
  #   Draws a connected group of line
  #   segments from the first vertex to the last. Vertices n and n+1 define
  #   line n. N-1 lines are drawn.
  #
  # [GL_LINE_LOOP]
  #   Draws a connected group of line segments from the first vertex to the last,
  #   then back to the first. Vertices n and n+1 define line n. The last line,
  #   however, is defined by vertices N and 1. N lines are drawn.
  #
  # [GL_TRIANGLES]
  #   Treats each triplet of vertices as an independent
  #   triangle. Vertices 3n-2, 3n-1, and 3n define triangle n. N/3 triangles are
  #   drawn.
  #
  # [GL_TRIANGLE_STRIP]
  #   Draws a connected group of triangles. One triangle is defined for each
  #   vertex presented after the first two vertices. For odd n, vertices n, n+1,
  #   and n+2 define triangle n. For even n, vertices n+1, n, and n+2 define
  #   triangle n. N-2 triangles are drawn.
  #
  # [GL_TRIANGLE_FAN]
  #   Draws a connected group of triangles.
  #   One triangle is defined for each vertex presented after the first two
  #   vertices. Vertices 1, n+1, and n+2 define triangle n. N-2 triangles are
  #   drawn.
  #
  # [GL_QUADS]
  #   Treats each group of four vertices as an
  #   independent quadrilateral. Vertices 4n-3, 4n-2, 4n-1, and 4n define
  #   quadrilateral n. N/4 quadrilaterals are drawn.
  #
  # [GL_QUAD_STRIP]
  #   Draws a connected group of quadrilaterals. One quadrilateral is
  #   defined for each pair of vertices presented after the first pair.
  #   Vertices 2n-1, 2n, 2n+2, and 2n+1 define quadrilateral n. N/2-1
  #   quadrilaterals are drawn. Note that the order in which vertices are used to
  #   construct a quadrilateral from strip data is different from that used with
  #   independent data.
  #
  # [GL_POLYGON]
  #   Draws a single, convex polygon. Vertices 1
  #   through N define this polygon.
  #
  # @example
  #   points = [
  #     Geom::Point3d.new(0, 0, 0),
  #     Geom::Point3d.new(9, 0, 0),
  #     Geom::Point3d.new(9, 9, 0),
  #     Geom::Point3d.new(0, 9, 0)
  #   ]
  #   view.draw(GL_LINE_LOOP, points)
  #
  # @note If you draw outside the model bounds you need to implement
  #   {Tool#getExtents} which returns a bounding box large enough to include the
  #   points you draw. Otherwise your drawing will be clipped.
  #
  # @overload draw(openglenum, points)
  #
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #
  # @overload draw(openglenum, *points)
  #
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #
  # @overload draw(openglenum, points, **options)
  #
  #   @version SketchUp 2020.0
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #   @param [Hash] options
  #   @option options [Array<Geom::Vector3d>] :normals
  #     Without normals the polygons will be rendered with flat shading. No
  #     light will affect it. By providing an array of vertex normals lighting
  #     is turned on and will use the model's current light. Note that the number
  #     of normals must match the number of points provided.
  #   @option options [Integer] :texture
  #     A texture id provided by {#load_texture}.
  #   @option options [Array<Geom::Vector3d>] :uvs
  #     Set of UV (Not UVQ) coordinates matching the number of points provided.
  #     This must be used along with the +:texture+ option.
  #
  # @overload draw(openglenum, *points, **options)
  #
  #   @version SketchUp 2020.0
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #   @param [Hash] options
  #   @option options [Array<Geom::Vector3d>] :normals ([])
  #     Without normals the polygons will be rendered with flat shading. No
  #     light will affect it. By providing an array of vertex normals lighting
  #     is turned on and will use the model's current light. Note that the number
  #     of normals must match the number of points provided.
  #   @option options [Integer] :texture
  #     A texture id provided by {#load_texture}.
  #   @option options [Array<Geom::Vector3d>] :uvs
  #     Set of UV (Not UVQ) coordinates matching the number of points provided.
  #     This must be used along with the +:texture+ option.
  #
  # @return [Sketchup::View]
  #
  # @see Tool#getExtents
  #
  # @version SketchUp 6.0
  def draw(*args)
  end

  # The {#draw2d} method is used to draw in screen space (using 2D screen
  # coordinates) instead of 3D space.
  #
  # The second parameter is an {Array} of {Geom::Point3d} objects (or several
  # individual {Geom::Point3d} objects). These {Geom::Point3d} objects are in
  # screen space, not 3D space.
  # The X value corresponds to the number of pixels from the left edge of the
  # drawing area. The Y value corresponds to the number of pixels down from
  # the top of the drawing area. The Z value is not used.
  #
  # @example
  #   points = [
  #     Geom::Point3d.new(0, 0, 0),
  #     Geom::Point3d.new(8, 0, 0),
  #     Geom::Point3d.new(8, 4, 0),
  #     Geom::Point3d.new(0, 4, 0)
  #   ]
  #   view.draw2d(GL_LINE_STRIP, points)
  #
  # @overload draw2d(openglenum, points)
  #
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #
  # @overload draw2d(openglenum, *points)
  #
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #
  # @overload draw2d(openglenum, points, **options)
  #
  #   @version SketchUp 2020.0
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #   @param [Hash] options
  #   @option options [Integer] :texture
  #     A texture id provided by {#load_texture}.
  #   @option options [Array<Geom::Vector3d>] :uvs
  #     Set of UV (Not UVQ) coordinates matching the number of points provided.
  #     This must be used along with the +:texture+ option.
  #
  # @overload draw2d(openglenum, *points, **options)
  #
  #   @version SketchUp 2020.0
  #   @param [Integer] openglenum
  #     The item you are going to draw, one of the constants
  #     from the comments, such as +GL_LINES+.
  #   @param [Array<Geom::Point3d>] points
  #   @param [Hash] options
  #   @option options [Integer] :texture
  #     A texture id provided by {#load_texture}.
  #   @option options [Array<Geom::Vector3d>] :uvs
  #     Set of UV (Not UVQ) coordinates matching the number of points provided.
  #     This must be used along with the +:texture+ option.
  #
  # @return [Sketchup::View]
  #
  # @see #draw
  #
  # @see UI.scale_factor
  #
  # @version SketchUp 6.0
  def draw2d(*args)
  end

  # The draw_lines method is used to draw disconnected lines.
  #
  # You must have an even number of points. This method is usually  invoked
  # within the draw method of a tool.
  #
  # @example
  #   point4 = Geom::Point3d.new 0,0,0
  #   point5 = Geom::Point3d.new 100,100,100
  #   # returns a view
  #   status = view.drawing_color="red"
  #   status = view.draw_lines point4, point5
  #
  # @overload draw_lines(points, ...)
  #
  #   @param [Array<Geom::Point3d>] points
  #     An even number of Point3d objects.
  #   @return [Sketchup::View]
  #
  # @overload draw_lines(points)
  #
  #   @param [Array<Geom::Point3d>] points An array of Point3d objects.
  #   @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def draw_line(*args)
  end

  # The draw_lines method is used to draw disconnected lines.
  #
  # You must have an even number of points. This method is usually  invoked
  # within the draw method of a tool.
  #
  # @example
  #   point4 = Geom::Point3d.new 0,0,0
  #   point5 = Geom::Point3d.new 100,100,100
  #   # returns a view
  #   status = view.drawing_color="red"
  #   status = view.draw_lines point4, point5
  #
  # @overload draw_lines(points, ...)
  #
  #   @param [Array<Geom::Point3d>] points
  #     An even number of Point3d objects.
  #   @return [Sketchup::View]
  #
  # @overload draw_lines(points)
  #
  #   @param [Array<Geom::Point3d>] points An array of Point3d objects.
  #   @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def draw_lines(*args)
  end

  # This method is used to draw points.
  #
  # This method is usually invoked within the draw method of a tool.
  #
  # @example
  #   point3 = Geom::Point3d.new 0,0,0
  #   # returns a view
  #   status = view.draw_points(point3, 10, 1, "red")
  #
  # @param [Array<Geom::Point3d>] points
  #
  # @param [Integer] size
  #   Size of the point in pixels.
  #
  # @param [Integer] style
  #   1 = open square, 2 = filled square, 3 = "+", 4 = "X", 5 = "*",
  #   6 = open triangle, 7 = filled triangle.
  #
  # @param [Sketchup::Color] color
  #
  # @return [Sketchup::View] a View object
  #
  # @version SketchUp 6.0
  def draw_points(points, size = 6, style = 3, color = 'black')
  end

  # The draw_polyline method is used to draw a series of connected line segments
  # from pt1 to pt2 to pt3, and so on.
  #
  # This method is usually invoked within the draw method of a tool.
  #
  # @example
  #   point12 = Geom::Point3d.new 0,0,0
  #   point13 = Geom::Point3d.new 10,10,10
  #   point14 = Geom::Point3d.new 20,20,20
  #   point15 = Geom::Point3d.new 30,30,30
  #   status = view.draw_polyline point12, point13, point14, point15
  #
  # @overload draw_polyline(points, ...)
  #
  #   @param [Array<Geom::Point3d>] points An even number of Point3d objects.
  #   @return [Sketchup::View]
  #
  # @overload draw_polyline(points)
  #
  #   @param [Array<Geom::Point3d>] points An array of Point3d objects.
  #   @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def draw_polyline(*args)
  end

  # This method is used to draw text on the screen and is usually invoked within
  # the draw method of a tool.
  #
  # The {TextVerticalAlignCenter} option will align the text to the center of the
  # height of the first line, not the whole boundingbox of the text. To align
  # around the full bounds of the text, use {#text_bounds} to compute the
  # desired alignment.
  #
  # The vertical alignment can vary between fonts and platforms. It's recommended
  # to test different fonts and find one that fits well across both platforms
  # for your purposes.
  #
  # <b>Example of different vertical alignment and text bounds:</b>
  #
  # rdoc-image:../images/view-draw-text-with-bounds.png
  #
  # @bug Prior to SU2022.0, on macOS, the vertical text alignment for some fonts
  #   could appear to be offset from their expected positions. As of SU2022.0 the
  #   vertical alignment should be more accurate and consistent.
  #
  # @example
  #   class ExampleTool
  #     def draw(view)
  #       # This works in all SketchUp versions and draws the text using the
  #       # default font, size and color (i.e. the model edge color).
  #       point = Geom::Point3d.new(200, 100, 0)
  #       view.draw_text(point, "This is a test")
  #
  #       # This works in SketchUp 2016 and up.
  #       options = {
  #         :font => "Arial",
  #         :size => 20,
  #         :bold => true,
  #         :align => TextAlignRight
  #       }
  #       point = Geom::Point3d.new(200, 200, 0)
  #       view.draw_text(point, "This is another\ntest", options)
  #
  #       # You can also use Ruby 2.0's named arguments:
  #       point = Geom::Point3d.new(200, 200, 0)
  #       view.draw_text(point, "Hello world!", color: "Red")
  #     end
  #   end
  #
  # @example Cross Platform Font Size
  #   class ExampleTool
  #     IS_WIN = Sketchup.platform == :platform_win
  #
  #     def draw(view)
  #       draw_text(view, [100, 200, 0], "Hello World", size: 20)
  #     end
  #
  #     private
  #
  #     # This will ensure text is drawn with consistent size across platforms,
  #     # using pixels as size units.
  #     def draw_text(view, position, text, **options)
  #       native_options = options.dup
  #       if IS_WIN && options.key?(:size)
  #         native_options[:size] = pixels_to_points(options[:size])
  #       end
  #       view.draw_text(position, text, **native_options)
  #     end
  #
  #     def pixels_to_points(pixels)
  #       ((pixels.to_f / 96.0) * 72.0).round
  #     end
  #   end
  #
  # @note Under Windows the font name must be less than 32 characters - due to
  #   system limitations.
  #
  # @note As of SU2017 this will automatically scale the font-size by the same
  #   factor as {UI.scale_factor}.
  #
  # @note The font size is platform dependent. On Windows the method expects
  #   points, where on Mac it's pixels. See "Cross Platform Font Size" example
  #   for details.
  #
  # @overload draw_text(point, text)
  #
  #   @param [Geom::Point3d] point  A Point3d object representing a 2D coordinate
  #       in view space.
  #   @param [String] text  The text string to draw.
  #
  # @overload draw_text(point, text, options = {})
  #
  #   @version SketchUp 2016
  #   @param [Geom::Point3d] point  A Point3d object representing a 2D coordinate
  #       in view space.
  #   @param [String] text  The text string to draw.
  #   @param [Hash] options  The text can be customized by providing a hash or
  #       named arguments of options.
  #   @option options [String] :font  The name of the font to use. If it does not
  #       exist on the system, a default font will be used instead.
  #   @option options [Integer] :size  The size of the font in points
  #   @option options [Boolean] :bold  Controls the Bold property of the font.
  #   @option options [Boolean] :italic  Controls the Italic property of the font.
  #   @option options [Sketchup::Color] :color  The color to draw the text with.
  #   @option options [Integer] :align  The text alignment, one of the following
  #       constants: {TextAlignLeft}, {TextAlignCenter} or {TextAlignRight}.
  #   @option options [Integer] :vertical_align  <b>Added SketchUp 2020.0.</b>
  #       The vertical text alignment, one of the following constants:
  #       {TextVerticalAlignBoundsTop}, {TextVerticalAlignBaseline},
  #       {TextVerticalAlignCapHeight} or {TextVerticalAlignCenter}. Note that
  #       some fonts on Mac might not align as expected due to the system
  #       reporting incorrect font metrics.
  #
  # @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def draw_text(*args)
  end

  # The drawing_color method is used to set the color that is used for drawing
  # to the view.
  #
  # This method is usually invoked within the draw method of a tool.
  #
  # @example
  #   view = view.drawing_color = color
  #
  # @param [Sketchup::Color, String] color
  #   A Color object.
  #
  # @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def drawing_color=(color)
  end

  # The dynamic= method allows you to degrade visual quality while improving
  # performance when a model is large and view refresh time is slow. For
  # example, if you were using a Ruby script to animate the camera through
  # a large scene, you may want to set dynamic to true during that time.
  #
  # See also camera.rb which is part of the film and stage ruby
  # scripts.
  #
  # @deprecated This method is no longer doing anything.
  #
  # @example
  #   view.dynamic = true
  #
  # @param [Boolean] value
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def dynamic=(value)
  end

  # The field_of_view method is used get the view's field of view setting, in
  # degrees.
  #
  # @example
  #   fov = Sketchup.active_model.active_view.field_of_view
  #
  # @return [Float] the field of view
  #
  # @version SketchUp 6.0
  def field_of_view
  end

  # The field_of_view= method is used set the view's field of view setting,
  # in degrees.
  #
  # @example
  #   my_view = Sketchup.active_model.active_view
  #   my_view.field_of_view = 45
  #   my_view.invalidate
  #
  # @param [Numeric] fov
  #   the field of view
  #
  # @return [Numeric]
  #
  # @version SketchUp 6.0
  def field_of_view=(fov)
  end

  # The {#graphics_engine} method is used query the type of the graphics engine that's currently
  # used by this view.
  #
  # @example
  #   engine = Sketchup.active_model.active_view.graphics_engine
  #   if engine == :graphics_engine_classic
  #     puts 'Classic graphics engine'
  #   elsif engine == :graphics_engine_2024
  #     puts 'New graphics engine'
  #   end
  #
  # @return [Symbol] Type of the graphics engine.
  #   +:graphics_engine_classic+ or +:graphics_engine_2024+
  #
  # @version SketchUp 2024.0
  def graphics_engine
  end

  # The guess_target method is used to guess at what the user is looking at when
  # you have a perspective view.
  #
  # This method is useful when writing a viewing tool. See also camera.rb which
  # is part of the film and stage ruby scripts.
  #
  # @example
  #   target = view.guess_target
  #
  # @return [Geom::Point3d] a Point3d object representing the point in the
  #   model that the user is likely interested in.
  #
  # @version SketchUp 6.0
  def guess_target(*args)
  end

  # The inference_locked? method is used to determine if inference locking is on
  # for the view.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   status = view.inference_locked
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def inference_locked?
  end

  # The inputpoint method is used to retrieve an input point.
  #
  # This will normally be used inside one of the mouse event handling methods in
  # a tool. Usually, it is preferable to create the InputPoint first and then
  # use the pick method on it.
  #
  # @example
  #   inputpoint = view.inputpoint x, y, inputpoint1
  #
  # @param [Numeric] x
  #   A x value.
  #
  # @param [Numeric] y
  #   A y value.
  #
  # @param [Sketchup::InputPoint] inputpoint1
  #   An InputPoint object.
  #
  # @return [Sketchup::InputPoint]
  #
  # @version SketchUp 6.0
  def inputpoint(x, y, inputpoint1)
  end

  # The invalidate method is used mark the view as in need of a redraw.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   invalidated_view = view.invalidate
  #
  # @note This is the preferred method to update the viewport. Use this before
  #   trying to use {#refresh}.
  #
  # @return [Sketchup::View] the invalidated View object
  #
  # @version SketchUp 6.0
  def invalidate
  end

  # The last_refresh_time method is used to retrieve the time for the last full
  # view refresh.
  #
  # @example
  #   time = view.last_refresh_time
  #
  # @return [Float] time in milliseconds
  #
  # @version SketchUp 6.0
  def last_refresh_time(*args)
  end

  # The line_stipple= method is used to set the line pattern to use for drawing.
  # The stipple pattern is given as a string.
  # Valid strings are:
  #   "." (Dotted Line),
  #   "-" (Short Dashes Line),
  #   "_" (Long Dashes Line),
  #   "-.-" (Dash Dot Dash Line),
  #   "" (Solid Line).
  #
  # This method is usually invoked within the draw method of a tool.
  #
  # @example
  #   point8 = Geom::Point3d.new 0,0,0
  #   point9 = Geom::Point3d.new 100,100,100
  #   view.line_stipple = "-.-"
  #   view = view.draw_lines point8, point9
  #
  # @param [String] pattern
  #   A string stipple pattern, such as "-.-"
  #
  # @return [Sketchup::View] the View object
  #
  # @version SketchUp 6.0
  def line_stipple=(pattern)
  end

  # The line_width= method is used to set the line width to use for drawing. The
  # value is a Double indicating the desired width in pixels.
  #
  # This method is usually invoked within the draw method of a tool.
  #
  # @example
  #   view.line_width = width
  #
  # @note As of SU2017 this will automatically scale the line width by the same
  #   factor as {UI.scale_factor}.
  #
  # @param [Integer] width
  #   The width in pixels.
  #
  # @return [Integer]
  #
  # @version SketchUp 6.0
  def line_width=(width)
  end

  # Loads a texture to be drawn with {#draw} or {#draw2d}.
  #
  # @example
  #   module Example
  #     class MyTool
  #       def activate
  #         view = Sketchup.active_model.active_view
  #         image_rep = view.model.materials.current.texture.image_rep
  #         @texture_id = view.load_texture(image_rep)
  #       end
  #
  #       def deactivate(view)
  #         view.release_texture(@texture_id)
  #       end
  #
  #       def draw(view)
  #         points = [ [0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0] ]
  #         uvs = [ [0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0] ]
  #         view.draw(GL_QUADS, points, texture: @texture_id, uvs: uvs)
  #       end
  #     end
  #   end
  #   Sketchup.active_model.select_tool(Example::MyTool.new)
  #
  # @note Avoid loading and releasing textures within the {Sketchup::Tool#draw}
  #   event as that is not efficient.
  #
  # @note SketchUp 2020.0-2022.0: To conserve resources on the user's machine,
  #   textures can be loaded only when there is a Ruby tool on the tool stack.
  #   Make sure to release the texture when it's no longer needed. Any textures
  #   not already released when the last Ruby tool on the tool stack is removed
  #   will be automatically released by SketchUp. As of SketchUp 2023.0 this
  #   automatic cleanup was removed to allow Overlays to draw textures.
  #
  # @param [Sketchup::ImageRep] image_rep
  #
  # @raise [ArgumentError] if the provided {Sketchup::ImageRep} is not valid.
  #
  # @raise [RuntimeError] if a Ruby tool was not on the tool stack.
  #   (Applies to SketchUp 2020.0-2022.0).
  #
  # @return [Integer] A resource ID referring to the image loaded.
  #
  # @see #release_texture
  #
  # @see #draw
  #
  # @version SketchUp 2020.0
  def load_texture(image_rep)
  end

  # The {#lock_inference} method is used to lock or unlock an inference.
  #
  # This method will typically be called from inside a tool class when the user
  # presses the shift key or arrow keys.
  #
  # With no arguments it unlocks all inferences. With one argument it locks
  # inference based on that passed {Sketchup::InputPoint}'s entities, e.g. along
  # a {Sketchup::Edge}'s line or a {Sketchup::Face}'s plane. With two arguments,
  # it locks inference along an axis.
  #
  # @example
  #   view = view.lock_inference
  #   view = view.lock_inference(inputpoint)
  #   view = view.lock_inference(inputpoint1, inputpoint2)
  #
  # @overload lock_inference
  #
  #
  # @overload lock_inference(inputpoint)
  #
  #   @param [Sketchup::InputPoint] inputpoint
  #
  # @overload lock_inference(inputpoint, inputpoint2)
  #
  #   @param [Sketchup::InputPoint] inputpoint
  #   @param [Sketchup::InputPoint] inputpoint2
  #   @example
  #     # Lock inference to X axis.
  #     # The points can be anywhere; only the vector between them affects
  #     # the result.
  #     view.lock_inference(
  #       Sketchup::InputPoint.new(ORIGIN),
  #       Sketchup::InputPoint.new(Geom::Point3d.new(1, 0, 0))
  #     )
  #
  # @return [Sketchup::View] a View object
  #
  # @version SketchUp 6.0
  def lock_inference(*args)
  end

  # The model method is used to retrieve the model for the current view.
  #
  # @example
  #   model = view.model
  #
  # @return [Sketchup::Model] the model for this view
  #
  # @version SketchUp 6.0
  def model
  end

  # The pick_helper method is used to retrieve a pick helper for the view. See
  # the PickHelper class for information on pick helpers.
  #
  # This call returns an initialized PickHelper.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   ph = view.pick_helper
  #
  # @overload pick_helper
  #
  #   @return [Sketchup::PickHelper] a PickHelper object
  #
  # @overload pick_helper(x, y, aperture = 0)
  #
  #   @param [Integer] x
  #   @param [Integer] y
  #   @param [Integer] aperture
  #   @return [Sketchup::PickHelper] a PickHelper object
  #
  # @version SketchUp 6.0
  def pick_helper(*args)
  end

  # The pickray method is used to retrieve a ray passing through a given screen
  # position in the viewing direction.
  #
  # @example
  #   ray = view.pickray x, y
  #
  # @overload pickray(screen_point)
  #
  #   @param [Array(Integer, Integer)] screen_point
  #   @return [Array(Geom::Point3d, Geom::Vector3d)] a ray
  #
  # @overload pickray(x, y)
  #
  #   @param [Integer] x
  #   @param [Integer] y
  #   @return [Array(Geom::Point3d, Geom::Vector3d)] a ray
  #
  # @version SketchUp 6.0
  def pickray(*args)
  end

  # The pixels_to_model method is used to compute a model size from a pixel size
  # at a given point.
  #
  # This method is useful for deciding how big to draw something based on a
  # desired size in pixels.
  #
  # @example
  #   size = view.pixels_to_model(pixels, point)
  #
  # @note As of SU2017 this will automatically scale the pixel-size by the same
  #   factor as {UI.scale_factor}.
  #
  # @param [Numeric] pixels
  #   The pixel size.
  #
  # @param [Geom::Point3d] point
  #   A Point3d object where the size will be calculated from.
  #
  # @return [Float] the model size
  #
  # @version SketchUp 6.0
  def pixels_to_model(pixels, point)
  end

  # The refresh method is used to immediately force a redraw of the view.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   refreshed_view = view.refresh
  #
  # @note This method might impact performance and if used incorrectly cause
  #   instability or crashes. Don't use this unless you have verified that
  #   you cannot use {#invalidate} instead.
  #
  # @return [Sketchup::View] the refreshed View object
  #
  # @version SketchUp 7.1
  def refresh
  end

  # Releases a texture loaded via {#load_texture}, freeing up it's memory.
  # It's good practice to do so whenever there is no longer any need for the
  # resource.
  #
  # For example, when your tool deactivates you probably want to release your
  # resources as you don't know if your tool will be used again.
  #
  # @example
  #   module Example
  #     class MyTool
  #       def activate
  #         view = Sketchup.active_model.active_view
  #         image_rep = view.model.materials.current.texture.image_rep
  #         @texture_id = view.load_texture(image_rep)
  #       end
  #
  #       def deactivate(view)
  #         view.release_texture(@texture_id)
  #       end
  #
  #       def draw(view)
  #         points = [ [0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0] ]
  #         uvs = [ [0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0] ]
  #         view.draw(GL_QUADS, points, texture: @texture_id, uvs: uvs)
  #       end
  #     end
  #   end
  #   Sketchup.active_model.select_tool(Example::MyTool.new)
  #
  # @param [Integer] texture_id
  #
  # @return [Boolean] +true+ if texture was released. +false+ otherwise.
  #
  # @see #load_texture
  def release_texture(texture_id)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   status = view.remove_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The screen_coords method is used to retrieve the screen coordinates of the
  # given point on the screen.
  #
  # The x and y values returned correspond to the x and y screen coordinates.
  # Ignore the z values.  If the referenced point is not in the current
  # viewport,  the x and/or y value may be negative.
  #
  # @example
  #   point = view.screen_coords(ORIGIN)
  #
  # @param [Geom::Point3d] point3d
  #   A Point3d object.
  #
  # @return [Geom::Point3d] A Point3d containing the screen position
  #
  # @version SketchUp 6.0
  def screen_coords(point3d)
  end

  # Set the drawing color for the view based on the direction of a line that you
  # want to draw. These colors will match the axes colors in the SketchUp model
  # (typically blue for straight up and down, etc.)
  #
  # This method is usually invoked within the draw method of a tool.
  #
  # @example
  #   view = view.set_color_from_line point1, point2
  #
  # @param [Geom::Point3d] point1
  #   Point3d object representing first point in the line.
  #
  # @param [Geom::Point3d] point2
  #   Point3d object representing the second point in the line.
  #
  # @return [Sketchup::View] a View object
  #
  # @version SketchUp 6.0
  def set_color_from_line(point1, point2)
  end

  # The show_frame method is used to show a frame of an Animation object in the
  # current view.
  #
  # You can supply an optional delay in seconds to wait before showing the next
  # frame. This can be useful to control the speed at which the animation runs.
  #
  # @example
  #   status = view.show_frame delay
  #
  # @param [Numeric] delay
  #   An optional delay in seconds.
  #
  # @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def show_frame(delay)
  end

  # This method is used to compute the bounds of the text when
  # using {#draw_text}. The bounds are not a tight fit around the top and bottom
  # as they include varying amount of line spacing depending on the font used.
  #
  # The {TextVerticalAlignCenter} option will align the text to the center of the
  # height of the first line, not the whole boundingbox of the text.
  #
  # <b>Example of different vertical alignment and text bounds:</b>
  #
  # rdoc-image:../images/view-draw-text-with-bounds.png
  #
  # @example
  #   class ExampleTool
  #     TEXT_OPTIONS = {
  #       :font => "Arial",
  #       :size => 20,
  #       :bold => true,
  #       :align => TextAlignRight,
  #       :align => TextVerticalAlignBaseline
  #     }
  #
  #     # Since `draw` is called frequently it can be useful to pre-compute and
  #     # cache values used by `draw`.
  #     def activate
  #       @text = "Hello SketchUp"
  #       @position = Geom::Point3d.new(200, 200, 0)
  #
  #       # Compute text bounds
  #       view = Sketchup.active_model.active_view
  #       bounds = view.text_bounds(@position, @text, TEXT_OPTIONS)
  #
  #       # Compute polygon for the text bounds
  #       x1, y1 = bounds.upper_left.to_a
  #       x2, y2 = bounds.lower_right.to_a
  #       @points = [
  #         Geom::Point3d.new(x1, y1),
  #         Geom::Point3d.new(x1, y2),
  #         Geom::Point3d.new(x2, y2),
  #         Geom::Point3d.new(x2, y1),
  #       ]
  #     end
  #
  #     def draw(view)
  #       # Draw text bounds
  #       view.drawing_color = Sketchup::Color.new(255, 0, 0, 64)
  #       view.draw2d(GL_QUADS, @points)
  #
  #       # Draw text
  #       view.draw_text(@position, @text, TEXT_OPTIONS)
  #     end
  #   end
  #
  # @note Under Windows the font name must be less than 32 characters - due to
  #   system limitations.
  #
  # @option options [String] :font The name of the font to use. If it does not
  #   exist on the system, a default font will be used instead.
  #
  # @option options [Integer] :size The size of the font in points
  #
  # @option options [Boolean] :bold Controls the Bold property of the font.
  #
  # @option options [Boolean] :italic Controls the Italic property of the font.
  #
  # @option options [Integer] :align The text alignment, one of the following
  #   constants: {TextAlignLeft}, {TextAlignCenter} or {TextAlignRight}.
  #
  # @option options [Integer] :vertical_align The vertical text alignment
  #   one of the following constants:
  #   {TextVerticalAlignBoundsTop}, {TextVerticalAlignBaseline},
  #   {TextVerticalAlignCapHeight} or {TextVerticalAlignCenter}.
  #
  # @param [Geom::Point3d] point
  #   A Point3d object representing a 2D coordinate
  #   in view space.
  #
  # @param [String] text
  #   The text string to draw.
  #
  # @param [Hash] options
  #   The text can be customized by providing a hash or
  #   named arguments of options.
  #
  # @return [Geom::Bounds2d]
  #
  # @see #draw_text
  #
  # @version SketchUp 2020.0
  def text_bounds(point, text, options = {})
  end

  # Set a tooltip to display in the view. This is useful for displaying tooltips
  # in a tool that you write in Ruby.
  #
  # @example
  #   tooltip = view.tooltip = string
  #
  # @param [String] string
  #   The string tooltip.
  #
  # @return [String] the new tooltip string
  #
  # @version SketchUp 6.0
  def tooltip=(string)
  end

  # The vpheight method is used to retrieve the height of the viewport for the
  # view.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #   height = view.vpheight
  #
  # @return [Integer] the height of the viewport in physical pixels.
  #
  # @version SketchUp 6.0
  def vpheight
  end

  # The vpwidth method is used to retrieve the width of the viewport for the
  # view.
  #
  # @example
  #   width = view.vpwidth
  #
  # @return [Integer] the width of the viewport in physical pixels.
  #
  # @version SketchUp 6.0
  def vpwidth
  end

  # The {#write_image} method is used to write the current view to an image file.
  #
  # Supported file types are `.png`, `.jpg`, `.jpeg`, `gif`, `.bmp`, `.tif`.
  # For other file formats  available from the GUI in File > Export > 2D
  # Graphics, .e.g `.pdf`, use {Sketchup::Model#export}.
  #
  # compression = 1.0)
  #   @note Prefer the overload with option hash instead of this variant. This
  #     overload is not updated with new options.
  #
  #   @example
  #     filename = File.join(Sketchup.temp_dir, 'example.png')
  #     antialias = false
  #     compression = 0.9
  #     model = Sketchup.active_model
  #     view = model.active_view
  #     view.write_image(filename, 640, 480, antialias, compression)
  #
  #   @param [String] filename
  #     The filename for the saved image
  #   @param [Integer] width
  #     Width in pixels, defaults to the current viewport width {#vpwidth}.
  #   @param [Integer] height
  #     Height in pixels, defaults to the current viewport height {#vpheight}.
  #   @param [Boolean] antialias
  #   @param [Float] compression
  #     Compression factor for JPEG images, between +0.0+ and +1.0+.
  #
  # @overload write_image(filename, width = view.vpwidth, height = view.vpheight, antialias = false,
  #
  #
  # @overload write_image(options)
  #
  #   @example
  #     options = {
  #       :filename => File.join(Sketchup.temp_dir, 'example.png'),
  #       :width => 640,
  #       :height => 480,
  #       :antialias => false,
  #       :compression => 0.9,
  #       :transparent => true
  #     }
  #     model = Sketchup.active_model
  #     view = model.active_view
  #     view.write_image(options)
  #
  #   @version SketchUp 7
  #   @param [Hash] options
  #   @option options [String] filename  The filename for the saved image.
  #   @option options [Integer] width (#vpwidth)  Width in pixels (max +16000+).
  #   @option options [Integer] height (#vpheight)  Height in pixels (max +16000+).
  #   @option options [Float] scale_factor (1.0)  Scaling factor for
  #     elements that are viewport dependent, such as text heights, arrow heads,
  #     line widths, stipple patterns, etc. (Added in  SketchUp 2019.2)
  #   @option options [Boolean] antialias (false)
  #   @option options [Float] compression (1.0)  Compression factor for JPEG,
  #     images between +0.0+ and +1.0+.
  #   @option options [Boolean] transparent (false) Added in SketchUp 8.
  #
  # @overload write_image(options)
  #
  #   It is possible to dump the framebuffer to file by setting +:source+ to
  #   +:framebuffer+. When saving the framebuffer only the following options are
  #   valid.
  #
  #   @example
  #     options = {
  #       :filename => File.join(Sketchup.temp_dir, 'example.png'),
  #       :source => :framebuffer,
  #       :compression => 0.9,
  #     }
  #     model = Sketchup.active_model
  #     view = model.active_view
  #     view.write_image(options)
  #
  #   @version SketchUp 7
  #   @param [Hash] options
  #   @option options [String] filename  The filename for the saved image.
  #   @option options [Boolean] source (:image) Set to +:framebuffer+ to dump the
  #     current framebuffer.
  #   @option options [Float] compression (1.0)  Compression factor for JPEG,
  #     images between +0.0+ and +1.0+.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def write_image(*args)
  end

  # The zoom method is used to zoom in or out by some zoom factor.
  #
  # @example
  #   view = view.zoom factor
  #   view = view.zoom selection
  #   view = view.zoom entity
  #   view = view.zoom array_of_entities
  #
  # @param [Numeric, Sketchup::Selection, Sketchup::Entity, Array<Sketchup::Entity>] zoom_or_ents
  #   A Float zoom factor from 1.0 or larger or an Array or
  #   collection of entities to "zoom extents" around.
  #
  # @return [Sketchup::View] the zoomed View object
  #
  # @version SketchUp 6.0
  def zoom(zoom_or_ents)
  end

  # The zoom_extents method is used to zoom to the extents about the entire
  # model, as if the user has selected the zoom extents command from the menu.
  #
  # @example
  #   view = Sketchup.active_model.active_view
  #   new_view = view.zoom_extents
  #
  # @return [Sketchup::View] the zoomed View object
  #
  # @version SketchUp 6.0
  def zoom_extents
  end

end

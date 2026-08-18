# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The Page class contains methods to extract information and modify the properties of
# an individual page.
#
# Note that inside the SketchUp user interface pages are called "Scenes".
#
# Since SketchUp 2026.0, modifying the {Sketchup::Axes}, {Sketchup::Camera},
# {Sketchup::RenderingOptions}, and {Sketchup::ShadowInfo} properties of a page is an undoable
# operation and should be wrapped between {Sketchup::Model#start_operation} and
# {Sketchup::Model#commit_operation}.
# Example:
#    model = Sketchup.active_model
#    pages = model.pages
#    origin = Geom::Point3d.new(10, 0, 0)
#
#    model.start_operation("Set Page Properties")
#    page = pages.add("My Page")
#    page.axes.set(origin, Y_AXIS, X_AXIS, Z_AXIS)
#    page.camera.fov = 56.78
#    page.shadow_info["City"] = "Brasov, Romania"
#    page.rendering_options["BackgroundColor"] = "Pink"
#    model.commit_operation
#
# @version SketchUp 6.0
class Sketchup::Page < Sketchup::Entity

  # Instance Methods

  # The {#active_section_planes} method is used to retrieve the active section
  # plane for the {Sketchup::Page}.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   page.active_section_planes
  #
  # @return [Array<Sketchup::SectionPlane>, nil] Returns +nil+ if the page does
  #   not use section planes.
  #
  # @version SketchUp 2026.0
  def active_section_planes
  end

  # The axes method returns the drawing axes for the page.
  #
  # Since SketchUp 2026.0, modifying the axes of a scene is an undoable operation.
  #
  # @example
  #   model = Sketchup.active_model
  #   page = model.pages.add("Example Page")
  #   xaxis = Geom::Vector3d.new(3, 5, 0)
  #   yaxis = xaxis * Z_AXIS
  #   page.axes.set([10,0,0], xaxis, yaxis, Z_AXIS)
  #   page.update(PAGE_USE_ALL)
  #   page.axes
  #
  # @return [Sketchup::Axes]
  #
  # @version SketchUp 2016
  def axes
  end

  # The {#camera} method retrieves the camera for a particular page.
  #
  # Since SketchUp 2026.0, modifying the camera properties of a scene is an undoable operation.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   camera = page.camera
  #
  # @return [Sketchup::Camera]
  #
  # @version SketchUp 6.0
  def camera
  end

  # The delay_time method retrieves the amount of time, in seconds, that a page
  # will be displayed before transition to another page during a tour.
  #
  # The default delay time can be modified in the Model Info > Animation panel
  # of the SketchUp User Interface. If this method returns -1, the default
  # delay time is used.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   time = page.delay_time
  #
  # @return [Float] the number of seconds of delay.
  #
  # @version SketchUp 6.0
  def delay_time
  end

  # The delay_time= method sets the amount of time, in seconds, that a page will
  # be displayed before transitioning to another page during a tour. If you set
  # the delay for a page to be -1, the default delay time will be used.
  #
  # The default delay time can be modified in the Model Info > Animation panel
  # of the SketchUp User Interface.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   time = page.delay_time = 10
  #
  # @param [Float] seconds
  #   The number of seconds to set as the delay time.
  #
  # @version SketchUp 6.0
  def delay_time=(seconds)
  end

  # The description method retrieves the description for a page as found in the
  # Scenes manager dialog.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   description = page.description
  #
  # @return [String] a textual description for the page.
  #
  # @version SketchUp 6.0
  def description
  end

  # The description method sets the description for a page as found in the
  # Scenes manager dialog.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   description = page.description = "This is my first page"
  #
  # @param [String] description
  #   A string description for the page.
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The {#environment} method is used to retrieve the {Sketchup::Environment}
  # for the scene.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   page.environment
  #
  # @return [Sketchup::Environment]
  #
  # @version SketchUp 2025.0
  def environment
  end

  # The {#environment=} method is used to set the {Sketchup::Environment}
  # for the scene.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   path = 'path/to/environment.hdr'
  #   environment = model.environments.add('My Environment', path)
  #   page.environment = environment
  #
  # @param [Sketchup::Environment] environment
  #
  # @version SketchUp 2025.0
  def environment=(environment)
  end

  # The {#get_drawingelement_visibility} method is used to get the visibility
  # of a drawing element on a particular page.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(10,0,0)
  #   constpoint = entities.add_cpoint(point1)
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   result = page.get_drawingelement_visibility(constpoint)
  #
  # @example
  #   # SketchUp 2020.1 is required
  #   def element_visible_in_page?(element, page)
  #     case element
  #     when Sketchup::ComponentInstance, Sketchup::Group
  #       return unless page.use_hidden_objects?
  #     else
  #       return unless page.use_hidden_geometry?
  #       return unless element.parent == Sketchup.active_model
  #     end
  #     page.get_drawingelement_visibility(element)
  #   end
  #
  # @param [Sketchup::Drawingelement] element
  #
  # @return [Boolean] - true if visible, false if not.
  #
  # @version SketchUp 2020.0
  def get_drawingelement_visibility(element)
  end

  # Returns the drawing elements whose visibility is overridden by this page.
  #
  # Only top-level Drawingelements are controlled by scene visibility. For nested
  # content, only ComponentInstance, Group and Image instances are affected.
  #
  # @example
  #   model = Sketchup.active_model
  #   page  = model.pages.add("My Page")
  #   hidden = page.hidden_entities
  #   if hidden
  #     puts "Hidden on page: #{hidden.size}"
  #   else
  #     puts "Page does not store hidden-entity visibility."
  #   end
  #
  # @note Behavior depends on which hidden-visibility flags are used:
  #   - SketchUp 2020.1 and later:
  #     - If page.use_hidden_geometry? && page.use_hidden_objects? => returns all
  #       top-level drawing elements hidden by the page.
  #     - If page.use_hidden_geometry? && !page.use_hidden_objects? => returns
  #       only non-instance drawing elements (not ComponentInstance or Group)
  #       hidden by the page.
  #     - If !page.use_hidden_geometry? && page.use_hidden_objects? => returns
  #       only ComponentInstance, Group and Image instances hidden by the page.
  #     - If both are +false+ => returns +nil+.
  #   - SketchUp 2019 and earlier:
  #     - Returns an array when page.use_hidden? is +true+, otherwise +nil+.
  #
  # @return [Array<Sketchup::Drawingelement>, nil] Returns +nil+ when the page does not store hidden-entity visibility.
  #
  # @version SketchUp 6.0
  def hidden_entities
  end

  # The {#include_in_animation=} method controls whether the page should be
  # included when exporting an animation from the model.
  #
  # @example Turn off animation for all pages.
  #   model = Sketchup.active_model
  #   model.pages.each { |page|
  #     page.include_in_animation = false
  #   }
  #
  # @param [Boolean] include
  #
  # @version SketchUp 2018
  def include_in_animation=(include)
  end

  # The {#include_in_animation?} method determines whether the page should be
  # included when exporting an animation from the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   in_animation = model.pages.select { |page| page.include_in_animation? }
  #
  # @return [Boolean]
  #
  # @version SketchUp 2018
  def include_in_animation?
  end

  # The label method retrieves the label for a page from the page tab.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   label = page.label
  #
  # @return [String] label for the page tab.
  #
  # @version SketchUp 6.0
  def label
  end

  # The {#layer_folders} method retrieves the hidden layer folders
  # associated with a page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   folders = page.layer_folders
  #
  # @return [Array<Sketchup::LayerFolder>, nil] Returns +nil+ if {#use_hidden_layers?}
  #   returns +false+
  #
  # @version SketchUp 2021.0
  def layer_folders
  end

  # The {#layers} method retrieves layers that don't use their default visibility
  # on this page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   layers = page.layers
  #
  # @example Test layer visibility
  #   def layer_visible_in_page?(layer, page)
  #     return layer.visible? if page.parent.selected_page == page
  #     return nil unless page.use_hidden_layers?
  #     page.layers.include?(layer) == hidden_by_default?(layer)
  #   end
  #
  #   def hidden_by_default?(layer)
  #     layer.page_behavior & LAYER_HIDDEN_BY_DEFAULT == LAYER_HIDDEN_BY_DEFAULT
  #   end
  #
  # @return [Array<Sketchup::Layer>, nil] Returns +nil+ if {#use_hidden_layers?}
  #   returns +false+
  #
  # @version SketchUp 6.0
  def layers
  end

  # The name method retrieves the name for a page from the page tab.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   name = page.name
  #
  # @return [String] name for the page tab.
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#name=} method sets the name for a page's tab. If the name is already used by another page,
  # a unique name is created.
  #
  # @bug Prior to SketchUp 2026.0 this method did not make the name unique.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   name = page.name = "Page Name"
  #
  # @param [String] name
  #   The name of the page to be set.
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The rendering_options method retrieves a RenderingOptions object for the
  # page.
  #
  # Since SketchUp 2026.0, modifying rendering_options of a scene is an undoable operation.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   renderingoptions = page.rendering_options
  #
  # @note Most rendering options of a scene are also present in {Sketchup::Style} and are governed by
  #   the selected style. Those options should not be changed from the scene.
  #   The ones not related to {Sketchup::Style} like fog (+DisplayFog+,
  #   +FogColor+) are safe to be changed from the scene.
  #
  # @return [Sketchup::RenderingOptions]
  #
  # @see #use_rendering_options?
  #
  # @see #use_style?
  #
  # @version SketchUp 6.0
  def rendering_options
  end

  # The {#set_drawingelement_visibility} method is used to change the visibility
  # of a drawing element on a particular page. Only drawing elements on the root
  # of the model, as well as nested instances of components, groups, and images
  # are controlled by Page visibility.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   point1 = Geom::Point3d.new(10, 0, 0)
  #   constpoint = entities.add_cpoint(point1)
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   page.set_drawingelement_visibility(constpoint, false)
  #
  # @param [Sketchup::Drawingelement] element
  #
  # @param [Boolean] visibility
  #
  # @return [Boolean]
  #
  # @version SketchUp 2020.0
  def set_drawingelement_visibility(element, visibility)
  end

  # The {#set_visibility} method sets the visibility for a layer or
  # layer folder on a page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   layer = model.layers.add("My Layer")
  #   page.set_visibility(layer, false)
  #
  # @overload set_visibility(layer, visible_for_page)
  #
  #   @param [Sketchup::Layer] layer
  #   @param [Boolean] visible_for_page
  #
  # @overload set_visibility(layer_folder, visible_for_page)
  #
  #   @version SketchUp 2021.0
  #   @param [Sketchup::LayerFolder] layer_folder
  #   @param [Boolean] visible_for_page
  #
  # @return [Sketchup::Page] the page whose visibility was set.
  #
  # @version SketchUp 6.0
  def set_visibility(arg1, arg2)
  end

  # The {#shadow_info} method retrieves the ShadowInfo object for the page.
  #
  # Since SketchUp 2026.0, modifying shadow_info of a scene is an undoable operation.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   shadowinfo = page.shadow_info
  #
  # @note While certain shadow settings, such as those available in the Shadows panel, can be
  #   controlled on a per-page basis, global settings like north
  #   angle, latitude, and longitude are managed at the model level and are not page-specific.
  #
  # @return [Sketchup::ShadowInfo]
  #
  # @version SketchUp 6.0
  def shadow_info
  end

  # The style method retrieves the style associated with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   style = page.style
  #
  # @return [Sketchup::Style] the Style object if successful
  #
  # @see #use_style?
  #
  # @see #use_rendering_options?
  #
  # @version SketchUp 6.0
  def style
  end

  # Get the amount of time that it takes to transition to this page during a
  # slideshow or animation export.  If this value is -1, it means to use the
  # default transition time.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   time = page.transition_time
  #
  # @return [Float] the amount of time it takes to
  #   transition to this page during a slideshow or animation
  #   export.
  #
  # @version SketchUp 6.0
  def transition_time
  end

  # The transition_time= method is used to set the transition time.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   time = page.transition_time=20
  #
  # @param [Float] trans_time
  #   The transition time in seconds.
  #
  # @version SketchUp 6.0
  def transition_time=(trans_time)
  end

  # The {#update} method performs an update on the page properties based on the
  # current view that the user has. What properties of the Page get updated are
  # controlled via an integer whose bits corresponds to different properties.
  # These flags can be used individually or combined using bitwise OR.
  #
  #   PAGE_USE_CAMERA            # Camera Location
  #   PAGE_USE_RENDERING_OPTIONS # Drawing Style
  #   PAGE_USE_SHADOWINFO        # Shadow Setting
  #   PAGE_USE_SKETCHCS          # Axes Location
  #   PAGE_USE_HIDDEN            # Hidden Geometry & Objects (Up 2019 and older)
  #   PAGE_USE_HIDDEN_GEOMETRY   # Hidden Geometry (SU 2020 and later)
  #   PAGE_USE_HIDDEN_OBJECTS    # Hidden Objects (SU 2020 and later)
  #   PAGE_USE_LAYER_VISIBILITY  # Visible Layers
  #   PAGE_USE_SECTION_PLANES    # Active Section Planes
  #   PAGE_USE_ALL               # All possible scene properties
  #   PAGE_USE_ENVIRONMENT       # Environment settings
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.update
  #
  #   # Updates Camera Location, Shadow Settings and Visible Layers.
  #   flags = PAGE_USE_CAMERA | PAGE_USE_SHADOWINFO | PAGE_USE_LAYER_VISIBILITY
  #   status = page.update(flags)
  #
  # @param [Integer] flags
  #   The bitwise OR of the bit flags.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def update(flags)
  end

  # The use_axes= method sets the page's axes property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   # Set use_axes to false
  #   status = page.use_axes=false
  #
  # @param [Boolean] setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @version SketchUp 6.0
  def use_axes=(setting)
  end

  # The use_axes? method determines whether you are storing the axes property
  # with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_axes?
  #
  # @return [Boolean] true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_axes?
  end

  # The use_camera= method sets the page's camera property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_camera = true
  #
  # @param [Boolean] setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @version SketchUp 6.0
  def use_camera=(setting)
  end

  # The use_camera? method determines whether you are storing the camera
  # property with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_camera?
  #
  # @return [Boolean] true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_camera?
  end

  # The {#use_environment=} method is used to set if the {Sketchup::Environment}
  # settings are used in the scene.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   page.use_environment?
  #   # => true
  #   page.use_environment = false
  #   page.use_environment?
  #   # => false
  #
  # @param [Boolean] use_environment
  #
  # @version SketchUp 2025.0
  def use_environment=(use_environment)
  end

  # The {#use_environment?} method is used to determine if the {Sketchup::Environment}
  # settings are used in the scene.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   page.use_environment?
  #   # => true
  #   page.use_environment = false
  #   page.use_environment?
  #   # => false
  #
  # @return [Boolean]
  #
  # @version SketchUp 2025.0
  def use_environment?
  end

  # The use_hidden= method sets the page's hidden property.
  #
  # @deprecated The functionality is replaced by {use_hidden_geometry=}
  #   and {use_hidden_objects=} in SketchUp 2020.1.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_hidden = false
  #
  # @param [Boolean] setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @see #use_hidden_geometry=
  #
  # @see #use_hidden_objects=
  #
  # @version SketchUp 6.0
  def use_hidden=(setting)
  end

  # The use_hidden? method determines whether you are storing the hidden
  # property with the page.
  #
  # @deprecated The functionality is replaced by {use_hidden_geometry?}
  #   and {use_hidden_objects?} in SketchUp 2020.1.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   status = page.use_hidden?
  #
  # @return [Boolean] true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @see #use_hidden_geometry?
  #
  # @see #use_hidden_objects?
  #
  # @version SketchUp 6.0
  def use_hidden?
  end

  # Sets the page's use hidden geometry property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   status = page.use_hidden_geometry = false
  #
  # @param [Boolean] setting
  #   `true` if you want your page to save this property,
  #   `false` if you do not want your page to save this property.
  #
  # @version SketchUp 2020.1
  def use_hidden_geometry=(setting)
  end

  # Returns the use hidden geometry property from the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   status = page.use_hidden_geometry?
  #
  # @return [Boolean]
  #
  # @version SketchUp 2020.1
  def use_hidden_geometry?
  end

  # The use_hidden_layers= method sets the page's hidden layers
  # property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_hidden_layers = false
  #
  # @param [Boolean] setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @version SketchUp 6.0
  def use_hidden_layers=(setting)
  end

  # The use_hidden_layers? method determines whether you are storing the hidden
  # layers property with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_hidden_layers?
  #
  # @return [Boolean] true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_hidden_layers?
  end

  # Sets the page's use hidden objects property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   status = page.use_hidden_objects = false
  #
  # @param [Boolean] setting
  #   `true` if you want your page to save this property,
  #   `false` if you do not want your page to save this property.
  #
  # @version SketchUp 2020.1
  def use_hidden_objects=(setting)
  end

  # Returns the use hidden objects property from the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add("My Page")
  #   status = page.use_hidden_objects?
  #
  # @return [Boolean]
  #
  # @version SketchUp 2020.1
  def use_hidden_objects?
  end

  # The {#use_point_cloud_data=} method is used to set whether the point cloud
  # visibility is saved with the page.
  #
  # @api PointCloudData
  #
  # @api Internal
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   page.use_point_cloud_data?
  #   # => true
  #   page.use_point_cloud_data = false
  #   page.use_point_cloud_data?
  #   # => false
  #
  # @param [Boolean] use_point_cloud_data
  #   `true` if you want your page to save point cloud visibility,
  #   `false` if you do not want your page to save this property.
  #
  # @version SketchUp 2026.2
  def use_point_cloud_data=(use_point_cloud_data)
  end

  # The {#use_point_cloud_data?} method is used to determine if the point cloud
  # visibility is saved with the page.
  #
  # @api PointCloudData
  #
  # @api Internal
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add('My Page')
  #   page.use_point_cloud_data?
  #   # => true
  #   page.use_point_cloud_data = false
  #   page.use_point_cloud_data?
  #   # => false
  #
  # @return [Boolean]
  #
  # @version SketchUp 2026.2
  def use_point_cloud_data?
  end

  # The use_rendering_options= method sets whether the page saves its own
  # unique rendering options. In the UI, this corresponds to the "Style and Fog"
  # checkbox in the Scenes panel.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   # This will uncheck the "Style and Fog" property for the page.
  #   page.use_rendering_options = false
  #
  # @note Setting this property will also affect the value of {#use_style?}.
  #   Setting it to `false` will also cause {#use_style?} to become `false`.
  #
  # @param [Boolean] use_options
  #   `true` to have the page save Style and Fog
  #   properties, `false` otherwise.
  #
  # @version SketchUp 6.0
  def use_rendering_options=(use_options)
  end

  # The use_rendering_options? method determines if the page saves its own
  # unique rendering options. In the UI, this corresponds to the "Style and Fog"
  # checkbox in the Scenes panel.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_rendering_options?
  #
  # @note This method is linked to {#use_style?}. They both check the same
  #   property and will always return the same value. This is because a
  #   {Sketchup::Style} is the object that contains rendering options.
  #
  # @return [Boolean] true if the page saves Style and Fog properties.
  #
  # @version SketchUp 6.0
  def use_rendering_options?
  end

  # The use_section_planes= method sets the page's section planes
  # property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_section_planes=false
  #
  # @param [Boolean] setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @version SketchUp 6.0
  def use_section_planes=(setting)
  end

  # The use_section_planes? method determines whether you are storing the
  # section planes property with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_section_planes?
  #
  # @return [Boolean] true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_section_planes?
  end

  # The use_shadow_info= method sets the page's shadow info property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_shadow_info=false
  #
  # @param [Boolean] setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @version SketchUp 6.0
  def use_shadow_info=(setting)
  end

  # The use_shadow_info? method determines whether you are storing the shadow
  # info property with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_shadow_info?
  #
  # @return [Boolean] true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_shadow_info?
  end

  # The use_style= method sets the style to be used by the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   style = model.styles[0]
  #   # This assigns the style AND sets page.use_rendering_options? to true.
  #   page.use_style = style
  #
  # @note This method is inconsistent with other setters in the API as it does
  #   not accept a boolean. To enable style properties for a page, you must
  #   assign a {Sketchup::Style} object.
  #
  # @note Assigning a style to a page will automatically set
  #   {#use_rendering_options?} to `true`.
  #
  # @param [Sketchup::Style] style
  #   The Style object to use.
  #
  # @return The assigned {Sketchup::Style} object.
  #
  # @version SketchUp 6.0
  def use_style=(style)
  end

  # The use_style? method determines if the page saves style properties.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   use_style = page.use_style?
  #
  # @note This method is linked to {#use_rendering_options?}. They both check the
  #   same property and will always return the same value. This is because a
  #   {Sketchup::Style} is the object that contains rendering options.
  #
  # @return [Boolean] true if the page saves Style and Fog properties.
  #
  # @version SketchUp 6.0
  def use_style?
  end

end

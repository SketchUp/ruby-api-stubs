# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Page class contains methods to extract information and modify the
# properties of an individual page.
#
# Note that inside the SketchUp user interface pages are called "Scenes".
#
# @version SketchUp 6.0
class Sketchup::Page < Sketchup::Entity

  # Instance Methods

  # The axes method returns the drawing axes for the page.
  #
  # @example
  #   page = Sketchup.active_model.pages.add("Example Page")
  #   xaxis = Geom::Vector3d.new(3, 5, 0)
  #   yaxis = xaxis * Z_AXIS
  #   page.axes.set([10,0,0], xaxis, yaxis, Z_AXIS)
  #
  # @return Axes - the axes for the page.
  #
  # @version SketchUp 2016
  def axes
  end

  # The camera method retrieves the camera for a particular page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   camera = page.camera
  #
  # @return camera - a Camera object if successful, nil if the page
  #   does not save camera information
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
  # @return time - the number of seconds of delay
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
  # @param seconds
  #   The number of seconds to set as the delay time.
  #
  # @return time - the number of seconds of delay
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
  # @return description - a textual description for the page.
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
  # @param description
  #   A string description for the page.
  #
  # @return description - the new string description for the page
  #
  # @version SketchUp 6.0
  def description=(description)
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
  # @param [Sketchup::Drawingelement] element
  #
  # @return [Boolean] - true if visible, false if not.
  #
  # @version SketchUp 2020.0
  def get_drawingelement_visibility(element)
  end

  # The hidden_entities method retrieves all hidden entities within a page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   entities = page.hidden_entities
  #
  # @return entities - an Entities object containing hidden
  #   entities on the page.
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
  # @return [Sketchup::Page]
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
  # @return label - a string label for the page tab
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
  #   def visible_in_scene?(layer, scene)
  #     scene.layers.include?(layer) == hidden_by_default?(layer)
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
  # @return label - a string name for the page tab
  #
  # @version SketchUp 6.0
  def name
  end

  # The name= method sets the name for a page's tab.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   name = page.name = "Page Name"
  #
  # @param name
  #   The name of the page to be set.
  #
  # @return name - the name that you have set
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The rendering_options method retrieves a RenderingOptions object for the
  # page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   renderingoptions = page.rendering_options
  #
  # @return renderingoptions - a RenderingOptions object
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

  # The shadow_info method retrieves the ShadowInfo object for the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   shadowinfo = page.shadow_info
  #
  # @return shadowinfo - a ShadowInfo object if successful, nil if
  #   the page does not save shadow information
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
  # @return style - the Style object if successful
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
  # @return transitiontime - the amount of time it takes to
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
  # @param trans_time
  #   The transition time in seconds.
  #
  # @return transitiontime - the new transition time
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
  # @param pagesettings
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
  #
  # @version SketchUp 6.0
  def use_axes=(pagesettings)
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
  # @return [Boolean] status - true if you are storing the this property with
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
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
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
  # @return [Boolean] status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_camera?
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
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
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
  # @return [Boolean] status - true if you are storing the this property with
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
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
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
  # @return [Boolean] status - true if you are storing the this property with
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

  # The use_rendering_optoins= method sets the page's display
  # settings property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_rendering_options = false
  #
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false
  #   if you are not saving the property.
  #
  # @version SketchUp 6.0
  def use_rendering_options=(setting)
  end

  # The use_rendering_options? method determines whether you are storing the
  # rendering options property with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_rendering_options?
  #
  # @return [Boolean] status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
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
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
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
  # @return [Boolean] status - true if you are storing the this property with
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
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
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
  # @return [Boolean] status - true if you are storing the this property with
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
  #   page.use_style = style
  #
  # @param style
  #   The Style object to use.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def use_style=(style)
  end

  # The use_style? method determines whether storing a style with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   use_style = page.use_style?
  #
  # @return [Boolean] status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @version SketchUp 6.0
  def use_style?
  end

end

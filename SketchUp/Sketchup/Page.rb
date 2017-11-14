# Copyright:: Copyright 2017 Trimble Inc.
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
  # @example Toggle inclusion in animation for all pages.
  #   model = Sketchup.active_model
  #   in_animation = model.pages.select { |page| page.include_in_animation? }
  #
  # @return [Boolean]
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

  # The layers method retrieves the non-visible layers associated with a page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   layers = page.layers
  #   # layers now contains the layers in the model that are
  #   # set to non-visible on the page
  #
  # @return layers - an array with zero or more Layers objects.
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

  # The set_visibility method sets the visibility for a layer on a page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   layer = page.layers[0]
  #   visibility = true
  #   page = page.set_visibility layer, visibility
  #
  # @param layer
  #   The layer whose visibility you are setting.
  #
  # @param visibility
  #   true if you want items on the layer to be visible, false if you do not want items visible.
  #
  # @return page - the page whose visibility was set.
  #
  # @version SketchUp 6.0
  def set_visibility(layer, visibility)
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

  # The update method performs an update on the page properties based on the
  # current view that the user has. Which parts of the Page get updated are
  # controlled via an integer whose bits represent which parts to update. You
  # can determine the integer you need to pass by adding these numbers together:
  #
  #   - 1 - Camera Location,
  #   - 2 - Drawing Style,
  #   - 4 - Shadow Settings,
  #   - 8 - Axes Location,
  #   - 16 - Hidden Geometry,
  #   - 32 - Visible Layers,
  #   - 64 - Active Section Planes.
  #
  # The bit code values are added together to provide the flags value.  For
  # example, to update the Camera Location, Axes Location, and Active Section
  # Planes properties, the flag would be 73 (1 + 8 + 64).
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.update
  #
  #   # Updates Camera Location (+1), Shadow Settings(+4),
  #   # and Visible Layers (+32).
  #   status = page.update(37)
  #
  # @param flags
  #   Integer representing the sum of the bit flags.
  #
  # @return status - true if successful, false if unsuccessful
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def use_camera?
  end

  # The use_hidden= method sets the page's hidden property.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_hidden=false
  #
  # @param setting
  #   true if you want your page to save this property, false
  #   if you do not want your page to save this property.
  #
  # @return status - true if you are saving the property, false if
  #   you are not saving the property.
  #
  # @version SketchUp 6.0
  def use_hidden=(setting)
  end

  # The use_hidden? method determines whether you are storing the hidden
  # property with the page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   page = pages.add "My Page"
  #   status = page.use_hidden?
  #
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def use_hidden?
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def use_hidden_layers?
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
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
  # @return status - true if you are storing the this property with
  #   the page, false if you are not storing this property
  #   with the page.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def use_style?
  end

end

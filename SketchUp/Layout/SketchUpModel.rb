# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A SketchUp Model entity. This is an instance of a SketchUp Model that is
# inserted into a .layout file. You can change the render mode, line weight,
# and set the current scene for the SketchUp Model with this interface.
#
# @example
#   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
#   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
#   model.current_scene = 2
#   model.view = Layout::SketchUpModel::FRONT_VIEW
#   model.render_mode = Layout::SketchUpModel::VECTOR_RENDER
#   model.render if model.render_needed?
#
# @version LayOut 2018
class Layout::SketchUpModel < Layout::Entity

  # Constants

  BOTTOM_RELATIVE_VIEW = nil # Stub value.
  BOTTOM_VIEW = nil # Stub value.

  BACK_VIEW = nil # Stub value.

  CUSTOM_VIEW = nil # Stub value.

  FRONT_VIEW = nil # Stub value.

  HYBRID_RENDER = nil # Stub value.

  ISO_VIEW = nil # Stub value.

  LEFT_VIEW = nil # Stub value.

  RIGHT_VIEW = nil # Stub value.

  RASTER_RENDER = nil # Stub value.

  TOP_RELATIVE_VIEW = nil # Stub value.
  TOP_VIEW = nil # Stub value.

  VECTOR_RENDER = nil # Stub value.

  # Instance Methods

  # The {#clip_mask} method returns the clip mask entity for the
  # {Layout::SketchUpModel}, or +nil+ if it does not have one. clip_mask can be a
  # {Layout::Rectangle}, {Layout::Ellipse}, or {Layout::Path}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   clip_mask = model.clip_mask
  #
  # @return [Layout::Entity]
  #
  # @version LayOut 2018
  def clip_mask
  end

  # The {#clip_mask=} method sets a clip mask for the {Layout::SketchUpModel}.
  # clip_mask can be a {Layout::Rectangle}, {Layout::Ellipse}, or {Layout::Path},
  # and it must not currently exist in a {Layout::Document}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   rect = Layout::Rectangle.new([[2, 2], [3, 3]]);
  #   model.clip_mask = rect
  #
  # @param [Layout::Entity] clip_mask
  #
  # @raise [ArgumentError] if clip_mask is already in a {Layout::Document}
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if clip_mask is not a {Layout::Rectangle},
  #   {Layout::Ellipse}, or {Layout::Path}
  #
  # @version LayOut 2018
  def clip_mask=(clip_mask)
  end

  # The {#current_scene} method returns the index of the most recently
  # selected scene of the {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   scene_index = model.current_scene
  #
  # @raise [ArgumentError] if the most recently selected scene no longer exists
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def current_scene
  end

  # The {#current_scene=} method sets the scene of the {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.current_scene = 1
  #
  # @param [Integer] index
  #   The index into the list of available scenes.
  #
  # @raise [IndexError] if index is out of range
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def current_scene=(index)
  end

  # The {#current_scene_modified?} method returns whether the most recently
  # selected scene of the {Layout::SketchUpModel} has been modified.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   modified = model.current_scene_modified?
  #
  # @raise [ArgumentError] if the most recently selected scene no longer exists
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def current_scene_modified?
  end

  # The {#display_background=} method sets whether the background is displayed
  # for the {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.display_background = false
  #
  # @param [Boolean] display
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def display_background=(display)
  end

  # The {#display_background?} method returns whether the background is displayed
  # for the {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   displayed = model.display_background?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def display_background?
  end

  # The {#entities} method returns the {Layout::Group} that represents the
  # {Layout::SketchUpModel} in its exploded form. The {Layout::Group} will
  # contain a {Layout::Image} for raster and hybrid-rendered models, and
  # will contain a {Layout::Group} of LayOut entities for
  # vector and hybrid-rendered models.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   entities = model.entities
  #
  # @return [Layout::Entity]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#initialize} method creates a new {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #
  # @param [String] path
  #   The path to a .skp file
  #
  # @param [Geom::Bounds2d] bounds
  #
  # @raise [ArgumentError] if bounds is zero size
  #
  # @raise [ArgumentError] if path does not point to a valid SketchUp Model file
  #
  # @return [Layout::SketchUpModel]
  #
  # @version LayOut 2018
  def initialize(path, bounds)
  end

  # The {#line_weight} method returns the line weight for the
  # {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   line_weight = model.line_weight
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def line_weight
  end

  # The {#line_weight=} method sets the line weight for the
  # {Layout::SketchUpModel}. Line weight must be at least 0.01.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.line_weight = 2.5
  #
  # @param [Float] line_weight
  #
  # @raise [ArgumentError] if line_weight is less than 0.01
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def line_weight=(line_weight)
  end

  # The {#model_to_paper_point} method converts the {Geom::Point3d} in the
  # {Layout::SketchUpModel} to a {Geom::Point2d} in paper space.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   point_3d = [200, 100, 100]
  #   point_2d = model.model_to_paper_point(point_3d)
  #
  # @param [Geom::Point3d] model_point
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def model_to_paper_point(model_point)
  end

  # The {#perspective=} method sets whether the {Layout::SketchUpModel}'s view
  # is perspective or orthographic.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.perspective = false
  #
  # @param [Boolean] perspective
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def perspective=(perspective)
  end

  # The {#perspective?} method returns whether the {Layout::SketchUpModel}'s view
  # is perspective or orthographic.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   perspective = model.perspective?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def perspective?
  end

  # The {#preserve_scale_on_resize=} method sets whether the scale is preserved
  # when the {Layout::SketchUpModel} is resized.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.preserve_scale_on_resize = true
  #
  # @param [Boolean] preserve_scale
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def preserve_scale_on_resize=(preserve_scale)
  end

  # The {#preserve_scale_on_resize?} method returns whether the scale is
  # preserved when the {Layout::SketchUpModel} is resized.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   will_scale = model.preserve_scale_on_resize?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def preserve_scale_on_resize?
  end

  # The {#render} method renders the {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.render if model.render_needed?
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @version LayOut 2018
  def render
  end

  # The {#render_mode} method returns the render mode of the
  # {Layout::SketchUpModel}.
  #
  # The render mode can be one of the following:
  # [+Layout::SketchUpModel::RASTER_RENDER+]
  # [+Layout::SketchUpModel::HYBRID_RENDER+]
  # [+Layout::SketchUpModel::VECTOR_RENDER+]
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   render_mode = model.render_mode
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def render_mode
  end

  # The {#render_mode=} method sets the render mode of the
  # {Layout::SketchUpModel}.
  #
  # The render mode can be one of the following:
  # [+Layout::SketchUpModel::RASTER_RENDER+]
  # [+Layout::SketchUpModel::HYBRID_RENDER+]
  # [+Layout::SketchUpModel::VECTOR_RENDER+]
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.render_mode = Layout::SketchUpModel::RASTER_RENDER
  #
  # @param [Integer] render_mode
  #
  # @raise [ArgumentError] if render_mode is not a valid render mode
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayertError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def render_mode=(render_mode)
  end

  # The {#render_needed?} method returns whether the {Layout::SketchUpModel}
  # needs to be rendered.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.render if model.render_needed?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def render_needed?
  end

  # The {#scale} method returns the scale of the {Layout::SketchUpModel}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   scale = model.scale
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def scale
  end

  # The {#scale=} method sets the scale of the {Layout::SketchUpModel}. Scale
  # must be at least 0.0000001, and the view must be orthographic.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.scale = 2.0
  #
  # @param [Float] scale
  #
  # @raise [ArgumentError] if the {Layout::SketchUpModel} view is not orthographic
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if scale is less than 0.0000001
  #
  # @version LayOut 2018
  def scale=(scale)
  end

  # The {#scenes} method returns an array of scene names that are available
  # for the {Layout::SketchUpModel}. The first scene will always be the default
  # scene, called "Last saved SketchUp View".
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   scene_names = model.scenes
  #
  # @return [Array<String>]
  #
  # @version LayOut 2018
  def scenes
  end

  # The {#view} method returns the standard view of the {Layout::SketchUpModel}.
  #
  # The standard view can be one of the following values:
  # [+Layout::SketchUpModel::CUSTOM_VIEW+]
  # [+Layout::SketchUpModel::TOP_VIEW+]
  # [+Layout::SketchUpModel::TOP_RELATIVE_VIEW+]
  # [+Layout::SketchUpModel::BOTTOM_VIEW+]
  # [+Layout::SketchUpModel::BOTTOM_RELATIVE_VIEW+]
  # [+Layout::SketchUpModel::FRONT_VIEW+]
  # [+Layout::SketchUpModel::BACK_VIEW+]
  # [+Layout::SketchUpModel::LEFT_VIEW+]
  # [+Layout::SketchUpModel::RIGHT_VIEW+]
  # [+Layout::SketchUpModel::ISO_VIEW+]
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   view = model.view
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def view
  end

  # The {#view=} method sets the standard view of the {Layout::SketchUpModel}.
  #
  # The standard view can be one of the following values:
  # [+Layout::SketchUpModel::TOP_VIEW+]
  # [+Layout::SketchUpModel::TOP_RELATIVE_VIEW+]
  # [+Layout::SketchUpModel::BOTTOM_VIEW+]
  # [+Layout::SketchUpModel::BOTTOM_RELATIVE_VIEW+]
  # [+Layout::SketchUpModel::FRONT_VIEW+]
  # [+Layout::SketchUpModel::BACK_VIEW+]
  # [+Layout::SketchUpModel::LEFT_VIEW+]
  # [+Layout::SketchUpModel::RIGHT_VIEW+]
  # [+Layout::SketchUpModel::ISO_VIEW+]
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 3, 3)
  #   model = Layout::SketchUpModel.new("C:/Path/to/model.skp", bounds)
  #   model.view = Layout::SketchUpModel::FRONT_VIEW
  #
  # @param [Integer] view
  #
  # @raise [ArgumentError] if view is not a valid standard view
  #
  # @raise [LockedEntityError] if the {Layout::SketchUpModel} is locked
  #
  # @raise [LockedLayerError] if the {Layout::SketchUpModel} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def view=(view)
  end

end

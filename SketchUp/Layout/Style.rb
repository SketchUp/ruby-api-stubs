# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# References a collection of style attributes that determine the visual
# appearance of {Layout::Entity}s. Style attributes are those attributes which
# the user can manipulate in LayOut's inspector windows. For example, shape
# style attributes that define stroke and fill, or text style attributes that
# define the font for {Layout::FormattedText}. The {Layout::Document} maintains
# a default style for various types of {Layout::Entity}s, and it is possible to
# apply the style of one entity to another. {Layout::Style} objects are
# transient and do not belong to a {Layout::Document}.
#
# @version LayOut 2018
class Layout::Style

  # Constants

  ALIGN_CENTER = nil # Stub value.
  ALIGN_LEFT = nil # Stub value.
  ALIGN_RIGHT = nil # Stub value.

  ARCHITECTURAL_INCHES = nil # Stub value.

  ANCHOR_BOTTOM = nil # Stub value.
  ANCHOR_CENTER = nil # Stub value.
  ANCHOR_TOP = nil # Stub value.

  ARROW_FILLED_CIRCLE = nil # Stub value.
  ARROW_FILLED_DIAMOND = nil # Stub value.
  ARROW_FILLED_SKINNY_TRIANGLE = nil # Stub value.
  ARROW_FILLED_SQUARE = nil # Stub value.
  ARROW_FILLED_TRIANGLE = nil # Stub value.
  ARROW_NONE = nil # Stub value.
  ARROW_OPEN_ARROW_120 = nil # Stub value.
  ARROW_OPEN_ARROW_90 = nil # Stub value.
  ARROW_OPEN_CIRCLE = nil # Stub value.
  ARROW_OPEN_DIAMOND = nil # Stub value.
  ARROW_OPEN_SKINNY_TRIANGLE = nil # Stub value.
  ARROW_OPEN_SQUARE = nil # Stub value.
  ARROW_OPEN_TRIANGLE = nil # Stub value.
  ARROW_OVERRUN = nil # Stub value.
  ARROW_SLASH_LEFT = nil # Stub value.
  ARROW_SLASH_RIGHT = nil # Stub value.
  ARROW_STAR = nil # Stub value.
  ARROW_T = nil # Stub value.
  ARROW_UNDERRUN = nil # Stub value.

  CAP_STYLE_FLAT = nil # Stub value.
  CAP_STYLE_ROUND = nil # Stub value.
  CAP_STYLE_SQUARE = nil # Stub value.

  DECIMAL_CENTIMETERS = nil # Stub value.
  DECIMAL_FEET = nil # Stub value.
  DECIMAL_INCHES = nil # Stub value.
  DECIMAL_METERS = nil # Stub value.
  DECIMAL_MILLIMETERS = nil # Stub value.
  DECIMAL_POINTS = nil # Stub value.

  DEGREES = nil # Stub value.

  DIMENSION_END_EXTENSION_LINE = nil # Stub value.
  DIMENSION_LEADER_LINE = nil # Stub value.
  DIMENSION_LINE = nil # Stub value.
  DIMENSION_START_EXTENSION_LINE = nil # Stub value.
  DIMENSION_TEXT = nil # Stub value.

  DIMENSION_TEXT_ABOVE = nil # Stub value.
  DIMENSION_TEXT_BELOW = nil # Stub value.
  DIMENSION_TEXT_CENTER = nil # Stub value.
  DIMENSION_TEXT_HORIZONTAL = nil # Stub value.
  DIMENSION_TEXT_OFFSET = nil # Stub value.
  DIMENSION_TEXT_PARALLEL = nil # Stub value.
  DIMENSION_TEXT_PERPENDICULAR = nil # Stub value.
  DIMENSION_TEXT_VERTICAL = nil # Stub value.

  ENGINEERING_FEET = nil # Stub value.

  FRACTIONAL_INCHES = nil # Stub value.

  JOIN_STYLE_BEVEL = nil # Stub value.
  JOIN_STYLE_MITER = nil # Stub value.
  JOIN_STYLE_ROUND = nil # Stub value.

  LABEL_LEADER_LINE = nil # Stub value.
  LABEL_TEXT = nil # Stub value.

  NORMAL_SCRIPT = nil # Stub value.

  RADIANS = nil # Stub value.

  SUPER_SCRIPT = nil # Stub value.

  STROKE_PATTERN_CENTER = nil # Stub value.
  STROKE_PATTERN_DASH = nil # Stub value.
  STROKE_PATTERN_DASH_DASH_DOT = nil # Stub value.
  STROKE_PATTERN_DASH_DASH_DOT_DOT = nil # Stub value.
  STROKE_PATTERN_DASH_DASH_DOT_DOT_DOT = nil # Stub value.
  STROKE_PATTERN_DASH_DOT = nil # Stub value.
  STROKE_PATTERN_DASH_DOT_DOT = nil # Stub value.
  STROKE_PATTERN_DASH_DOT_DOT_DOT = nil # Stub value.
  STROKE_PATTERN_DASH_SPACE = nil # Stub value.
  STROKE_PATTERN_DOT = nil # Stub value.
  STROKE_PATTERN_PHANTOM = nil # Stub value.
  STROKE_PATTERN_SOLID = nil # Stub value.

  SUB_SCRIPT = nil # Stub value.

  UNDERLINE_DOUBLE = nil # Stub value.
  UNDERLINE_NONE = nil # Stub value.
  UNDERLINE_SINGLE = nil # Stub value.

  # Class Methods

  # The {.arrow_type_filled?} method returns whether the specified arrow type is
  # filled or not.
  #
  # The arrow type can be one of the following values:
  # [+Layout::Style::ARROW_NONE+]
  # [+Layout::Style::ARROW_FILLED_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_TRIANGLE+]
  # [+Layout::Style::ARROW_FILLED_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_ARROW_90+]
  # [+Layout::Style::ARROW_OPEN_ARROW_120+]
  # [+Layout::Style::ARROW_FILLED_CIRCLE+]
  # [+Layout::Style::ARROW_OPEN_CIRCLE+]
  # [+Layout::Style::ARROW_FILLED_SQUARE+]
  # [+Layout::Style::ARROW_OPEN_SQUARE+]
  # [+Layout::Style::ARROW_FILLED_DIAMOND+]
  # [+Layout::Style::ARROW_OPEN_DIAMOND+]
  # [+Layout::Style::ARROW_STAR+]
  # [+Layout::Style::ARROW_T+]
  # [+Layout::Style::ARROW_SLASH_RIGHT+]
  # [+Layout::Style::ARROW_SLASH_LEFT+]
  # [+Layout::Style::ARROW_UNDERRUN+]
  # [+Layout::Style::ARROW_OVERRUN+]
  #
  # @example
  #   # Returns false
  #   filled = Layout::Style.arrow_type_filled?(Layout::Style::ARROW_T)
  #   # Returns true
  #   filled = Layout::Style.arrow_type_filled?(Layout::Style::ARROW_FILLED_SQUARE)
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def self.arrow_type_filled?(arrow_type)
  end

  # Instance Methods

  # The {#dimension_rotation_alignment} method returns the rotational text
  # alignment for {Layout::LinearDimension} text, or +nil+ if the {Layout::Style}
  # does not have a value for that setting.
  #
  # The rotational alignment type can be one of the following values:
  # [+Layout::Style::DIMENSION_TEXT_HORIZONTAL+]
  # [+Layout::Style::DIMENSION_TEXT_VERTICAL+]
  # [+Layout::Style::DIMENSION_TEXT_PARALLEL+]
  # [+Layout::Style::DIMENSION_TEXT_PERPENDICULAR+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   dimension_alignment = style.dimension_rotation_alignment
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def dimension_rotation_alignment
  end

  # The {#dimension_rotation_alignment=} method sets the rotational text
  # alignment.
  #
  # The rotational alignment type can be one of the following values:
  # [+Layout::Style::DIMENSION_TEXT_HORIZONTAL+]
  # [+Layout::Style::DIMENSION_TEXT_VERTICAL+]
  # [+Layout::Style::DIMENSION_TEXT_PARALLEL+]
  # [+Layout::Style::DIMENSION_TEXT_PERPENDICULAR+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.dimension_rotation_alignment = Layout::Style::DIMENSION_TEXT_HORIZONTAL
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] alignment_type
  #
  # @raise [ArgumentError] if alignment_type is not a valid alignment type
  #
  # @version LayOut 2018
  def dimension_rotation_alignment=(alignment_type)
  end

  # The {#dimension_units} method returns the unit format and precision for
  # dimensions, or +nil+ if the {Layout::Style} does not have a value for that
  # setting. Units may be for either {Layout::LinearDimension}s or
  # {Layout::AngularDimension}s, but not both.
  #
  # The units can be one of the following values:
  # [+Layout::Style::FRACTIONAL_INCHES+]
  # [+Layout::Style::ARCHITECTURAL_INCHES+]
  # [+Layout::Style::ENGINEERING_FEET+]
  # [+Layout::Style::DECIMAL_INCHES+]
  # [+Layout::Style::DECIMAL_FEET+]
  # [+Layout::Style::DECIMAL_MILLIMETERS+]
  # [+Layout::Style::DECIMAL_CENTIMETERS+]
  # [+Layout::Style::DECIMAL_METERS+]
  # [+Layout::Style::DECIMAL_POINTS+]
  # [+Layout::Style::DEGREES+]
  # [+Layout::Style::RADIANS+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   units, precision = style.dimension_units
  #
  # @return [Array(Integer, Float), nil]
  #
  # @version LayOut 2018
  def dimension_units
  end

  # The {#dimension_vertical_alignment} method returns the vertical text
  # alignment for {Layout::LinearDimension} text, or +nil+ if the {Layout::Style}
  # does not have a value for that setting.
  #
  # The vertical alignment type can be one of the following values:
  # [+Layout::Style::DIMENSION_TEXT_ABOVE+]
  # [+Layout::Style::DIMENSION_TEXT_CENTER+]
  # [+Layout::Style::DIMENSION_TEXT_BELOW+]
  # [+Layout::Style::DIMENSION_TEXT_OFFSET+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   dimension_alignment = style.dimension_vertical_alignment
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def dimension_vertical_alignment
  end

  # The {#dimension_vertical_alignment=} method sets the vertical text
  # alignment for {Layout::LinearDimension} text.
  #
  # The vertical alignment type can be one of the following values:
  # [+Layout::Style::DIMENSION_TEXT_ABOVE+]
  # [+Layout::Style::DIMENSION_TEXT_CENTER+]
  # [+Layout::Style::DIMENSION_TEXT_BELOW+]
  # [+Layout::Style::DIMENSION_TEXT_OFFSET+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.dimension_vertical_alignment = Layout::Style::DIMENSION_TEXT_ABOVE
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] alignment_type
  #
  # @raise [ArgumentError] if alignment_type is not a valid alignment type
  #
  # @version LayOut 2018
  def dimension_vertical_alignment=(alignment_type)
  end

  # The {#end_arrow_size} method returns the size of the end arrow, or +nil+ if
  # the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   arrow_size = style.start_arrow_size
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def end_arrow_size
  end

  # The {#end_arrow_size=} method sets the size of the end arrow. The minimum
  # size is 0.25.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.end_arrow_size = 2.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] arrow_size
  #
  # @raise [ArgumentError] if arrow_size is less than 0.25
  #
  # @version LayOut 2018
  def end_arrow_size=(arrow_size)
  end

  # The {#end_arrow_type} method returns the type of end arrow, or +nil+ if
  # the {Layout::Style} does not have a value for that setting.
  #
  # The arrow type can be one of the following values:
  # [+Layout::Style::ARROW_NONE+]
  # [+Layout::Style::ARROW_FILLED_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_TRIANGLE+]
  # [+Layout::Style::ARROW_FILLED_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_ARROW_90+]
  # [+Layout::Style::ARROW_OPEN_ARROW_120+]
  # [+Layout::Style::ARROW_FILLED_CIRCLE+]
  # [+Layout::Style::ARROW_OPEN_CIRCLE+]
  # [+Layout::Style::ARROW_FILLED_SQUARE+]
  # [+Layout::Style::ARROW_OPEN_SQUARE+]
  # [+Layout::Style::ARROW_FILLED_DIAMOND+]
  # [+Layout::Style::ARROW_OPEN_DIAMOND+]
  # [+Layout::Style::ARROW_STAR+]
  # [+Layout::Style::ARROW_T+]
  # [+Layout::Style::ARROW_SLASH_RIGHT+]
  # [+Layout::Style::ARROW_SLASH_LEFT+]
  # [+Layout::Style::ARROW_UNDERRUN+]
  # [+Layout::Style::ARROW_OVERRUN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   arrow_type = style.end_arrow_type
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def end_arrow_type
  end

  # The {#end_arrow_type=} method sets the type of end arrow.
  #
  # The arrow type can be one of the following values:
  # [+Layout::Style::ARROW_NONE+]
  # [+Layout::Style::ARROW_FILLED_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_TRIANGLE+]
  # [+Layout::Style::ARROW_FILLED_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_ARROW_90+]
  # [+Layout::Style::ARROW_OPEN_ARROW_120+]
  # [+Layout::Style::ARROW_FILLED_CIRCLE+]
  # [+Layout::Style::ARROW_OPEN_CIRCLE+]
  # [+Layout::Style::ARROW_FILLED_SQUARE+]
  # [+Layout::Style::ARROW_OPEN_SQUARE+]
  # [+Layout::Style::ARROW_FILLED_DIAMOND+]
  # [+Layout::Style::ARROW_OPEN_DIAMOND+]
  # [+Layout::Style::ARROW_STAR+]
  # [+Layout::Style::ARROW_T+]
  # [+Layout::Style::ARROW_SLASH_RIGHT+]
  # [+Layout::Style::ARROW_SLASH_LEFT+]
  # [+Layout::Style::ARROW_UNDERRUN+]
  # [+Layout::Style::ARROW_OVERRUN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.end_arrow_type = Layout::Style::ARROW_SLASH_LEFT
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] arrow_type
  #
  # @raise [ArgumentError] if arrow_type is not a valid arrow type
  #
  # @version LayOut 2018
  def end_arrow_type=(arrow_type)
  end

  # The {#fill_color} method returns the solid file color, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   color = style.fill_color
  #
  # @return [Sketchup::Color, nil]
  #
  # @version LayOut 2018
  def fill_color
  end

  # The {#fill_color=} method sets the solid fill color.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.solid_filled = true
  #   style.fill_color = Sketchup::Color.new(0, 255, 0, 255)
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Sketchup::Color] fill_color
  #
  # @version LayOut 2018
  def fill_color=(fill_color)
  end

  # The {#font_family} method returns the text font name, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   font_name = style.font_family
  #
  # @return [String, nil]
  #
  # @version LayOut 2018
  def font_family
  end

  # The {#font_family=} method sets the text font name.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.font_family = "Verdana"
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [String] font_family
  #
  # @version LayOut 2018
  def font_family=(font_family)
  end

  # The {#font_size} method returns the font size, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   font_size = style.font_size
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def font_size
  end

  # The {#font_size=} method sets the font size.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.font_size = 12.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] font_size
  #
  # @version LayOut 2018
  def font_size=(font_size)
  end

  # The {#get_sub_style} method returns the {Layout::Style} for a sub-entity
  # from the {Layout::Style}. This would be used to get the current style of a
  # {Layout::LinearDimension}'s text, for example.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   sub_style = style.get_sub_style(Layout::Style::DIMENSION_TEXT)
  #
  # @param [Integer] type
  #
  # @raise [ArgumentError] if type is not a valid sub-entity type.
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def get_sub_style(type)
  end

  # The {#initialize} method creates a new {Layout::Style}.
  #
  # @example
  #   style = Layout::Style.new
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def initialize
  end

  # The {#pattern_fill_origin} method returns the starting piont for the pattern
  # fill, or +nil+ if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   origin = style.pattern_fill_origin
  #
  # @return [Geom::Point2d, nil]
  #
  # @version LayOut 2018
  def pattern_fill_origin
  end

  # The {#pattern_fill_origin=} method sets the starting point for the pattern
  # fill.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.pattern_filled = true
  #   style.pattern_fill_path = "C:/path/to/pattern.png"
  #   style.pattern_fill_origin = [2, 1]
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Geom::Point2d] origin
  #
  # @version LayOut 2018
  def pattern_fill_origin=(origin)
  end

  # The {#pattern_fill_path} method returns the file path to the pattern fill
  # image, or +nil+ if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   path = style.pattern_fill_path
  #
  # @return [String, nil]
  #
  # @version LayOut 2018
  def pattern_fill_path
  end

  # The {#pattern_fill_path=} method sets the path to the image to use for the
  # pattern fill.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.pattern_filled = true
  #   style.pattern_fill_path = "C:/path/to/pattern.png"
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [String] path
  #
  # @raise [ArgumentError] if the image specified by path could not be loaded
  #
  # @version LayOut 2018
  def pattern_fill_path=(path)
  end

  # The {#pattern_fill_rotation} method returns the rotation of the pattern fill
  # image in degrees, or +nil+ if the {Layout::Style} does not have a value for
  # that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   rotation = style.pattern_fill_rotation
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def pattern_fill_rotation
  end

  # The {#pattern_fill_rotation=} method sets the rotation in degrees of the
  # pattern fill image.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.pattern_filled = true
  #   style.pattern_fill_path = "C:/path/to/pattern.png"
  #   style.pattern_fill_rotation = -90.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] rotation
  #
  # @version LayOut 2018
  def pattern_fill_rotation=(rotation)
  end

  # The {#pattern_fill_scale} method returns the pattern fill scale, or +nil+
  # if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   scale = style.pattern_fill_scale
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def pattern_fill_scale
  end

  # The {#pattern_fill_scale=} method sets the pattern fill scale.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.pattern_filled = true
  #   style.pattern_fill_path = "C:/path/to/pattern.png"
  #   style.pattern_fill_scale = 2.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] scale
  #
  # @raise [ArgumentError] if scale is less than 0.1 or greater than 9999.0
  #
  # @version LayOut 2018
  def pattern_fill_scale=(scale)
  end

  # The {#pattern_filled} method returns whether the {Layout::Style} has a
  # pattern fill, or +nil+ if the {Layout::Style} does not have a value for that
  # setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   is_filled = style.pattern_filled
  #
  # @return [Boolean, nil]
  #
  # @version LayOut 2018
  def pattern_filled
  end

  # The {#pattern_filled=} method sets whether the {Layout::Style} has a pattern
  # fill.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.pattern_filled = true
  #   style.pattern_fill_path = "C:/path/to/pattern.png"
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Boolean] filled
  #
  # @version LayOut 2018
  def pattern_filled=(filled)
  end

  # The {#set_dimension_units} method sets the unit format and precision for
  # dimensions. Units may be for either {Layout::LinearDimension}s or
  # {Layout::AngularDimension}s, but not both.
  #
  # The units can be one of the following values:
  # [+Layout::Style::FRACTIONAL_INCHES+]
  # [+Layout::Style::ARCHITECTURAL_INCHES+]
  # [+Layout::Style::ENGINEERING_FEET+]
  # [+Layout::Style::DECIMAL_INCHES+]
  # [+Layout::Style::DECIMAL_FEET+]
  # [+Layout::Style::DECIMAL_MILLIMETERS+]
  # [+Layout::Style::DECIMAL_CENTIMETERS+]
  # [+Layout::Style::DECIMAL_METERS+]
  # [+Layout::Style::DECIMAL_POINTS+]
  # [+Layout::Style::DEGREES+]
  # [+Layout::Style::RADIANS+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   precision = 0.0001
  #   units = Layout::Style::DECIMAL_MILLIMETERS
  #   style.set_dimension_units(units, precision)
  #
  # @param [Integer] units
  #
  # @param [Float] precision
  #
  # @raise [ArgumentError] if units is not a valid unit format
  #
  # @version LayOut 2018
  def set_dimension_units(units, precision)
  end

  # The {#set_sub_style} method adds a {Layout::Style} to apply to a
  # {Layout::Entity}'s sub-entity. This would be used to set the arrow type for
  # extension lines of a {Layout::LinearDimension}, for example.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   sub_style = style.get_sub_style(Layout::Style::DIMENSION_TEXT)
  #   sub_style.dimension_vertical_alignment = Layout::Style::DIMENSION_TEXT_BELOW
  #   style.set_sub_style(Layout::Style::DIMENSION_TEXT, sub_style)
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] type
  #
  # @param [Layout::Style] sub_style
  #
  # @raise [ArgumentError] if type is not a valid sub-entity type.
  #
  # @version LayOut 2018
  def set_sub_style(type, sub_style)
  end

  # The {#solid_filled} method returns whether the {Layout::Style} has a solid
  # fill, or +nil+ if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   is_filled = style.solid_filled
  #
  # @return [Boolean, nil]
  #
  # @version LayOut 2018
  def solid_filled
  end

  # The {#solid_filled=} method sets whether the {Layout::Style} has a solid fill.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.solid_filled = true
  #   style.fill_color = Sketchup::Color.new(0, 255, 0, 255)
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Boolean] filled
  #
  # @version LayOut 2018
  def solid_filled=(filled)
  end

  # The {#start_arrow_size} method returns the size of the start arrow, or +nil+
  # if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   arrow_size = style.start_arrow_size
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def start_arrow_size
  end

  # The {#start_arrow_size=} method sets the size of the start arrow. The minimum
  # size is 0.25.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.start_arrow_size = 2.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] arrow_size
  #
  # @raise [ArgumentError] if arrow_size is less than 0.25
  #
  # @version LayOut 2018
  def start_arrow_size=(arrow_size)
  end

  # The {#start_arrow_type} method returns the type of start arrow, or +nil+ if
  # the {Layout::Style} does not have a value for that setting.
  #
  # The arrow type can be one of the following values:
  # [+Layout::Style::ARROW_NONE+]
  # [+Layout::Style::ARROW_FILLED_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_TRIANGLE+]
  # [+Layout::Style::ARROW_FILLED_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_ARROW_90+]
  # [+Layout::Style::ARROW_OPEN_ARROW_120+]
  # [+Layout::Style::ARROW_FILLED_CIRCLE+]
  # [+Layout::Style::ARROW_OPEN_CIRCLE+]
  # [+Layout::Style::ARROW_FILLED_SQUARE+]
  # [+Layout::Style::ARROW_OPEN_SQUARE+]
  # [+Layout::Style::ARROW_FILLED_DIAMOND+]
  # [+Layout::Style::ARROW_OPEN_DIAMOND+]
  # [+Layout::Style::ARROW_STAR+]
  # [+Layout::Style::ARROW_T+]
  # [+Layout::Style::ARROW_SLASH_RIGHT+]
  # [+Layout::Style::ARROW_SLASH_LEFT+]
  # [+Layout::Style::ARROW_UNDERRUN+]
  # [+Layout::Style::ARROW_OVERRUN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   arrow_type = style.start_arrow_type
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def start_arrow_type
  end

  # The {#start_arrow_type=} method sets the type of start arrow.
  #
  # The arrow type can be one of the following values:
  # [+Layout::Style::ARROW_NONE+]
  # [+Layout::Style::ARROW_FILLED_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_TRIANGLE+]
  # [+Layout::Style::ARROW_FILLED_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_SKINNY_TRIANGLE+]
  # [+Layout::Style::ARROW_OPEN_ARROW_90+]
  # [+Layout::Style::ARROW_OPEN_ARROW_120+]
  # [+Layout::Style::ARROW_FILLED_CIRCLE+]
  # [+Layout::Style::ARROW_OPEN_CIRCLE+]
  # [+Layout::Style::ARROW_FILLED_SQUARE+]
  # [+Layout::Style::ARROW_OPEN_SQUARE+]
  # [+Layout::Style::ARROW_FILLED_DIAMOND+]
  # [+Layout::Style::ARROW_OPEN_DIAMOND+]
  # [+Layout::Style::ARROW_STAR+]
  # [+Layout::Style::ARROW_T+]
  # [+Layout::Style::ARROW_SLASH_RIGHT+]
  # [+Layout::Style::ARROW_SLASH_LEFT+]
  # [+Layout::Style::ARROW_UNDERRUN+]
  # [+Layout::Style::ARROW_OVERRUN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.start_arrow_type = Layout::Style::ARROW_SLASH_RIGHT
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] arrow_type
  #
  # @raise [ArgumentError] if arrow_type is not a valid arrow type
  #
  # @version LayOut 2018
  def start_arrow_type=(arrow_type)
  end

  # The {#stroke_cap_style} method returns the stroke cap style, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The cap style can be one of the following:
  # [+Layout::Style::CAP_STYLE_FLAT+]
  # [+Layout::Style::CAP_STYLE_ROUND+]
  # [+Layout::Style::CAP_STYLE_SQUARE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   cap_style = style.stroke_cap_style
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def stroke_cap_style
  end

  # The {#stroke_cap_style=} method sets the stroke cap style.
  #
  # The cap style can be one of the following:
  # [+Layout::Style::CAP_STYLE_FLAT+]
  # [+Layout::Style::CAP_STYLE_ROUND+]
  # [+Layout::Style::CAP_STYLE_SQUARE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroke_cap_style = Layout::Style::CAP_STYLE_SQUARE
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] cap_style
  #
  # @raise [ArgumentError] if cap_style is not a valid cap style
  #
  # @version LayOut 2018
  def stroke_cap_style=(cap_style)
  end

  # The {#stroke_color} method returns the stroke color, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   color = style.stroke_color
  #
  # @return [Sketchup::Color, nil]
  #
  # @version LayOut 2018
  def stroke_color
  end

  # The {#stroke_color=} method sets the stroke color.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroke_color = Sketchup::Color.new(128, 128, 128, 255)
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Sketchup::Color] stroke_color
  #
  # @version LayOut 2018
  def stroke_color=(stroke_color)
  end

  # The {#stroke_join_style} method returns the stroke join style, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The join style can be one of the following:
  # [+Layout::Style::JOIN_STYLE_MITER+]
  # [+Layout::Style::JOIN_STYLE_ROUND+]
  # [+Layout::Style::JOIN_STYLE_BEVEL+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   join_style = style.stroke_join_style
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def stroke_join_style
  end

  # The {#stroke_join_style=} method sets the stroke join style.
  #
  # The join style can be one of the following:
  # [+Layout::Style::JOIN_STYLE_MITER+]
  # [+Layout::Style::JOIN_STYLE_ROUND+]
  # [+Layout::Style::JOIN_STYLE_BEVEL+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroke_join_style = Layout::Style::JOIN_STYLE_BEVEL
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] join_style
  #
  # @raise [ArgumentError] if join_style is not a valid join style
  #
  # @version LayOut 2018
  def stroke_join_style=(join_style)
  end

  # The {#stroke_pattern} method returns the stroke pattern, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The stroke pattern can be one of the following:
  # [+Layout::Style::STROKE_PATTERN_SOLID+]
  # [+Layout::Style::STROKE_PATTERN_DASH+]
  # [+Layout::Style::STROKE_PATTERN_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_SPACE+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DOT_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DASH_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DASH_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DASH_DOT_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_CENTER+]
  # [+Layout::Style::STROKE_PATTERN_PHANTOM+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   pattern = style.stroke_pattern
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def stroke_pattern
  end

  # The {#stroke_pattern=} method sets the stroke pattern.
  #
  # The stroke pattern can be one of the following:
  # [+Layout::Style::STROKE_PATTERN_SOLID+]
  # [+Layout::Style::STROKE_PATTERN_DASH+]
  # [+Layout::Style::STROKE_PATTERN_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_SPACE+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DOT_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DASH_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DASH_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_DASH_DASH_DOT_DOT_DOT+]
  # [+Layout::Style::STROKE_PATTERN_CENTER+]
  # [+Layout::Style::STROKE_PATTERN_PHANTOM+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroke_pattern = Layout::Style::CAP_STYLE_SQUARE
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] pattern
  #
  # @raise [ArgumentError] if pattern is not a valid stroke pattern
  #
  # @version LayOut 2018
  def stroke_pattern=(pattern)
  end

  # The {#stroke_pattern_scale} method returns the stroke pattern scale, or +nil+
  # if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   pattern_scale = style.stroke_pattern_scale
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def stroke_pattern_scale
  end

  # The {#stroke_pattern_scale=} method sets the stroke pattern scale.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroke_pattern_scale = 2.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] scale
  #
  # @raise [ArgumentError] if scale is less than 0.1 or greater than 9999.0
  #
  # @version LayOut 2018
  def stroke_pattern_scale=(scale)
  end

  # The {#stroke_width} method returns the stroke width, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   stroke_width = style.stroke_width
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def stroke_width
  end

  # The {#stroke_width=} method sets the stroke width.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroke_width = 2.0
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Float] stroke_width
  #
  # @raise [ArgumentError] if stroke_width is less than 0.0
  #
  # @version LayOut 2018
  def stroke_width=(stroke_width)
  end

  # The {#stroked} method returns whether the {Layout::Style} has a stroke, or
  # +nil+ if the {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   has_stroke = style.stroked
  #
  # @return [Boolean, nil]
  #
  # @version LayOut 2018
  def stroked
  end

  # The {#stroked=} method sets whether the {Layout::Style} has a stroke.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.stroked = true
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Boolean] stroked
  #
  # @version LayOut 2018
  def stroked=(stroked)
  end

  # The {#suppress_dimension_units} method returns whether the units for
  # dimensions are suppressed, or +nil+ if the {Layout::Style} does not have a
  # value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   suppressed = style.suppress_dimension_units
  #
  # @return [Boolean, nil]
  #
  # @version LayOut 2018
  def suppress_dimension_units
  end

  # The {#suppress_dimension_units=} method sets whether the units for
  # dimensions are suppressed.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.suppress_dimension_units = true
  #
  # @param [Boolean] suppress
  #
  # @version LayOut 2018
  def suppress_dimension_units=(suppress)
  end

  # The {#text_alignment} method returns the text alignment, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The alignment type can be one of the following values:
  # [+Layout::Style::ALIGN_LEFT+]
  # [+Layout::Style::ALIGN_RIGHT+]
  # [+Layout::Style::ALIGN_CENTER+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   alignment = style.text_alignment
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def text_alignment
  end

  # The {#text_alignment=} method sets the text alignment.
  #
  # The alignment type can be one of the following values:
  # [+Layout::Style::ALIGN_LEFT+]
  # [+Layout::Style::ALIGN_RIGHT+]
  # [+Layout::Style::ALIGN_CENTER+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_alignment = Layout::Style::ALIGN_CENTER
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] alignment_type
  #
  # @raise [ArgumentError] if alignment_type is not a valid alignment type
  #
  # @version LayOut 2018
  def text_alignment=(alignment_type)
  end

  # The {#text_anchor} method returns the text anchor type, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The anchor type can be one of the following values:
  # [+Layout::Style::ANCHOR_TOP+]
  # [+Layout::Style::ANCHOR_CENTER+]
  # [+Layout::Style::ANCHOR_BOTTOM+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   anchor_type = style.text_anchor
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def text_anchor
  end

  # The {#text_anchor=} method sets the text anchor type.
  #
  # The anchor type can be one of the following values:
  # [+Layout::Style::ANCHOR_TOP+]
  # [+Layout::Style::ANCHOR_CENTER+]
  # [+Layout::Style::ANCHOR_BOTTOM+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_anchor = Layout::Style::ANCHOR_BOTTOM
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] anchor_type
  #
  # @raise [ArgumentError] if anchor_type is not a valid anchor type
  #
  # @version LayOut 2018
  def text_anchor=(anchor_type)
  end

  # The {#text_bold} method returns whether text is bold, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   bold = style.text_bold
  #
  # @return [Boolean, nil]
  #
  # @version LayOut 2018
  def text_bold
  end

  # The {#text_bold=} method sets whether text is bold.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_bold = true
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Boolean] bold
  #
  # @version LayOut 2018
  def text_bold=(bold)
  end

  # The {#text_color} method returns the text color, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   color = style.text_color
  #
  # @return [Sketchup::Color, nil]
  #
  # @version LayOut 2018
  def text_color
  end

  # The {#text_color=} method sets the text color.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_color = Sketchup::Color.new(255, 0, 0, 255)
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Sketchup::Color] color
  #
  # @version LayOut 2018
  def text_color=(color)
  end

  # The {#text_elevation} method returns the text elevation, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The elevation type can be one of the following values:
  # [+Layout::Style::NORMAL_SCRIPT+]
  # [+Layout::Style::SUPER_SCRIPT+]
  # [+Layout::Style::SUB_SCRIPT+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   elevation = style.text_elevation
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def text_elevation
  end

  # The {#text_elevation=} method sets the text elevation.
  #
  # The elevation type can be one of the following values:
  # [+Layout::Style::NORMAL_SCRIPT+]
  # [+Layout::Style::SUPER_SCRIPT+]
  # [+Layout::Style::SUB_SCRIPT+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_elevation = Layout::Style::SUB_SCRIPT
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] elevation_type
  #
  # @raise [ArgumentError] if elevation_type is not a valid elevation type
  #
  # @version LayOut 2018
  def text_elevation=(elevation_type)
  end

  # The {#text_italic} method returns whether text is italic, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   italic = style.text_italic
  #
  # @return [Boolean, nil]
  #
  # @version LayOut 2018
  def text_italic
  end

  # The {#text_italic=} method sets whether text is italic.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_italic = true
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Boolean] italic
  #
  # @version LayOut 2018
  def text_italic=(italic)
  end

  # The {#text_underline} method returns the text underline type, or +nil+ if the
  # {Layout::Style} does not have a value for that setting.
  #
  # The underline type can be one of the following values:
  # [+Layout::Style::UNDERLINE_NONE+]
  # [+Layout::Style::UNDERLINE_SINGLE+]
  # [+Layout::Style::UNDERLINE_DOUBLE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   underline_type = style.text_underline
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def text_underline
  end

  # The {#text_underline=} method sets the text underline type.
  #
  # The underline type can be one of the following values:
  # [+Layout::Style::UNDERLINE_NONE+]
  # [+Layout::Style::UNDERLINE_SINGLE+]
  # [+Layout::Style::UNDERLINE_DOUBLE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   entity = page.entities.first
  #   style = entity.style
  #   style.text_underline = Layout::Style::UNDERLINE_DOUBLE
  #   # Set the style to apply changes
  #   entity.style = style
  #
  # @param [Integer] underline_type
  #
  # @raise [ArgumentError] if underline_type is not a valid underline type
  #
  # @version LayOut 2018
  def text_underline=(underline_type)
  end

end

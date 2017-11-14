# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# References a linear dimension entity. A {Layout::LinearDimension} is composed
# of the following sub-entities:
# - two 'extension lines' that connect to the {Layout::Entity} being
#   dimensioned.
# - a 'dimension line' connecting the ends of the leaders. This may be
#   represented by one or two {Layout::Path}s depending on appearance.
# - an optional 'leader line' that is used for small {Layout::LinearDimension}s.
# - a 'dimension text' that displays the {Layout::LinearDimension}'s text.
#
# There are six points that may be modified for a {Layout::LinearDimension}:
# - two 'connection points' that define the start and end of the
#   {Layout::LinearDimension}.
# - two 'extent points' that define the start and end of the dimension line and
#   are the ends of the two extension lines.
# - two 'offset points' that define the starting points of the extension lines.
#
# @version LayOut 2018
class Layout::LinearDimension < Layout::Entity

  # Constants

  LEADER_LINE_TYPE_BEZIER = nil # Stub value.
  LEADER_LINE_TYPE_HIDDEN = nil # Stub value.
  LEADER_LINE_TYPE_SINGLE_SEGMENT = nil # Stub value.
  LEADER_LINE_TYPE_TWO_SEGMENT = nil # Stub value.

  # Instance Methods

  # The {#auto_scale=} method sets whether the scale for the
  # {Layout::LinearDimension} is set automatically.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.auto_scale = true
  #
  # @param [Boolean] uses_auto_scale
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def auto_scale=(uses_auto_scale)
  end

  # The {#auto_scale?} method returns whether the scale for the
  # {Layout::LinearDimension} is set automatically.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   uses_auto_scale = dim.auto_scale?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def auto_scale?
  end

  # The {#connect} method connects the {Layout::LinearDimension} to one or two
  # {Layout::Entity}s using the provided {Layout::ConnectionPoint}s. The
  # {Layout::LinearDimension} must be in the same {Layout::Document} as the
  # {Layout::Entity}s, and on the same {Layout::Page} if the {Layout::Entity}s
  # are on non-shared {Layout::Layer}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   point_1 = Geom::Point2d.new(5, 7.5)
  #   point_2 = Geom::Point2d.new(8.5, 9)
  #   table = Layout::Rectangle.new([point_1, point_2])
  #   doc.add_entity(table, @doc.layers.first, @doc.pages.first)
  #   start_point = Layout::ConnectionPoint.new(table, point_1)
  #   end_point = Layout::ConnectionPoint.new(table, point_2)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(Geom::Point2d.new(1, 1),
  #     Geom::Point2d.new(5, 5), height)
  #   dim.connect(start_point, end_point)
  #
  # @param [Layout::ConnectionPoint] start_connection
  #
  # @param [Layout::ConnectionPoint] end_connection
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def connect(start_connection, end_connection)
  end

  # The {#custom_text=} method sets whether the {Layout::LinearDimension} uses
  # custom text. When +true+, the {Layout::LinearDimension} will display a custom
  # string that doesn't change. When +false+, it will display the length
  # measurement and will update automatically.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.custom_text = true
  #
  # @param [Boolean] uses_custom_text
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def custom_text=(uses_custom_text)
  end

  # The {#custom_text?} method returns whether the {Layout::LinearDimension}
  # uses custom text. When +true+, the {Layout::LinearDimension} will display a
  # custom string that doesn't change. When +false+, it will display the length
  # measurement and will update automatically.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   # returns false
  #   uses_custom_text = dim.custom_text?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def custom_text?
  end

  # The {#disconnect} method disconnects the {Layout::LinearDimension} from its
  # {Layout::ConnectionPoint}s. The dimension will not be adjusted by
  # disconnecting from its {Layout::ConnectionPoint}s.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.disconnect
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @version LayOut 2018
  def disconnect
  end

  # The {#end_connection_point} method returns the paper space location for the
  # second connection.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   end_connection = dim.end_connection_point
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def end_connection_point
  end

  # The {#end_connection_point=} method sets the paper space location for the
  # second connection.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.end_connection_point = Geom::Point2d.new(6, 6)
  #
  # @param [Geom::Point2d] end_point
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def end_connection_point=(end_point)
  end

  # The {#end_extent_point} method returns the paper space location for the
  # end of the dimension line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   end_ext_point = dim.end_extent_point
  #
  # @return [Geom::Point2d] end_extent
  #
  # @version LayOut 2018
  def end_extent_point
  end

  # The {#end_extent_point=} method sets the paper space location for the
  # end of the dimension line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   end_ext_point = Geom::Point2d.new(5, 6)
  #   dim.end_extent_point = end_ext_point
  #
  # @param [Geom::Point2d] end_extent
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def end_extent_point=(end_extent)
  end

  # The {#end_offset_length=} method sets the length of the offset from the
  # second {Layout::ConnectionPoint} to the start of the second extension line.
  # The {Layout::ConnectionPoint} and extent point will not move.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   end_ext_point = Geom::Point2d.new(5, 6)
  #   dim.end_offset_length = 0.5
  #
  # @param [Numeric] offset_length
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def end_offset_length=(offset_length)
  end

  # The {#end_offset_point} method returns the paper space location for the
  # end of the first extension line. The first extension line runs from this
  # offset point to the end extent point.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   end_offset = dim.end_offset_point
  #
  # @return [Geom::Point2d] end_offset
  #
  # @version LayOut 2018
  def end_offset_point
  end

  # The {#entities} method returns the {Layout::Entities} that represent the
  # {Layout::LinearDimension} in its exploded form. Depending on the appearance
  # of the {Layout::LinearDimension}, this may return anywhere from four to six
  # {Layout::Entity}s: start extension line, end extension line, one or two
  # dimension lines, dimension text, and optionally the leader line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   entites = dim.entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#initialize} method creates a new disconnected {Layout::LinearDimension}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #
  # @param [Geom::Point2d] start_point
  #
  # @param [Geom::Point2d] end_point
  #
  # @param [Numeric] height
  #   Distance from the start and end points to the
  #   dimension line
  #
  # @return [Layout::LinearDimension]
  #
  # @version LayOut 2018
  def initialize(start_point, end_point, height)
  end

  # The {#leader_line_type} method returns the type of leader line the
  # {Layout::LinearDimension} is using.
  #
  # The leader line type can be one of the following:
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_SINGLE_SEGMENT+]
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_TWO_SEGMENT+]
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_BEZIER+]
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_HIDDEN+]
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   type = dim.leader_line_type
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def leader_line_type
  end

  # The {#leader_line_type=} method sets the type of leader line the
  # {Layout::LinearDimension} is using.
  #
  # The leader line type can be one of the following:
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_SINGLE_SEGMENT+]
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_TWO_SEGMENT+]
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_BEZIER+]
  # [+Layout::LinearDimension::LEADER_LINE_TYPE_HIDDEN+]
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.leader_line_type = Layout::LinearDimension::LEADER_LINE_TYPE_BEZIER
  #
  # @param [Integer] type
  #   The leader line type
  #
  # @raise [ArgumentError] if leader_line_type is not a valid leader line type
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def leader_line_type=(type)
  end

  # The {#scale} method returns the scale being used for the
  # {Layout::LinearDimension}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   scale = dim.scale
  #
  # @return [Numeric] scale
  #
  # @version LayOut 2018
  def scale
  end

  # The {#scale=} method sets the scale being used for the
  # {Layout::LinearDimension}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.scale = 1.5
  #
  # @param [Numeric] scale
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [ArgumentError] if scale is negative, or greater than 1.0
  #
  # @version LayOut 2018
  def scale=(scale)
  end

  # The {#start_connection_point} method returns the paper space location for the
  # first connection.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   start_connection = dim.start_connection_point
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def start_connection_point
  end

  # The {#start_connection_point=} method sets the paper space location for the
  # first connection.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   dim.start_connection_point = Geom::Point2d.new(2, 2)
  #
  # @param [Geom::Point2d] start_point
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def start_connection_point=(start_point)
  end

  # The {#start_extent_point} method returns the paper space location for the
  # start of the dimension line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   start_ext_point = dim.start_extent_point
  #
  # @return [Geom::Point2d] start_extent
  #
  # @version LayOut 2018
  def start_extent_point
  end

  # The {#start_extent_point=} method sets the paper space location for the
  # start of the dimension line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   start_ext_point = Geom::Point2d.new(2, 3)
  #   dim.start_extent_point = start_ext_point
  #
  # @param [Geom::Point2d] start_extent
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def start_extent_point=(start_extent)
  end

  # The {#start_offset_length=} method sets the length of the offset from the
  # first {Layout::ConnectionPoint} to the start of the first extension line. The
  # {Layout::ConnectionPoint} and extent point will not move.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   end_ext_point = Geom::Point2d.new(5, 6)
  #   dim.start_offset_length = 0.5
  #
  # @param [Numeric] offset_length
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def start_offset_length=(offset_length)
  end

  # The {#start_offset_point} method returns the paper space location for the
  # start of the first extension line. The first extension line runs from this
  # offset point to the start extent point.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   start_offset = dim.start_offset_point
  #
  # @return [Geom::Point2d] start_offset
  #
  # @version LayOut 2018
  def start_offset_point
  end

  # The {#text} method returns a copy of the {Layout::LinearDimension}'s
  # {Layout::FormattedText}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   text = dim.text
  #
  # @return [Layout::FormattedText]
  #
  # @version LayOut 2018
  def text
  end

  # The {#text=} method sets the {Layout::LinearDimension}'s
  # {Layout::FormattedText}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   height = 1.0
  #   dim = Layout::LinearDimension.new(start_point, end_point, height)
  #   anchor_type = Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT
  #   dim.text = Layout::FormattedText.new("Hello LayOut", start_point, anchor_type)
  #
  # @param [Layout::FormattedText] formatted_text
  #
  # @raise [LockedEntityError] if the {Layout::LinearDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::LinearDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def text=(formatted_text)
  end

end

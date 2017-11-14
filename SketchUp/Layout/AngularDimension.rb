# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# References an angular dimension entity. An {Layout::AngularDimension} is
# composed of the following sub-entities:
# - two 'extension lines' that extend from the {Layout::Entity} being
#   dimensioned.
# - a 'dimension line' connecting the ends of the leaders. This may be
#   represented by one or two {Layout::Path}s depending on appearance.
# - an optional 'leader line' that is used for small {Layout::AngularDimension}s.
# - a 'dimension text' that displays the {Layout::AngularDimension}'s text.
#
# There are seven points that may be modified for an {Layout::AngularDimension}:
# - two 'connection points' that define the start and end of the
#   {Layout::AngularDimension}.
# - two 'extent points' that define the start and end of the dimension line and
#   are the ends of the two extension lines.
# - two 'offset points' that define the starting points of the extension lines.
# - one 'arc center point' that defines the center of the
#   {Layout::AngularDimension}, where the extension lines intersect.
#
# @version LayOut 2018
class Layout::AngularDimension < Layout::Entity

  # Constants

  LEADER_LINE_TYPE_BEZIER = nil # Stub value.
  LEADER_LINE_TYPE_HIDDEN = nil # Stub value.
  LEADER_LINE_TYPE_SINGLE_SEGMENT = nil # Stub value.
  LEADER_LINE_TYPE_TWO_SEGMENT = nil # Stub value.

  # Instance Methods

  # The {#angle} method returns the {Layout::AngularDimension}'s angle. The angle
  # is represented in radians.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   angle = dim.angle
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def angle
  end

  # The {#arc_center_point} method returns the paper space location for the
  # dimension arc center point.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   center = dim.arc_center_point
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def arc_center_point
  end

  # The {#custom_text=} sets whether or not the {Layout::AngularDimension} uses
  # custom text. When +true+, the text will display a custom string that doesn't
  # change. When +false+, the text will display the length measurement and wil
  # update automatically.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   dim.custom_text = true
  #
  # @param [Boolean] uses_custom_text
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def custom_text=(uses_custom_text)
  end

  # The {#custom_text?} method returns whether the {Layout::AngularDimension}
  # uses custom text. When +true+, the text will display a custom string that
  # doesn't change. When +false+, the text will display the length measurement
  # and will update automatically.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   # returns false
  #   uses_custom_text = dim.custom_text?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def custom_text?
  end

  # The {#end_connection_point} method returns the paper space location for the
  # second connection.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   dim.end_connection_point = Geom::Point2d.new(6, 6)
  #
  # @param [Geom::Point2d] end_point
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   end_ext_point = Geom::Point2d.new(5, 6)
  #   dim.end_extent_point = Geom::Point2d.new(6, 6)
  #
  # @param [Geom::Point2d] end_extent
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def end_extent_point=(end_extent)
  end

  # The {#end_offset_length=} method sets the length of the offset from the
  # second connection point to the start of the second extension line. The
  # connection and extent points will not move.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   end_ext_point = Geom::Point2d.new(5, 6)
  #   dim.end_offset_length = 0.5
  #
  # @param [Numeric] offset_length
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   end_offset = dim.end_offset_point
  #
  # @return [Geom::Point2d] end_offset
  #
  # @version LayOut 2018
  def end_offset_point
  end

  # The {#entities} method returns the {Layout::Entities} that represent the
  # {Layout::AngularDimension} in its exploded form. Depending on the appearance
  # of the {Layout::AngularDimension} being exploded, this may return anywhere
  # from four to six {Layout::Entity}s: start extension line, end extension line,
  # one or two dimension lines, dimension text, and optionally the leader line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   entites = dim.entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#initialize} method creates a new disconnected
  # {Layout::AngularDimension}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #
  # @param [Geom::Point2d] start_point
  #   Where the {Layout::AngularDimension}
  #   should start
  #
  # @param [Geom::Point2d] end_point
  #   Where the {Layout::AngularDimension} should
  #   end
  #
  # @param [Geom::Point2d] start_extent_point
  #   The extent point where the
  #   dimension line should start
  #
  # @param [Boolean] inner_angle
  #   Whether or not the {Layout::AngularDimension}
  #   should measure the inner angle. If +false+, it will measure the outer angle.
  #
  # @param [Geom::Point2d] end_extent_point
  #   The extent point where the dimension
  #   line should end
  #
  # @return [Layout::AngularDimension]
  #
  # @version LayOut 2018
  def initialize(start_point, end_point, start_extent_point, end_extent_point, inner_angle)
  end

  # The {#leader_line_type} method returns the type of leader line the
  # {Layout::AngularDimension} is using.
  #
  # The leader line type can be one of the following:
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_SINGLE_SEGMENT+]
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_TWO_SEGMENT+]
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_BEZIER+]
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_HIDDEN+]
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   type = dim.leader_line_type
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def leader_line_type
  end

  # The {#leader_line_type=} method sets the type of leader line the
  # {Layout::AngularDimension} is using.
  #
  # The leader line type can be one of the following:
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_SINGLE_SEGMENT+]
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_TWO_SEGMENT+]
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_BEZIER+]
  # [+Layout::AngularDimension::LEADER_LINE_TYPE_HIDDEN+]
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   dim.leader_line_type = Layout::AngularDimension::LEADER_LINE_TYPE_BEZIER
  #
  # @param [Integer] type
  #   The leader line type
  #
  # @raise [ArgumentError] if type is not a valid leader line type
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def leader_line_type=(type)
  end

  # The {#radius} method returns the {Layout::AngularDimension}'s radius. This is
  # the distance from the arc center point to the dimension line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   radius = dim.radius
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def radius
  end

  # The {#radius=} method sets the the {Layout::AngularDimension}'s radius. This
  # is the distance from the arc center point to the dimension line.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   dim.radius = 2.0
  #
  # @param [Numeric] radius
  #
  # @raise [ArgumentError] is radius is negative
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def radius=(radius)
  end

  # The {#start_connection_point} method returns the paper space location for the
  # first connection.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   dim.start_connection_point = Geom::Point2d.new(2, 2)
  #
  # @param [Geom::Point2d] start_point
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   start_ext_point = Geom::Point2d.new(2, 3)
  #   dim.start_extent_point = Geom::Point2d.new(2, 2)
  #
  # @param [Geom::Point2d] start_extent
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def start_extent_point=(start_extent)
  end

  # The {#start_offset_length=} method sets the length of the offset from the
  # first connection point to the start of the first extension line. The
  # connection and extent points will not move.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   end_ext_point = Geom::Point2d.new(5, 6)
  #   dim.start_offset_length = 0.5
  #
  # @param [Numeric] offset_length
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
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
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   start_offset = dim.start_offset_point
  #
  # @return [Geom::Point2d] start_offset
  #
  # @version LayOut 2018
  def start_offset_point
  end

  # The {#text} method returns a copy of the {Layout::AngularDimension}'s
  # {Layout::FormattedText}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   text = dim.text
  #
  # @return [Layout::FormattedText]
  #
  # @version LayOut 2018
  def text
  end

  # The {#text=} method sets the {Layout::AngularDimension}'s
  # {Layout::FormattedText}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(5, 5)
  #   start_extent = Geom::Point2d.new(1, 2)
  #   end_extent = Geom::Point2d.new(5, 6)
  #   inner_angle = true
  #   dim = Layout::AngularDimension.new(start_point, end_point, start_extent, end_extent, inner_angle)
  #   anchor_type = Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT
  #   dim.text = Layout::FormattedText.new("Hello LayOut", start_point, anchor_type)
  #
  # @param [Layout::FormattedText] formatted_text
  #
  # @raise [LockedEntityError] if the {Layout::AngularDimension} is locked
  #
  # @raise [LockedLayerError] if the {Layout::AngularDimension} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def text=(formatted_text)
  end

end

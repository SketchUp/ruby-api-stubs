# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is an interface to a label entity. A {Layout::Label} consists of a
# {Layout::FormattedText} and the label leader {Layout::Path}. A
# {Layout::Label} may be connected to another {Layout::Entity} via a
# {Layout::ConnectionPoint}.
#
# @version LayOut 2018
class Layout::Label < Layout::Entity

  # Constants

  CONNECTION_TYPE_AUTO = nil # Stub value.
  CONNECTION_TYPE_BOTTOM_LEFT = nil # Stub value.
  CONNECTION_TYPE_BOTTOM_RIGHT = nil # Stub value.
  CONNECTION_TYPE_CENTER_LEFT = nil # Stub value.
  CONNECTION_TYPE_CENTER_RIGHT = nil # Stub value.
  CONNECTION_TYPE_NONE = nil # Stub value.
  CONNECTION_TYPE_REVERSE_AUTO = nil # Stub value.
  CONNECTION_TYPE_TOP_LEFT = nil # Stub value.
  CONNECTION_TYPE_TOP_RIGHT = nil # Stub value.

  LEADER_LINE_TYPE_BEZIER = nil # Stub value.
  LEADER_LINE_TYPE_SINGLE_SEGMENT = nil # Stub value.
  LEADER_LINE_TYPE_TWO_SEGMENT = nil # Stub value.
  LEADER_LINE_TYPE_UNKNOWN = nil # Stub value.

  # Instance Methods

  # The {#connect} method connects the {Layout::Label} to the given
  # {Layout::ConnectionPoint}. The leader line will be adjusted to point at the
  # {Layout::ConnectionPoint}. The {Layout::Label} must be in the same
  # {Layout::Document} as the {Layout::ConnectionPoint}. If both the
  # {Layout::Label} and the {Layout::ConnectionPoint}'s {Layout::Entity} are on
  # non-shared {Layout::Layer}s, they must be on the same {Layout::Page}.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label = Layout::Label.new(text, leader_type, target_point, bounds)
  #   rect = Layout::Rectangle.new([4, 4, 4, 4])
  #
  #   doc = Layout::Document.new
  #   doc.add_entity(label, doc.layers.first, doc.pages.first)
  #   doc.add_entity(rect, doc.layers.first, doc.pages.first)
  #
  #   point = Geom::Point2d.new(4, 4)
  #   # Create a Connection Point to a LayOut Entity in the Document
  #   cp = Layout::ConnectionPoint.new(rect, point)
  #   label.connect(cp)
  #
  # @param [Layout::ConnectionPoint] connection_point
  #
  # @raise [LockedLayerError] if the {Layout::Label} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if both the {Layout::Label} and the
  #   {Layout::ConnectionPoint} are on non-shared {Layout::Layers}, but are not
  #   on the same {Layout::Page}.
  #
  # @raise [ArgumentError] if the {Layout::Label} is not in the same
  #   {Layout::Document} as the {Layout::ConnectionPoint}
  #
  # @raise [LockedEntityError] if the {Layout::Label} is locked
  #
  # @version LayOut 2018
  def connect(connection_point)
  end

  # The {#connection_type} method returns the type of the text connection for the
  # {Layout::Label}.
  #
  # The leader line type can be one of the following values:
  # [+Layout::Label::CONNECTION_TYPE_NONE+]
  # [+Layout::Label::CONNECTION_TYPE_AUTO+]
  # [+Layout::Label::CONNECTION_TYPE_REVERSE_AUTO+]
  # [+Layout::Label::CONNECTION_TYPE_TOP_LEFT+]
  # [+Layout::Label::CONNECTION_TYPE_CENTER_LEFT+]
  # [+Layout::Label::CONNECTION_TYPE_BOTTOM_LEFT+]
  # [+Layout::Label::CONNECTION_TYPE_TOP_RIGHT+]
  # [+Layout::Label::CONNECTION_TYPE_CENTER_RIGHT+]
  # [+Layout::Label::CONNECTION_TYPE_BOTTOM_RIGHT+]
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   text_connection_type = label_from_bounds.connection_type
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def connection_type
  end

  # The {#connection_type=} method sets the type of the text connection for the
  # {Layout::Label}.
  #
  # The leader line type can be one of the following values:
  # [+Layout::Label::CONNECTION_TYPE_NONE+]
  # [+Layout::Label::CONNECTION_TYPE_AUTO+]
  # [+Layout::Label::CONNECTION_TYPE_REVERSE_AUTO+]
  # [+Layout::Label::CONNECTION_TYPE_TOP_LEFT+]
  # [+Layout::Label::CONNECTION_TYPE_CENTER_LEFT+]
  # [+Layout::Label::CONNECTION_TYPE_BOTTOM_LEFT+]
  # [+Layout::Label::CONNECTION_TYPE_TOP_RIGHT+]
  # [+Layout::Label::CONNECTION_TYPE_CENTER_RIGHT+]
  # [+Layout::Label::CONNECTION_TYPE_BOTTOM_RIGHT+]
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   label_from_bounds.connection_type = Layout::Label::CONNECTION_TYPE_TOP_LEFT
  #
  # @param [Integer] connection_type
  #
  # @raise [LockedLayerError] if the {Layout::Label} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if the connection_type is not a valid text connection
  #   type
  #
  # @raise [LockedEntityError] if the {Layout::Label} is locked
  #
  # @version LayOut 2018
  def connection_type=(connection_type)
  end

  # The {#disconnect} method disconnects the {Layout::Label} from its
  # {Layout::ConnectionPoint}. The leader line will not be adjusted by
  # disconnecting from a {Layout::ConnectionPoint}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   label = doc.pages.first.entities.first
  #   label.disconnect
  #
  # @raise [LockedLayerError] if the {Layout::Label} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::Label} is locked
  #
  # @version LayOut 2018
  def disconnect
  end

  # The {#entities} method returns the {Layout::Entities} that represent the
  # {Layout::Label} in its exploded form.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   entities = label_from_bounds.entities
  #
  # @overload entities
  #
  #   @return [Layout::Entities]
  #
  # @overload entities(page)
  #
  #   @param [Layout::Page] page The {Layout::Page} to use to convert an
  #     auto text tag to display text
  #   @return [Layout::Entities]
  #
  # @raise [ArgumentError] if page does not belong to the same document as the
  #   [Layout::Label]
  #
  # @version LayOut 2018
  def entities(*args)
  end

  # The {#initialize} method creates a new disconnected {Layout::Label}.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   anchor_point = Geom::Point2d.new(2, 2)
  #   anchor_type = Layout::FormattedText::ANCHOR_TYPE_TOP_RIGHT
  #   label_from_point = Layout::Label.new(text, leader_type, target_point,
  #     anchor_point, anchor_type)
  #
  # @overload initialize(text, leader_type, target_point, bounds)
  #
  #   @param [String] text The label text
  #   @param [Integer] leader_type The leader line type
  #   @param [Geom::Point2d] target_point Where the label leader should point to
  #   @param [Geom::Bounds2d] bounds
  #   @return [Layout::Label]
  #
  # @overload initialize(text, leader_type, target_point, anchor_point,
  #
  #   anchor_type)
  #   @param [String] text The label text
  #   @param [Integer] leader_type The leader line type
  #   @param [Geom::Point2d] target_point Where the label leader should point to
  #   @param [Geom::Point2d] anchor_point The anchor point for the label text's
  #     position.
  #   @param [Integer] anchor_type Defines which point of the label text is set
  #     by anchor_point.
  #   @return [Layout::Label]
  #
  # @raise [ArgumentError] if anchor_type is not a valid anchor type
  #
  # @raise [ArgumentError] if plain_text is an empty string
  #
  # @raise [ArgumentError] if bounds is zero size
  #
  # @raise [ArgumentError] if leader_type is not a valid leader line type
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#leader_line} method returns a copy of the leader line.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   leader = label_from_bounds.leader_line
  #
  # @return [Layout::Path]
  #
  # @version LayOut 2018
  def leader_line
  end

  # The {#leader_line=} method sets the leader line.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   path = Layout::Path.new(Geom::Point2d.new(1, 2), Geom::Point2d.new(2, 3))
  #   label_from_bounds.leader_line = path
  #
  # @param [Layout::Path] leader_path
  #
  # @raise [LockedEntityError] if the {Layout::Label} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Label} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def leader_line=(leader_path)
  end

  # The {#leader_line_type} method returns the type of the leader line for the
  # {Layout::Label}.
  #
  # The leader line type can be one of the following values:
  # [+Layout::Label::LEADER_LINE_TYPE_SINGLE_SEGMENT+]
  # [+Layout::Label::LEADER_LINE_TYPE_TWO_SEGMENT+]
  # [+Layout::Label::LEADER_LINE_TYPE_BEZIER+]
  # [+Layout::Label::LEADER_LINE_TYPE_UNKNOWN+]
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   leader_type = label_from_bounds.leader_line_type
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def leader_line_type
  end

  # The {#leader_line_type=} method sets the type of the leader line for the
  # {Layout::Label}.
  #
  # The leader line type can be one of the following values:
  # [+Layout::Label::LEADER_LINE_TYPE_SINGLE_SEGMENT+]
  # [+Layout::Label::LEADER_LINE_TYPE_TWO_SEGMENT+]
  # [+Layout::Label::LEADER_LINE_TYPE_BEZIER+]
  # [+Layout::Label::LEADER_LINE_TYPE_UNKNOWN+]
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   label_from_bounds.leader_line_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #
  # @param [Integer] leader_type
  #
  # @raise [LockedLayerError] if the {Layout::Label} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if leader_type is
  #   +Layout::Label::LEADER_LINE_TYPE_UNKNOWN+ or not a valid leader line type
  #
  # @raise [LockedEntityError] if the {Layout::Label} is locked
  #
  # @version LayOut 2018
  def leader_line_type=(leader_type)
  end

  # The {#text} method returns a copy of the {Layout::FormattedText} of the
  # {Layout::Label}.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   text = label_from_bounds.text
  #
  # @return [Layout::FormattedText]
  #
  # @version LayOut 2018
  def text
  end

  # The {#text=} method sets the {Layout::FormattedText} of the {Layout::Label}.
  #
  # @example
  #   text = "A label"
  #   leader_type = Layout::Label::LEADER_LINE_TYPE_BEZIER
  #   target_point = Geom::Point2d.new(1, 1)
  #   bounds = Geom::Bounds2d.new(2, 1, 1, 1)
  #   label_from_bounds = Layout::Label.new(text, leader_type, target_point,
  #     bounds)
  #   anchor = Geom::Point2d.new(1, 1)
  #   anchor_type = Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT
  #   text = Layout::FormattedText.new("Test", anchor, anchor_type)
  #   label_from_bounds.text = text
  #
  # @param [Layout::FormattedText] new_text
  #
  # @raise [LockedEntityError] if the {Layout::Label} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Label} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def text=(new_text)
  end

end

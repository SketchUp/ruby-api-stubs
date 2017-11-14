# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A formatted text entity.
#
# @version LayOut 2018
class Layout::FormattedText < Entity

  # Constants

  ANCHOR_TYPE_BOTTOM_CENTER = nil # Stub value.
  ANCHOR_TYPE_BOTTOM_LEFT = nil # Stub value.
  ANCHOR_TYPE_BOTTOM_RIGHT = nil # Stub value.
  ANCHOR_TYPE_CENTER_CENTER = nil # Stub value.
  ANCHOR_TYPE_CENTER_LEFT = nil # Stub value.
  ANCHOR_TYPE_CENTER_RIGHT = nil # Stub value.
  ANCHOR_TYPE_TOP_CENTER = nil # Stub value.
  ANCHOR_TYPE_TOP_LEFT = nil # Stub value.
  ANCHOR_TYPE_TOP_RIGHT = nil # Stub value.

  GROW_MODE_BOUNDED = nil # Stub value.
  GROW_MODE_UNBOUNDED = nil # Stub value.

  # Class Methods

  # The {.new_from_file} method creates a new {Layout::FormattedText} from a text
  # file.
  #
  # The anchor type can be one of the following values:
  # [+ANCHOR_TYPE_TOP_LEFT+]
  # [+ANCHOR_TYPE_CENTER_LEFT+]
  # [+ANCHOR_TYPE_BOTTOM_LEFT+]
  # [+ANCHOR_TYPE_TOP_RIGHT+]
  # [+ANCHOR_TYPE_CENTER_RIGHT+]
  # [+ANCHOR_TYPE_BOTTOM_RIGHT+]
  # [+ANCHOR_TYPE_TOP_CENTER+]
  # [+ANCHOR_TYPE_CENTER_CENTER+]
  # [+ANCHOR_TYPE_BOTTOM_CENTER+]
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("C:/Test.txt", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #
  # @overload new_from_file(path, bounds)
  #
  #   @param  [String] path
  #   @param  [Geom::Bounds2d] bounds
  #   @return [Layout::FormattedText]
  #
  # @overload new_from_file(path, anchor_point, anchor_type)
  #
  #   @param  [String] path
  #   @param  [Geom::Point2d] anchor_point The anchor point for the
  #     {Layout::FormattedText}'s position.
  #   @param  [Integer] anchor_type Defines which point of the
  #     {Layout::FormattedText} is set by anchor_point.
  #   @return [Layout::FormattedText]
  #
  # @raise [ArgumentError] if path does not refer to a valid file
  #
  # @raise [ArgumentError] if bounds is zero size
  #
  # @raise [ArgumentError] if the passed in string is empty
  #
  # @version LayOut 2018
  def self.new_from_file(*args)
  end

  # Instance Methods

  # The {#append_plain_text} method appends new text with a given style to the
  # end of the existing plain text of the {Layout::FormattedText}.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   style = text.style(0)
  #   text.append_plain_text("foo", style)
  #
  # @note This method does not support more than two different style runs in a
  #   single text string.
  #
  # @param [String] plain_text
  #
  # @param [Layout::Style] style
  #
  # @raise [LockedLayerError] if the {Layout::FormattedText} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if plain_text is empty
  #
  # @raise [LockedEntityError] if the {Layout::FormattedText} is locked
  #
  # @version LayOut 2018
  def append_plain_text(plain_text, style)
  end

  # The {#apply_style} method sets the {Layout::Style} for the text starting at
  # the given character index, and running for the given number of characters.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   style = text.style(0)
  #   style.text_bold = true
  #   text.apply_style(style, 2, 4)
  #
  # @param [Integer] length
  #
  # @param [Integer] index
  #
  # @param [Layout::Style] style
  #
  # @raise [RangeError] if the range specified by index and length is not
  #   valid for this {Layout::FormattedText}
  #
  # @raise [ArgumentError] if length is not greater than zero
  #
  # @raise [IndexError] if index is out of range
  #
  # @raise [LockedLayerError] if the {Layout::FormattedText} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::FormattedText} is locked
  #
  # @version LayOut 2018
  def apply_style(style, index = 0, length = length_to_end_of_text)
  end

  # The {#display_text} method returns the display text representation of the
  # {Layout::FormattedText}.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("<PageNumber>", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   doc.add_entity(text, doc.layers.first, doc.pages.first)
  #   text = text.display_text(doc.pages.first)
  #
  # @note Passing an invalid {Layout::Page} will prevent an auto text tag from
  #   being substituted with its display representation.
  #
  # @param [Layout::Page] page
  #   The {Layout::Page} to use to convert an auto text
  #   tag to display text
  #
  # @raise [ArgumentError] if page is not in the same {Layout::Document} as
  #   the {Layout::FormattedText}
  #
  # @return [String]
  #
  # @version LayOut 2018
  def display_text(page = nil)
  end

  # The {#grow_mode} method returns the mode for how the {Layout::FormattedText}
  # sizes itself.
  #
  # The grow mode can be one of the following values:
  # [+Layout::FormattedText::GROW_MODE_BOUNDED+]
  # [+Layout::FormattedText::GROW_MODE_UNBOUNDED+]
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   mode = text.grow_mode
  #
  # @return [Integer] grow_mode
  #
  # @version LayOut 2018
  def grow_mode
  end

  # The {#grow_mode=} method sets the mode for how the {Layout::FormattedText}
  # sizes itself.
  #
  # The grow mode can be one of the following values:
  # [+Layout::FormattedText::GROW_MODE_BOUNDED+]
  # [+Layout::FormattedText::GROW_MODE_UNBOUNDED+]
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   text.grow_mode = GROW_MODE_UNBOUNDED
  #
  # @raise [ArgumentError] if grow_mode is not a valid grow mode
  #
  # @raise [LockedLayerError] if the {Layout::FormattedText} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::FormattedText} is locked
  #
  # @return [Integer] grow_mode
  #
  # @version LayOut 2018
  def grow_mode=(grow_mode)
  end

  # The {#initialize} method creates a new {Layout::FormattedText}.
  #
  # The anchor type can be one of the following values:
  # [+ANCHOR_TYPE_TOP_LEFT+]
  # [+ANCHOR_TYPE_CENTER_LEFT+]
  # [+ANCHOR_TYPE_BOTTOM_LEFT+]
  # [+ANCHOR_TYPE_TOP_RIGHT+]
  # [+ANCHOR_TYPE_CENTER_RIGHT+]
  # [+ANCHOR_TYPE_BOTTOM_RIGHT+]
  # [+ANCHOR_TYPE_TOP_CENTER+]
  # [+ANCHOR_TYPE_CENTER_CENTER+]
  # [+ANCHOR_TYPE_BOTTOM_CENTER+]
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #
  # @overload initialize(text, bounds)
  #
  #   @param  [String] text
  #   @param  [Geom::Bounds2d] bounds
  #   @return [Layout::FormattedText]
  #
  # @overload initialize(text, anchor_point, anchor_type)
  #
  #   @param  [String] text
  #   @param  [Geom::Point2d] anchor_point The anchor point for the
  #     {Layout::FormattedText}'s position.
  #   @param  [Integer] anchor_type Defines which point of the
  #     {Layout::FormattedText} is set by anchor_point.
  #   @return [Layout::FormattedText]
  #
  # @raise [ArgumentError] if bounds is zero size
  #
  # @raise [ArgumentError] if the passed in string is empty
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#plain_text} method returns the plain text representation of the
  # {Layout::FormattedText}.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   text = text.plain_text
  #
  # @return [String]
  #
  # @version LayOut 2018
  def plain_text
  end

  # The {#plain_text=} method sets the plain text representation of the
  # {Layout::FormattedText}.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   text.plain_text = "foo"
  #
  # @param [String] plain_text
  #
  # @raise [ArgumentError] if plain_text is empty
  #
  # @raise [LockedEntityError] if the {Layout::FormattedText} is locked
  #
  # @raise [LockedLayerError] if the {Layout::FormattedText} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def plain_text=(plain_text)
  end

  # The {#rtf} method returns the raw RTF representation of the
  # {Layout::FormattedText}.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   rtf_text = text.rtf
  #
  # @note Passing an invalid {Layout::Page} will prevent an auto text tag from
  #   being substituted with its display representation.
  #
  # @overload rtf
  #
  #   @return [String] The RTF text string. If the {Layout::FormattedText} is
  #     auto text, this will be an auto text tag.
  #
  # @overload rtf(page)
  #
  #   @param [Layout::Page] page The {Layout::Page} to use to convert an auto
  #     text tag to display text
  #   @return [String] The RTF text string. If the {Layout::FormattedText} is
  #     auto text, this will be the display text.
  #
  # @raise [ArgumentError] if page is not in the same {Layout::Document} as
  #   the {Layout::FormattedText}
  #
  # @version LayOut 2018
  def rtf(*args)
  end

  # The {#rtf=} method sets the raw RTF representation of the
  # {Layout::FormattedText}.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   text.rtf = "{\rtf1\ansi{\fonttbl\f0\fswiss Helvetica;}\f0\pard This is some {\b bold} text.\par}"
  #
  # @param [String] rtf_text
  #
  # @raise [ArgumentError] if rtf_text is an empty string
  #
  # @raise [LockedEntityError] if the {Layout::FormattedText} is locked
  #
  # @raise [LockedLayerError] if the {Layout::FormattedText} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def rtf=(rtf_text)
  end

  # The {#style} method returns a {Layout::Style} for the text starting at the
  # given character index, and running for the given length.
  #
  # @example
  #   anchor = Geom::Point2d.new(1, 1)
  #   text = Layout::FormattedText.new("Test", anchor, Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT)
  #   style = text.style(0)
  #
  # @param [Integer] length
  #
  # @param [Integer] index
  #
  # @raise [ArgumentError] if length is not greater than zero
  #
  # @raise [IndexError] if index is out of range
  #
  # @raise [RangeError] if the range specified by index and length is not
  #   valid for this {Layout::FormattedText}
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def style(index = 0, length = 1)
  end

end

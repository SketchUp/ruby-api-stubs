# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A {Layout::TableCell} is a single cell from a table that contains data.
#
# @example
#   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
#   rows = 4
#   columns = 4
#   table = Layout::Table.new(bounds, rows, columns)
#   table.each { |cell|
#     puts cell.data.plain_text
#   }
#
# @version LayOut 2018
class Layout::TableCell

  # Constants

  ROTATION_0 = nil # Stub value.
  ROTATION_180 = nil # Stub value.
  ROTATION_270 = nil # Stub value.
  ROTATION_90 = nil # Stub value.

  # Instance Methods

  # The {#data} method creates a copy of the {Layout::FormattedText} for the
  # {Layout::TableCell}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   cell_entity = table[1, 2].data
  #
  # @raise [ArgumentError] if the cell {Layout::Entity} is not a
  #   {Layout::FormattedText}
  #
  # @version LayOut 2018
  def data
  end

  # The {#data=} method sets the {Layout::Entity} of a {Layout::TableCell}.
  # The text content and fill {Layout::Style} settings will be kept. The bounds
  # and other {Layout::Style} settings are controlled by the {Layout::Table}. If
  # the specified row and column is within a merged cell, then the merged cell
  # itself will be affected.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   anchor = Geom::Point2d.new(1, 1)
  #   text_anchor_type = Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT
  #   text = Layout::FormattedText.new("Test", anchor, text_anchor_type)
  #   table[1, 2].data = text
  #
  # @note At the moment, this only works for {Layout::Entity}s that are
  #   {Layout::FormattedText}s. However, future versions of LayOut may support
  #   other types of {Layout::Entity}s for {Layout::TableCell}s, so this method
  #   cannot be assumed to always fail with inputs of other {Layout::Entity}
  #   types.
  #
  # @param [Layout::Entity] entity
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def data=(entity)
  end

  # The {#rotation} method returns the rotation of a {Layout::TableCell}.
  #
  # The rotation type can be one of the following values:
  # [+Layout::TableCell::ROTATION_0+]
  # [+Layout::TableCell::ROTATION_90+]
  # [+Layout::TableCell::ROTATION_180+]
  # [+Layout::TableCell::ROTATION_270+]
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   rotation = table[1, 1].rotation
  #
  # @raise [ArgumentError] if the cell is invalid due to residing within a
  #   merged cell
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def rotation
  end

  # The {#rotation=} method sets the rotation of a {Layout::TableCell}.
  #
  # The rotation type can be one of the following values:
  # [+Layout::TableCell::ROTATION_0+]
  # [+Layout::TableCell::ROTATION_90+]
  # [+Layout::TableCell::ROTATION_180+]
  # [+Layout::TableCell::ROTATION_270+]
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table[1, 1].rotation = Layout::TableCell::ROTATION_180
  #
  # @param [Integer] cell_rotation
  #
  # @raise [ArgumentError] if the cell is invalid due to residing within a
  #   merged cell
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def rotation=(cell_rotation)
  end

  # The {#span} method returns the row and column span of a {Layout::TableCell}.
  # If the values returned are both 1, then it is a normal, non-merged cell. If
  # either of the values are greater than 1, then it is a merged cell. If the
  # values are both 0, then it is an unused cell that resides within the inner
  # portion of another merged cell.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   row_span, column_span = table[1, 1].span
  #
  # @return [Array(Integer, Integer)] Row span and column span.
  #
  # @version LayOut 2018
  def span
  end

end

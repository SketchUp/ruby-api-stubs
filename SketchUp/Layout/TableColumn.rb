# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A {Layout::TableColumn} is a single column from a table.
#
# @example
#   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
#   rows = 4
#   columns = 4
#   table = Layout::Table.new(bounds, rows, columns)
#   columns.times { |index|
#     column = table.column(index)
#   }
#
# @version LayOut 2018
class Layout::TableColumn

  # Instance Methods

  # The {#left_edge_style} method returns the {Layout::Style} of a
  # {Layout::TableColumn}'s left edge. If this is the first column of the table,
  # this method will return the style of the table border.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = table.get_column(1).edge_style
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def left_edge_style
  end

  # The {#left_edge_style=} method sets the {Layout::Style} of a
  # {Layout::TableColumn}'s left edge. If this is the first column of the table,
  # this method will set the style for the table border.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = Layout::Style.new
  #   style.stroke_width = 2.0
  #   table.get_column(1).edge_style = style
  #
  # @param [Layout::Style] style
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def left_edge_style=(style)
  end

  # The {#right_edge_style} method returns the {Layout::Style} of a
  # {Layout::TableColumn}'s right edge. If this is the last column of the table,
  # this method will return the style of the table border.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = table.get_column(1).edge_style
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def right_edge_style
  end

  # The {#right_edge_style=} method sets the {Layout::Style} of a
  # {Layout::TableColumn}'s right edge. If this is the last column of the table,
  # this method will set the style for the table border.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = Layout::Style.new
  #   style.stroke_width = 2.0
  #   table.get_column(1).edge_style = style
  #
  # @param [Layout::Style] style
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def right_edge_style=(style)
  end

  # The {#width} method returns the width of the {Layout::TableColumn}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   width = table.get_column(1).width
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def width
  end

  # The {#width=} method sets the width of the {Layout::TableColumn}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.get_column(1).width = 6.0
  #
  # @param [Float] width
  #
  # @raise [ArgumentError] if width is not a valid width
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def width=(width)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A {Layout::TableColumn} is a single row from a table.
#
# @example
#   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
#   rows = 4
#   columns = 4
#   table = Layout::Table.new(bounds, rows, columns)
#   rows.times { |index|
#     row = table.row(index)
#   }
#
# @version LayOut 2018
class Layout::TableRow

  # Instance Methods

  # The {#bottom_edge_style} method returns the {Layout::Style} of a
  # {Layout::TableRow}'s bottom edge.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = table.get_row(1).bottom_edge_style
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def bottom_edge_style
  end

  # The {#bottom_edge_style=} method sets the {Layout::Style} of a
  # {Layout::TableRow}'s bottom edge.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = Layout::Style.new
  #   style.stroke_width = 2.0
  #   table.get_row(1).bottom_edge_style = style
  #
  # @param [Layout::Style] style
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def bottom_edge_style=(style)
  end

  # The {#height} method returns the height of the {Layout::TableRow}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   height = table.get_row(1).height
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def height
  end

  # The {#height=} method sets the height of the {Layout::TableRow}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.get_row(1).height = 3.0
  #
  # @param [Float] height
  #
  # @raise [ArgumentError] if height is not a valid height
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def height=(height)
  end

  # The {#top_edge_style} method returns the {Layout::Style} of a
  # {Layout::TableRow}'s top edge.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = table.get_row(1).top_edge_style
  #
  # @return [Layout::Style]
  #
  # @version LayOut 2018
  def top_edge_style
  end

  # The {#top_edge_style=} method sets the {Layout::Style} of a
  # {Layout::TableRow}'s top edge.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   style = Layout::Style.new
  #   style.stroke_width = 2.0
  #   table.get_row(1).top_edge_style = style
  #
  # @param [Layout::Style] style
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def top_edge_style=(style)
  end

end

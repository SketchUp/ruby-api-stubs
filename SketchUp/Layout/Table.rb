# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A {Layout::Table} is a series of rows and columns that holds data.
#
# @example
#   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
#   rows = 4
#   columns = 4
#   table = Layout::Table.new(bounds, rows, columns)
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   doc.add_entity(table, doc.layers.first, doc.pages.first)
#   anchor_type = Layout::FormattedText::ANCHOR_TYPE_TOP_LEFT
#   start_point = Geom::Point2d.new(1, 1)
#   text = Layout::FormattedText.new("Hello LayOut", start_point, anchor_type)
#   table[1, 1].data = text
#
# @version LayOut 2018
class Layout::Table < Layout::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method returns the {Layout::TableCell} at the specified row and
  # column.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   cell = table[1, 2]
  #
  # @param [Integer] row_index
  #
  # @param [Integer] column_index
  #
  # @raise [IndexError] if row_index or column_index are not a valid indices
  #   for the {Layout::Table}
  #
  # @return [Layout::TableCell]
  #
  # @version LayOut 2018
  def [](row_index, column_index)
  end

  # The {#dimensions} method returns the number of rows and columns in a
  # {Layout::Table}.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   r, c = table.dimensions
  #
  # @return [Array(Integer, Integer)] The first value is the number of rows; the
  #   second, the number of columns.
  #
  # @version LayOut 2018
  def dimensions
  end

  # The {#each} method iterates in column major order through all of the cells
  # in the {Layout::Table}.
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
  #
  # @yieldparam [Layout::TableCell] cell
  def each
  end

  # The {#entities} method creates and returns the {Layout::Entities} that
  # represent the {Layout::Table} in its exploded form.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   entities = table.entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#get_column} method returns the {Layout::TableColumn} at the specified
  # index.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table_column = table.get_column(2)
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if index is not a valid index for the {Layout::Table}
  #
  # @return [Layout::TableColumn]
  #
  # @version LayOut 2018
  def get_column(index)
  end

  # The {#get_row} method returns the {Layout::TableRow} at the specified index.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table_row = table.get_row(2)
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if index is not a valid index for the {Layout::Table}
  #
  # @return [Layout::TableRow]
  #
  # @version LayOut 2018
  def get_row(index)
  end

  # The {#initialize} method creates a {Layout::Table} with a specified size, and
  # a specified number of rows and columns.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #
  # @param [Geom::Bounds2d] bounds
  #
  # @param [Integer] rows
  #
  # @param [Integer] columns
  #
  # @raise [ArgumentError] if bounds is zero size
  #
  # @raise [ArgumentError] if rows is less than 1
  #
  # @raise [ArgumentError] if columns is less than 1
  #
  # @return [Layout::Table]
  #
  # @version LayOut 2018
  def initialize(bounds, rows, columns)
  end

  # The {#insert_column} method inserts a new column at the specified index.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.insert_column(2)
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if index is not a valid index for the {Layout::Table}
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def insert_column(index)
  end

  # The {#insert_row} method inserts a new row at the specified index.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.insert_row(2)
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if index is not a valid index for the {Layout::Table}
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def insert_row(index)
  end

  # The {#merge} method merges a range of cells within a {Layout::Table}. Only
  # cells which are not already merged can be merged.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.merge(1, 1, 2, 2)
  #
  # @param [Integer] start_row
  #
  # @param [Integer] start_column
  #
  # @param [Integer] end_row
  #
  # @param [Integer] end_column
  #
  # @raise [ArgumentError] if the specified range of cells contains a merged cell
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [ArgumentError] if the specified range of cells only spans a single
  #   cell
  #
  # @raise [IndexError] if the passed in indices are not a valid for the
  #   {Layout::Table}
  #
  # @version LayOut 2018
  def merge(start_row, start_column, end_row, end_column)
  end

  # The {#remove_column} method removes the column at the specified index.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.remove_column(2)
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if index is not a valid index for the {Layout::Table}
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def remove_column(index)
  end

  # The {#remove_row} method removes the row at the specified index.
  #
  # @example
  #   bounds = Geom::Bounds2d.new(1, 1, 4, 4)
  #   rows = 4
  #   columns = 4
  #   table = Layout::Table.new(bounds, rows, columns)
  #   table.remove_row(2)
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if index is not a valid index for the {Layout::Table}
  #
  # @raise [LockedEntityError] if the {Layout::Table} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Table} is on a locked
  #   {Layout::Layer}
  #
  # @version LayOut 2018
  def remove_row(index)
  end

end

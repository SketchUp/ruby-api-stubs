# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is the interface to a {Layout::Document}'s paper space information. The
# paper size and margins, display resolution, and colors can all be accessed
# and set through this class.
#
# @example
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   page_info = doc.page_info
#   # Get the paper height and width and set the output resolution
#   width = page_info.width
#   height = page_info.height
#   page_info.output_resolution = Layout::PageInfo::RESOLUTION_HIGH
#
# @version LayOut 2018
class Layout::PageInfo

  # Constants

  RESOLUTION_HIGH = nil # Stub value.
  RESOLUTION_LOW = nil # Stub value.
  RESOLUTION_MEDIUM = nil # Stub value.

  # Instance Methods

  # The {bottom_margin} method returns the paper's bottom margin in document
  # units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   bottom_margin = doc.page_info.bottom_margin
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def bottom_margin
  end

  # The {#bottom_margin=} method sets the paper's bottom margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.bottom_margin = 0.40
  #
  # @param [Numeric] margin
  #
  # @raise [ArgumentError] if margin is less than 0 or greater than the page
  #   height
  #
  # @version LayOut 2018
  def bottom_margin=(margin)
  end

  # The {#color} method returns the paper's color.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   paper_color = Layout.page_info.color
  #
  # @return [Sketchup::Color]
  #
  # @version LayOut 2018
  def color
  end

  # The {#color=} method sets the paper's color.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.color = Sketchup::Color.new(45, 45, 75, 255)
  #
  # @param [Sketchup::Color] new_color
  #
  # @version LayOut 2018
  def color=(new_color)
  end

  # The {#display_resolution} method returns the on screen rendering resolution
  # quality.
  #
  # The resolution can be one of the following values:
  # [+Layout::PageInfo::RESOLUTION_LOW+]
  # [+Layout::PageInfo::RESOLUTION_MEDIUM+]
  # [+Layout::PageInfo::RESOLUTION_HIGH+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   display_resolution = doc.page_info.display_resolution
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def display_resolution
  end

  # The {#display_resolution=} method sets the on screen rendering resolution
  # quality.
  #
  # The resolution can be one of the following values:
  # [+Layout::PageInfo::RESOLUTION_LOW+]
  # [+Layout::PageInfo::RESOLUTION_MEDIUM+]
  # [+Layout::PageInfo::RESOLUTION_HIGH+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.display_resolution = Layout::PageInfo::RESOLUTION_MEDIUM
  #
  # @param [Integer] resolution
  #
  # @raise [ArgumentError] if resolution is not a valid resolution value
  #
  # @version LayOut 2018
  def display_resolution=(resolution)
  end

  # The {#height} method returns the paper height in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   height = doc.page_info.height
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def height
  end

  # The {#height=} method sets the paper height in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.height = 8.5
  #
  # @param [Numeric] height
  #
  # @raise [ArgumentError] if height is less than 1 or greater than 200
  #
  # @version LayOut 2018
  def height=(height)
  end

  # The {#left_margin} method returns the paper's left margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   left_margin = doc.page_info.left_margin
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def left_margin
  end

  # The {#left_margin=} method sets the paper's left margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.left_margin = 0.40
  #
  # @param [Numeric] margin
  #
  # @raise [ArgumentError] if margin is less than 0 or greater than the page
  #   width
  #
  # @version LayOut 2018
  def left_margin=(margin)
  end

  # The {#margin_color} method returns the color of the paper's margin.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   margin_color = doc.page_info.margin_color
  #
  # @return [Sketchup::Color]
  #
  # @version LayOut 2018
  def margin_color
  end

  # The {#margin_color=} sets the color of paper's margin.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   new_color = Sketchup::Color("Red")
  #   doc.page_info.margin_color = new_color
  #
  # @param [Sketchup::Color] color
  #
  # @version LayOut 2018
  def margin_color=(color)
  end

  # The {#output_resolution} method returns the output rendering resolution
  # quality.
  #
  # The resolution can be one of the following values:
  # [+Layout::PageInfo::RESOLUTION_LOW+]
  # [+Layout::PageInfo::RESOLUTION_MEDIUM+]
  # [+Layout::PageInfo::RESOLUTION_HIGH+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   output_resolution = doc.page_info.output_resolution
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def output_resolution
  end

  # The {#output_resolution=} method sets the output rendering resolution
  # quality.
  #
  # The resolution can be one of the following values:
  # [+Layout::PageInfo::RESOLUTION_LOW+]
  # [+Layout::PageInfo::RESOLUTION_MEDIUM+]
  # [+Layout::PageInfo::RESOLUTION_HIGH+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.output_resolution = Layout::PageInfo::RESOLUTION_MEDIUM
  #
  # @param [Integer] resolution
  #
  # @raise [ArgumentError] if resolution is not a valid resolution value
  #
  # @version LayOut 2018
  def output_resolution=(resolution)
  end

  # The {#print_margins=} method sets whether to print the paper's margins.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.print_margins=true
  #
  # @param [Boolean] print
  #
  # @version LayOut 2018
  def print_margins=(print)
  end

  # The {#print_margins?} method returns whether to print the paper's margins.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   margins_printed = doc.page_info.print_margins?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def print_margins?
  end

  # The {#print_paper_color=} method sets whether or not the page color should be
  # printed.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.print_color = true
  #
  # @param [Boolean] print_paper_color
  #
  # @version LayOut 2018
  def print_paper_color=(print_paper_color)
  end

  # The {#print_paper_color?} method returns whether or not the page color should
  # be printed.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   paper_color = doc.page_info.print_paper_color?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def print_paper_color?
  end

  # The {#right_margin} method returns the paper's right margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   right_margin = doc.page_info.right_margin
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def right_margin
  end

  # The {#right_margin=} sets the paper's right margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.right_margin = 0.40
  #
  # @param [Numeric] margin
  #
  # @raise [ArgumentError] if margin is less than 0 or greater than the page
  #   width
  #
  # @version LayOut 2018
  def right_margin=(margin)
  end

  # The {#show_margins=} method sets whether the paper's margins are visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.show_margins = false
  #
  # @param [Boolean] margins_visible
  #
  # @version LayOut 2018
  def show_margins=(margins_visible)
  end

  # The {#show_margins?} method returns whether the paper's margins are visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   show_margins = doc.page_info.show_margins?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show_margins?
  end

  # The {#top_margin} method returns the paper's top margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   top_margin = doc.page_info.top_margin
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def top_margin
  end

  # The {#top_margin} method sets the paper's top margin in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.top_margin = 0.40
  #
  # @param [Numeric] margin
  #
  # @raise [ArgumentError] if margin is less than 0 or greater than the page
  #   height
  #
  # @version LayOut 2018
  def top_margin=(margin)
  end

  # The {#width} method returns the paper width in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   width = doc.page_info.width
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def width
  end

  # The {#width=} method sets the paper width in document units.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.page_info.width = 8.5
  #
  # @param [Numeric] width
  #
  # @raise [ArgumentError] if width is less than 1 or greater than 200
  #
  # @version LayOut 2018
  def width=(width)
  end

end

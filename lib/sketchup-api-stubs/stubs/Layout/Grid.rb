# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# Class that references a {Layout::Document}'s grid settings.
#
# @version LayOut 2018
class Layout::Grid

  # Instance Methods

  # The {#clip_to_margins=} method sets whether or not the grid is clipped to the
  # page margins.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.clip_to_margins = true
  #
  # @param [Boolean] clip
  #
  # @version LayOut 2020.1
  def clip_to_margins=(clip)
  end

  # The {#clip_to_margins?} method returns whether or not the grid is clipped to
  # the page margins.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   in_front = grid.clip_to_margins?
  #
  # @return [Boolean]
  #
  # @version LayOut 2020.1
  def clip_to_margins?
  end

  # The {#in_front=} method sets whether or not the grid is drawn on top of
  # entities.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.in_front = true
  #
  # @param [Boolean] in_front
  #
  # @version LayOut 2020.1
  def in_front=(in_front)
  end

  # The {#in_front?} method returns whether or not the grid is drawn on top of
  # entities.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   in_front = grid.in_front?
  #
  # @return [Boolean]
  #
  # @version LayOut 2020.1
  def in_front?
  end

  # The {#major_color} method returns the {Sketchup::Color} for the major grid
  # lines.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   color = grid.major_color
  #
  # @return [Sketchup::Color]
  #
  # @version LayOut 2018
  def major_color
  end

  # The {#major_color=} method sets the {Sketchup::Color} for the major grid
  # lines.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.major_color = Sketchup::Color.new(255, 0, 0)
  #   grid.major_color = 255
  #   grid.major_color = 0x0000ff
  #   grid.major_color = "red"
  #   grid.major_color = "#ff0000"
  #   grid.major_color = [1.0, 0.0, 0.0]
  #   grid.major_color = [255, 0, 0]
  #
  # @param [Sketchup::Color] color
  #
  # @version LayOut 2020.1
  def major_color=(color)
  end

  # The {#major_spacing} method returns the major space size of the
  # {Layout::Grid}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   major_spacing = grid.major_spacing
  #
  # @return [Numeric]
  #
  # @version LayOut 2018
  def major_spacing
  end

  # The {#major_spacing=} method sets the major space size of the
  # {Layout::Grid}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.major_spacing = 1.25
  #
  # @param [Float] spacing
  #   The double specifying the space size for the
  #   {Layout::Grid}
  #
  # @raise [ArgumentError] if spacing is not greater than zero
  #
  # @version LayOut 2020.1
  def major_spacing=(spacing)
  end

  # The {#minor_color} method returns the {Sketchup::Color} for the minor grid
  # lines.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   color = grid.minor_color
  #
  # @return [Sketchup::Color]
  #
  # @version LayOut 2018
  def minor_color
  end

  # The {#minor_color=} method sets the {Sketchup::Color} for the minor grid
  # lines.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.minor_color = Sketchup::Color.new(255, 0, 0)
  #   grid.minor_color = 255
  #   grid.minor_color = 0x0000ff
  #   grid.minor_color = "red"
  #   grid.minor_color = "#ff0000"
  #   grid.minor_color = [1.0, 0.0, 0.0]
  #   grid.minor_color = [255, 0, 0]
  #
  # @param [Sketchup::Color] color
  #
  # @version LayOut 2020.1
  def minor_color=(color)
  end

  # The {#minor_divisions} method returns the number of minor divisions of the
  # {Layout::Grid}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   minor_divisions = grid.minor_divisions
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def minor_divisions
  end

  # The {#minor_divisions=} method sets the number of minor divisions of the
  # {Layout::Grid}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.major_spacing = 1.25
  #
  # @param [Integer] divisions
  #   The number of minor divisions for the
  #   {Layout::Grid}
  #
  # @raise [ArgumentError] if divisions is negative
  #
  # @version LayOut 2020.1
  def minor_divisions=(divisions)
  end

  # The {#print=} method sets whether or not the {Layout::Grid} is
  # printed.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.print = false
  #
  # @param [Boolean] print
  #
  # @version LayOut 2020.1
  def print=(print)
  end

  # The {#print?} method returns whether or not the {Layout::Grid} is
  # printed.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   print = grid.print?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def print?
  end

  # The {#show=} method sets whether or not the {Layout::Grid} is
  # visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.show = true
  #
  # @param [Boolean] show
  #
  # @version LayOut 2020.1
  def show=(show)
  end

  # The {#show?} method returns whether or not the {Layout::Grid} is
  # visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   show = grid.show?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show?
  end

  # The {#show_major=} method sets whether or not the major grid lines are
  # visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.show_major = true
  #
  # @param [Boolean] show
  #
  # @version LayOut 2020.1
  def show_major=(show)
  end

  # The {#show_major?} method returns whether or not the major grid lines are
  # visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   show_major = grid.show_major?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show_major?
  end

  # The {#show_minor=} method sets whether or not the minor grid lines are
  # visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   grid.show_minor = false
  #
  # @param [Boolean] show
  #
  # @version LayOut 2020.1
  def show_minor=(show)
  end

  # The {#show_minor?} method returns whether or not the minor grid lines are
  # visible.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #   show_minor = grid.show_minor?
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show_minor?
  end

end

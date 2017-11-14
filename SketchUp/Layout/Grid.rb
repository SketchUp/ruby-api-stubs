# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Class that references a {Layout::Document}'s grid settings.
#
# @version LayOut 2018
class Layout::Grid

  # Instance Methods

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
  # @return [Boolean]
  #
  # @version LayOut 2018
  def print?
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
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show?
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
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show_major?
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
  # @return [Boolean]
  #
  # @version LayOut 2018
  def show_minor?
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The OrientedBounds2d class is a bounding box represented by four
# {Geom::Point2d} objects, upper left, upper right, lower left and lower right
# positions.
#
# @version LayOut 2018
class Geom::OrientedBounds2d

  # Instance Methods

  # The {#==} method checks to see if the two {Geom::OrientedBounds2d}s are
  # equal. This checks whether the point values are the same.
  #
  # @example
  #   entity.bounds == entity.untransformed_bounds
  #
  # @param [Geom::OrientedBounds2d] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#lower_left} method returns the {Geom::Point2d} of the lower left
  # corner of the {Geom::OrientedBounds2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entity = doc.shared_enities.first
  #   bounds = entity.drawing_bounds
  #   l_l = bounds.lower_left
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def lower_left
  end

  # The {#lower_right} method returns the {Geom::Point2d} of the lower right
  # corner of the {Geom::OrientedBounds2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entity = doc.shared_enities.first
  #   bounds = entity.drawing_bounds
  #   l_r = bounds.lower_right
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def lower_right
  end

  # The {#to_a} method returns an array which contains the {Geom::Point2d} that
  # define the {Geom::OrientedBounds2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entity = doc.shared_enities.first
  #   bounds = entity.drawing_bounds
  #   bounds.to_a.each { |point| p point.to_s }
  #
  # @return [Array(Geom::Point2d, Geom::Point2d, Geom::Point2d, Geom::Point2d)]
  #
  # @version LayOut 2018
  def to_a
  end

  # The {#upper_left} method returns the {Geom::Point2d} of the upper left corner
  # of the {Geom::OrientedBounds2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entity = doc.shared_enities.first
  #   bounds = entity.drawing_bounds
  #   u_l = bounds.upper_left
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def upper_left
  end

  # The {#upper_right} method returns the {Geom::Point2d} of the upper right
  # corner of the {Geom::OrientedBounds2d}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entity = doc.shared_enities.first
  #   bounds = entity.drawing_bounds
  #   u_r = bounds.upper_right
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def upper_right
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The DimensionRadial class represents radius and diameter dimensions on
# arcs and circles.
#
# @version SketchUp 2014
class Sketchup::DimensionRadial < Sketchup::Dimension

  # Instance Methods

  # The arc_curve method returns the ArcCurve object to which this dimension is
  # attached.
  #
  # @example
  #   arc = dim.arc_curve
  #
  # @return The ArcCurve object to which the dimension is attached.
  #
  # @version SketchUp 2014
  def arc_curve
  end

  # The arc_curve= method is used to set the ArcCurve object to which this
  # dimension is attached.
  #
  # @example
  #   dim.arc_curve = arc
  #
  # @param arc_curve
  #   The ArcCurve object to which the dimension is to be
  #   attached.
  #
  # @return The ArcCurve object to which the dimension was attached.
  #
  # @version SketchUp 2014
  def arc_curve=(arc_curve)
  end

  # The leader_break_point method returns the break point on the leader where the
  # dimension text is attached.
  #
  # @example
  #   pt = dim.leader_break_point
  #   puts "Break point is #{pt}"
  #
  # @return the leader break point
  #
  # @version SketchUp 2014
  def leader_break_point
  end

  # The leader_break_point= method is used to set the break point on the leader
  # where the dimension text is attached.
  #
  # @example
  #   dim.leader_break_point = [10, 0, 0]
  #
  # @param point
  #   the point to be set
  #
  # @return the point that was set
  #
  # @version SketchUp 2014
  def leader_break_point=(point)
  end

  # The leader_points method returns the 3 significant points along the dimension
  # line in world coordinates.
  #
  # @example
  #   pts = dim.leader_points
  #   puts "Break point is #{pts[0]}"
  #   puts "Attach point is #{pts[1]}"
  #   puts "Opposite point is #{pts[2]}"
  #
  # @return Array of 3 Point3d objects. Point 0: leader break point,
  #   where the text extension attaches. Point 1: attach point,
  #   where leader touches the arc/circle. Point 2: opposite
  #   point, where the diameter leader touches the circle on
  #   the opposite side.
  #
  # @version SketchUp 2014
  def leader_points
  end

end

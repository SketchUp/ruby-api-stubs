# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A path entity represents a continuous, multi-segment polyline or bezier
# curve.
#
# @version LayOut 2018
class Layout::Path < Layout::Entity

  # Constants

  POINT_TYPE_ARC_CENTER = nil # Stub value.
  POINT_TYPE_BEZIER_CONTROL = nil # Stub value.
  POINT_TYPE_BEZIER_TO = nil # Stub value.
  POINT_TYPE_CLOSE = nil # Stub value.
  POINT_TYPE_LINE_TO = nil # Stub value.
  POINT_TYPE_MOVE_TO = nil # Stub value.

  # Class Methods

  # The {.new_arc} method creates a new arc-shaped {Layout::Path}.
  #
  # @example
  #   center = Geom::Point2d.new(5, 5)
  #   radius = 2.0
  #   start_angle = 180.0
  #   end_angle = 360.0
  #   arc = Layout::Path.new_arc(center, radius, start_angle, end_angle)
  #
  # @param [Geom::Point2d] center_point
  #
  # @param [Float] radius
  #
  # @param [Float] start_angle
  #
  # @param [Float] end_angle
  #
  # @raise [ArgumentError] if start angle is equal to end angle
  #
  # @raise [ArgumentError] if radius is less than or equal to zero
  #
  # @return [Layout::Path] an arc path
  #
  # @version LayOut 2018
  def self.new_arc(center_point, radius, start_angle, end_angle)
  end

  # Instance Methods

  # The {#append_point} method appends a {Geom::Point2d} to the end of the
  # {Layout::Path}.
  #
  # @example
  #   point = Geom::Point2d.new(2, 5)
  #   path.append_point(point)
  #
  # @overload append_point(point)
  #
  #   @param  [Geom::Point2d] append_point
  #   @return [Layout::Path]
  #
  # @overload append_point(point, control_point1, control_point2)
  #
  #   @param  [Geom::Point2d] point The point to append
  #   @param  [Geom::Point2d] control_point1 The first bezier control point
  #   @param  [Geom::Point2d] control_point2 The second bezier control point
  #   @return [Layout::Path]
  #
  # @raise [LockedEntityError] if the {Layout::Path} is locked
  #
  # @raise [LockedLayerError] if the {Layout::Path} is on a locked {Layout::Layer}
  #
  # @version LayOut 2018
  def append_point(*args)
  end

  # The {#arc} method returns the parameters of an arc from the {Layout::Path},
  # or +nil+ if path is not an arc.
  #
  # @example
  #   start_angle, radius, start, end = path.arc
  #
  # @return [Array(Geom::Point2d, Float, Float, Float), nil] The center point,
  #   radius, start angle, and end angle
  #
  # @version LayOut 2018
  def arc
  end

  # The {#circle} method returns the parameters of a circle from the
  # {Layout::Path}, or +nil+ if path is not a circle.
  #
  # @example
  #   center_point, radius = path.circle
  #
  # @return [Array(Geom::Point2d, Float), nil] The center point and the radius
  #
  # @version LayOut 2018
  def circle
  end

  # The {#close} method closes the {Layout::Path}.
  #
  # @example
  #   path.close
  #
  # @raise [LockedLayerError] if the {Layout::Path} is on a locked
  #   {Layout::Layer}
  #
  # @raise [LockedEntityError] if the {Layout::Path} is locked
  #
  # @raise [ArgumentError] if the {Layout::Path} can not be closed becauase it
  #   contains less than three points.
  #
  # @version LayOut 2018
  def close
  end

  # The {#closed?} method returns whether the {Layout::Path} is closed.
  #
  # @example
  #   is_closed = path.closed?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def closed?
  end

  # The {#end_arrow} method creates a new {Layout::Path} from an end arrow.
  #
  # @example
  #   path = Layout::Path.end_arrow(path_with_end_arrow)
  #
  # @return [Layout::Path, nil] The end arrow
  #
  # @version LayOut 2018
  def end_arrow
  end

  # The {#end_point} method returns the end point of the {Layout::Path}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(2, 2)
  #   path = Layout::Path.new(start_point, end_point)
  #   # should be equal to end_point
  #   endp = path.end_point
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def end_point
  end

  # The {#initialize} method creates a new {Layout::Path} between a start point
  # and an end point, or from a provided {Layout::Rectangle} or
  # {Layout::Ellipse}.
  #
  # @example
  #   start = Geom::Point2d.new(1, 1)
  #   control_1 = Geom::Point2d.new(1.5, 1)
  #   control_2 = Geom::Point2d.new(1, 1.5)
  #   end = Geom::Point2d.new(2, 2)
  #   new_path = Layout::Path.new(start, control_1, control_2, end)
  #
  # @example
  #   start = Geom::Point2d.new(1, 1)
  #   end = Geom::Point2d.new(2, 2)
  #   new_path = Layout::Path.new(start, end)
  #
  # @overload initialize(start_point, control_point_1, control_point_2, end_point)
  #
  #   @param [Geom::Point2D] start_point
  #   @param [Geom::Point2D] control_point_1 The first bezier control point
  #   @param [Geom::Point2D] control_point_2 The second bezier control point
  #   @param [Geom::Point2D] end_point
  #   @return [Layout::Path] a bezier path
  #
  #   @raise [ArgumentError] if the length between start point and end point is
  #     zero
  #
  # @overload initialize(start_point, end_point)
  #
  #   @param [Geom::Point2D] start_point
  #   @param [Geom::Point2D] end_point
  #   @return [Layout::Path] a straight path
  #
  #   @raise [ArgumentError] if the length between start point and end point is
  #     zero
  #
  # @overload initialize(ellipse)
  #
  #   @param [Layout::Ellipse] ellipse
  #   @return [Layout::Path] a path created from the {Layout::Ellipse}
  #
  #   @raise [TypeError] if ellipse is not an {Layout::Ellipse}
  #
  # @overload initialize(rectangle)
  #
  #   @param [Layout::Rectangle] rectangle
  #   @return [Layout::Path] a path created from the {Layout::Rectangle}
  #
  #   @raise [TypeError] if rectangle is not a {Layout::Rectangle}
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#parametric_length} method returns the parametric length for the
  # {Layout::Path}. The parametric length is the length with respect to the curve
  # of the {Layout::Path}.
  #
  # @example
  #   length = path.parametric_length
  #
  # @return [Float]
  #
  # @version LayOut 2018
  def parametric_length
  end

  # The {#point_at} method returns the {Geom::Point2d} at a given parametric
  # value.
  #
  # @example
  #   length = path.parametric_length
  #   # Get the point halfway along the path
  #   halfway_point = path.point_at(length/2)
  #
  # @param [Float] parametric_value
  #
  # @raise [ArgumentError] if the parametric value is less than zero or greater
  #   than the {Layout::Path}'s parametric length
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def point_at(parametric_value)
  end

  # The {#point_types} method returns an array of point types corresponding to
  # the {Geom::Point2d}s in the {Layout::Path}.
  #
  # A point type can be one of the following values:
  # [+POINT_TYPE_MOVE_TO+]
  # [+POINT_TYPE_LINE_TO+]
  # [+POINT_TYPE_BEZIER_TO+]
  # [+POINT_TYPE_ARC_CENTER+]
  # [+POINT_TYPE_BEZIER_CONTROL+]
  # [+POINT_TYPE_CLOSE+]
  #
  # @example
  #   types = path.point_types
  #
  # @return [Array<Integer>] An array of integers that correspond with point types.
  #
  # @version LayOut 2018
  def point_types
  end

  # The {#points} method returns an array of {Geom::Point2d}s in the
  # {Layout::Path}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(2, 2)
  #   new_path = Layout::Path.new(start_point, end_point)
  #   # Should be an array with points [1, 1] and [2, 2]
  #   points = new_path.points
  #
  # @return [Array<Geom::Point2d>]
  #
  # @version LayOut 2018
  def points
  end

  # The {#start_arrow} method creates a new {Layout::Path} from a start
  # arrow.
  #
  # @example
  #   start_arrow = path.start_arrow
  #
  # @return [Layout::Path, nil] The start arrow
  #
  # @version LayOut 2018
  def start_arrow
  end

  # The {#start_point} method returns the start point of the {Layout::Path}.
  #
  # @example
  #   start_point = Geom::Point2d.new(1, 1)
  #   end_point = Geom::Point2d.new(2, 2)
  #   path = Layout::Path.new(start_point, end_point)
  #   # should be equal to start_point
  #   start = path.start_point
  #
  # @return [Geom::Point2d]
  #
  # @version LayOut 2018
  def start_point
  end

  # The {#tangent_at} method returns the tangent {Geom::Vector2d} at the given
  # parametric value.
  #
  # @example
  #   length = path.parametric_length
  #   # Get the tangent halfway along the path
  #   halfway_tangent = path.tangent_at(length/2)
  #
  # @param [Float] parametric_value
  #
  # @raise [ArgumentError] if the parametric value is less than zero or greater
  #   than the {Layout::Path}'s parametric length
  #
  # @return [Geom::Vector2d]
  #
  # @version LayOut 2018
  def tangent_at(parametric_value)
  end

end

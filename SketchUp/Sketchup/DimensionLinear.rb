# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The DimensionLinear class represents linear dimensions.
#
# @version SketchUp 2014
class Sketchup::DimensionLinear < Sketchup::Dimension

  # Constants

  ALIGNED_TEXT_ABOVE = nil # Stub value.
  ALIGNED_TEXT_CENTER = nil # Stub value.
  ALIGNED_TEXT_OUTSIDE = nil # Stub value.

  TEXT_CENTERED = nil # Stub value.
  TEXT_OUTSIDE_END = nil # Stub value.
  TEXT_OUTSIDE_START = nil # Stub value.

  # Instance Methods

  # The aligned_text_position method returns the text position for dimensions
  # with aligned text (i.e. has_aligned_text? returns true).
  # Valid values are class constants:
  # - DimensionLinear::ALIGNED_TEXT_ABOVE
  # - DimensionLinear::ALIGNED_TEXT_CENTER
  # - DimensionLinear::ALIGNED_TEXT_OUTSIDE
  #
  # @example
  #   pos = dim.aligned_text_position
  #   if pos == Sketchup::DimensionLinear::ALIGNED_TEXT_ABOVE
  #     puts 'Text is above'
  #   elsif pos == Sketchup::DimensionLinear::ALIGNED_TEXT_CENTER
  #     puts 'Text is centered'
  #   elsif pos == Sketchup::DimensionLinear::ALIGNED_TEXT_OUTSIDE
  #     puts 'Text is outside'
  #   end
  #
  # @return an integer specifying the text position
  #
  # @version SketchUp 2014
  def aligned_text_position
  end

  # The aligned_text_position= method is used to set the text position for
  # dimensions with aligned text (i.e. has_aligned_text? returns true).
  # Valid values are class constants:
  # - DimensionLinear::ALIGNED_TEXT_ABOVE
  # - DimensionLinear::ALIGNED_TEXT_CENTER
  # - DimensionLinear::ALIGNED_TEXT_OUTSIDE
  #
  # @example
  #   dim.aligned_text_position = Sketchup::DimensionLinear::ALIGNED_TEXT_CENTER
  #
  # @param pos
  #   an integer specifying the text position
  #
  # @return the text position that was set.
  #
  # @version SketchUp 2014
  def aligned_text_position=(pos)
  end

  # The end method returns the point or entity the dimension is referencing at
  # its end.
  #
  # @example
  #   arr = dim.end
  #   if arr[0].nil?
  #     puts "No attached entity. Point is #{arr[1]}"
  #   else
  #     puts "Attached entity: #{arr[0]}, at point #{arr[1]}"
  #   end
  #
  # @return Array - An array of size 2:
  #   - Entity being referenced or nil if not associated.
  #   - Point3d that contains the referenced location.
  #
  # @version SketchUp 2014
  def end
  end

  # The end= method is used to set the end point of the dimension and/or the
  # entity it is referencing.
  #
  # @example
  #   # Reference a point
  #   dim.end = [50, 10, 0]
  #   # Reference end vertex of an edge
  #   dim.end = edge.end
  #   # Attach to an edge's midpoint
  #   p0 = edge.start.position
  #   p1 = edge.end.position
  #   mp = Geom::Point3d.new((p0.x+p1.x)/2.0, (p0.y+p1.y)/2.0, (p0.z+p1.z)/2.0)
  #   dim.end = [edge, mp]
  #
  # @param pt_or_entity
  #   This parameter can take several forms:
  #   - an InputPoint
  #   - a Point3d
  #   - a Vertex
  #   - a ConstructionPoint
  #   - an array of size 2: [Edge, Point3d along the edge]
  #   - an array of size 2: [ConstructionLine, Point3d along the line]
  #
  # @return self
  #
  # @version SketchUp 2014
  def end=(pt_or_entity)
  end

  # The offset_vector method returns the parallel offset vector from the
  # reference line to the dimension line measured from the 'start' reference
  # point.
  #
  # @example
  #   vec = dim.offset_vector
  #   puts "Offset vector is #{vec.to_s}"
  #
  # @return offset vector as a Vector3d
  #
  # @version SketchUp 2014
  def offset_vector
  end

  # The offset_vector= method is used to set the parallel offset vector from the
  # reference line to the dimension line measured from the 'start' reference
  # point.
  #
  # @example
  #   dim.offset_vector = Geom::Vector3d.new(0, 0, 10)
  #   # or
  #   dim.offset_vector = [0, 0, 10]
  #
  # @param vec
  #   the offset vector to be set, either a Vector3d or in
  #   array form.
  #
  # @return the offset vector that was set
  #
  # @version SketchUp 2014
  def offset_vector=(vec)
  end

  # The start method returns the point or entity the dimension is referencing at
  # its start.
  #
  # @example
  #   arr = dim.start
  #   if arr[0].nil?
  #     puts "No attached entity. Point is #{arr[1]}"
  #   else
  #     puts "Attached entity: #{arr[0]}, at point #{arr[1]}"
  #   end
  #
  # @return Array - An array of size 2:
  #   - Entity being referenced or nil if not associated.
  #   - Point3d that contains the referenced location.
  #
  # @version SketchUp 2014
  def start
  end

  # The start= method is used to set the start point of the dimension and/or
  # the entity it is referencing.
  #
  # @example
  #   # Reference a point
  #   dim.start = [50, 10, 0]
  #   # Reference end vertex of an edge
  #   dim.start = edge.end
  #   # Attach to an edge's midpoint
  #   p0 = edge.start.position
  #   p1 = edge.end.position
  #   mp = Geom::Point3d.new((p0.x+p1.x)/2.0, (p0.y+p1.y)/2.0, (p0.z+p1.z)/2.0)
  #   dim.start = [edge, mp]
  #
  # @param pt_or_entity
  #   This parameter can take several forms:
  #   - an InputPoint
  #   - a Point3d
  #   - a Vertex
  #   - a ConstructionPoint
  #   - an array of size 2: [Edge, Point3d along the edge]
  #   - an array of size 2: [ConstructionLine, Point3d along the line]
  #
  # @return self
  #
  # @version SketchUp 2014
  def start=(pt_or_entity)
  end

  # The text_position method returns the position of the text along the dimension
  # line. Valid values are class constants:
  # - DimensionLinear::TEXT_OUTSIDE_START
  # - DimensionLinear::TEXT_CENTERED
  # - DimensionLinear::TEXT_OUTSIDE_END
  #
  # @example
  #   pos = dim.text_position
  #   if pos == Sketchup::DimensionLinear::TEXT_OUTSIDE_START
  #     puts 'Text position is Outside start'
  #   elsif pos == Sketchup::DimensionLinear::TEXT_CENTERED
  #     puts 'Text position is Centered'
  #   elsif pos == Sketchup::DimensionLinear::TEXT_OUTSIDE_END
  #     puts 'Text position is Outside end'
  #   end
  #
  # @return an integer specifying the text position
  #
  # @version SketchUp 2014
  def text_position
  end

  # The text_position= method is used to set the position of the text along the
  # dimension line. Valid values are class constants:
  # - DimensionLinear::TEXT_OUTSIDE_START
  # - DimensionLinear::TEXT_CENTERED
  # - DimensionLinear::TEXT_OUTSIDE_END
  #
  # @example
  #   dim.text_position = Sketchup::DimensionLinear::TEXT_CENTERED
  #
  # @param pos
  #   an integer specifying the text position
  #
  # @return the text position that was set.
  #
  # @version SketchUp 2014
  def text_position=(pos)
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::UVHelper

  # Instance Methods

  # The get_back_UVQ method is used to get the UV coordinates for the back of a
  # face.
  #
  # @example 
  #   uv_helper = face.get_UVHelper true, true, my_texture_writer
  #   face.outer_loop.vertices.each do |vert|
  #     uvq = uv_help.get_back_UVQ(vert.position)
  #     puts "u=" + uvq.x.to_s + " v=" + uvq.y.to_s
  #   end
  #
  # @param point
  #   A Point3d object containing one of the 3D vertexes of
  #   the face.
  #
  # @return point - a Point3d containing the UV coordinates where
  #   the X value is the U value, the Y value is the V value
  #   and the Z value is a Q value (which is not used).
  #
  # @version SketchUp 6.0
  def get_back_UVQ(point)
  end

  # The get_front_UVQ method is used to get the UV coordinates for a front of a
  # face.
  #
  # @example 
  #   uv_helper = face.get_UVHelper true, true, my_texture_writer
  #   face.outer_loop.vertices.each do |vert|
  #     uvq = uv_helper.get_front_UVQ(vert.position)
  #     puts "u=" + uvq.x.to_s + " v=" + uvq.y.to_s
  #   end
  #
  # @param point
  #   A Point3d object containing one of the 3D vertexes of
  #   the face.
  #
  # @return point - a Point3d containing the UV coordinates where
  #   the X value is the U value, the Y value is the V value
  #   and the Z value is a Q value (which is not used).
  #
  # @version SketchUp 6.0
  def get_front_UVQ(point)
  end

end

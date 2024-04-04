# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The UV Helper class contains methods allowing you to determine the location
# (UV coordinates) of a texture on a face. This class is particularly useful
# in determining how textures that have been manipulated using the Texture
# Tweaker should appear when exported to another file type
#
# Use the Face.get_UVHelper method to create a UVHelper for a given face.
# See the TextureWriter class as well.
#
# @version SketchUp 6.0
class Sketchup::UVHelper

  # Instance Methods

  # The {#get_back_UVQ} method is used to get the UV texture coordinates on the
  # back of a face.
  #
  # @example
  #   uv_helper = face.get_UVHelper(true, true, my_texture_writer)
  #   face.outer_loop.vertices.each do |vert|
  #     uvq = uv_helper.get_back_UVQ(vert.position)
  #     # "Normalize" UVQ to UV.
  #     # #x, #y and #z corresponds to U, V and Q respectively,
  #     # as SketchUp re-uses the normal Point3d objects for UVQs
  #     u = uvq.x / uvq.z
  #     v = uvq.y / uvq.z
  #     puts "u=#{u} v=#{v}""
  #   end
  #
  # @note To convert UVQ coordinates to UV,
  #   divide U and V by Q.
  #       u = uvq.u / uvq.q
  #       v = uvq.v / uvq.q
  #
  # @param [Geom::Point3d] point
  #   A point on the face.
  #
  # @return [Geom::Point3d] Point where X represents U, Y represents V and Z represents Q.
  #
  # @version SketchUp 6.0
  def get_back_UVQ(point)
  end

  # The {#get_front_UVQ} method is used to get the UV texture coordinates on the
  # front of a face.
  #
  # @example
  #   uv_helper = face.get_UVHelper(true, true, my_texture_writer)
  #   face.outer_loop.vertices.each do |vert|
  #     uvq = uv_helper.get_front_UVQ(vert.position)
  #     # "Normalize" UVQ to UV.
  #     # #x, #y and #z corresponds to U, V and Q respectively,
  #     # as SketchUp re-uses the normal Point3d objects for UVQs
  #     u = uvq.x / uvq.z
  #     v = uvq.y / uvq.z
  #     puts "u=#{u} v=#{v}""
  #   end
  #
  # @note To convert UVQ coordinates to UV,
  #   divide U and V by Q.
  #       u = uvq.u / uvq.q
  #       v = uvq.v / uvq.q
  #
  # @param [Geom::Point3d] point
  #   A point on the face.
  #
  # @return [Geom::Point3d] Point where X represents U, Y represents V and Z represents Q.
  #
  # @version SketchUp 6.0
  def get_front_UVQ(point)
  end

end

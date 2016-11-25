# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::TextureWriter

  # Instance Methods

  # The {#length} method is used to determine the number of textures loaded into
  # the texture writer.
  # 
  # The {#count} method is an alias for {#length}.
  #
  # @example 
  #   length = tw.length
  #   tw.load(texturable_entities[0])
  #   if length < tw.length
  #     puts("A new entity was successfully loaded into the writer.")
  #   end
  #
  # @return [Integer] length - the number of textures loaded in the texture
  #   writer
  #
  # @version SketchUp 6.0
  def count
  end

  # The filename method is used to retrieve the original filename for a
  # particular texture.
  #
  # @example 
  #   index = tw.load(texturable_entities[0])
  #   filename = tw.filename(index)
  #   puts("filename = #{filename}")
  #
  # @param [Integer] handle
  #   The index or handle of the texture in the texture
  #   writer.
  #
  # @return [String] filename - the filename of the texture on the file system.
  #   Textures can be generated without filenames, so if the
  #   texture doesn't have a name write_all will save the
  #   texture to an image file named "i.png". Where i is the
  #   first integer greater than zero which was not already used
  #   for a png file name.
  #
  # @version SketchUp 6.0
  def filename(handle)
  end

  # The handle method is used to retrieve a handle or index for a specific
  # texture in the texture writer.
  #
  # @example 
  #   load_front_face = true
  #   tw.load(faces[0], load_front_face)
  #   handle = tw.handle(faces[0],load_front_face)
  #
  # @example 
  #   tw.load(texturable_entities[0])
  #   handle = tw.handle(texturable_entities[0])
  #
  # @overload handle(entity)
  # 
  #   @param [Sketchup::Entity] entity A image, component instance, group, or
  #                                    layer.
  #   @return [Integer] handle - the index for the entity in the texture writer.
  #
  # @overload handle(face, side)
  # 
  #   @param [Sketchup::Face] face A face.
  #   @param [Boolean] side        Specifies one of the sides of the face
  #                                (true if front, false if back.)
  #   @return [Integer] handle - the index for the entity in the texture writer.
  #
  # @version SketchUp 6.0
  def handle(*argv, self)
  end

  # The {#length} method is used to determine the number of textures loaded into
  # the texture writer.
  # 
  # The {#count} method is an alias for {#length}.
  #
  # @example 
  #   length = tw.length
  #   tw.load(texturable_entities[0])
  #   if length < tw.length
  #     puts("A new entity was successfully loaded into the writer.")
  #   end
  #
  # @return [Integer] length - the number of textures loaded in the texture
  #   writer
  #
  # @version SketchUp 6.0
  def length
  end

  # The load method is used to load one or more textures into the texture writer
  # for writing out to a file.
  #
  # @example 
  #   index = tw.load(faces[0], true)
  #
  # @example 
  #   index = tw.load(texturable_entities[0])
  #
  # @note If you are passing a face in as the entity argument when loading a
  #   texture you will have to specify the second boolean argument, side.
  #   The argument side specifies which side of the face the texture will be
  #   loaded from.
  #
  # @overload load(entity)
  # 
  #   @param [Sketchup::Entity] entity Image, component instance, group, or layer
  #                                      to load.
  #   @return [Integer] handle - the index or handle of the entity that was
  #                     loaded
  #
  # @overload load(face, side)
  # 
  #   @param [Sketchup::Face] face A face to load.
  #   @param [Boolean] side        A boolean used to indicate the side of the
  #                                face being loaded (true if front, false if
  #                                back).
  #   @return [Integer] handle - the index or handle of the entity that was
  #                     loaded
  #
  # @version SketchUp 6.0
  def load(*argv, self)
  end

  # The write method is used to write an individual textures, within the texture
  # writer, to a file. An entity's texture must have been loaded into the texture
  # writer before this method can be used to write it's texture.
  # 
  # This method will return one of the following status messages. (These are
  # constants that are defined by the API.)
  # 
  #   - 0 = FILE_WRITE_OK
  #   - 1 = FILE_WRITE_FAILED_INVALID_TIFF
  #   - 2 = FILE_WRITE_FAILED_UNKNOWN
  #
  # @example 
  #   tw.load(faces[0], true)
  #   if tw.write(faces[0], true, "C:\\textures\\Face.png") == FILE_WRITE_OK
  #     puts("PNG file successfully written.")
  #   end
  #   if tw.write(faces[0], true, "C:\\textures\\Face.bmp") == FILE_WRITE_OK
  #     puts("BMP file successfully written.")
  #   end
  #   if tw.write(faces[0], true, "C:\\textures\\Face.tif") == FILE_WRITE_OK
  #     puts("TIFF file successfully written.")
  #   end
  #
  # @example 
  #   tw.load(texturable_entities[0])
  #   if tw.write(texturable_entities[0], "C:\\textures\\A.jpg") == FILE_WRITE_OK
  #     puts("JPEG file successfully written.")
  #   end
  #
  # @note If you are passing a face in as the entity argument when writing a
  #   texture you will have to specify the boolean argument, side. The argument
  #   side controls the side of the face from which the texture will be sampled
  #   before writing it.
  #
  # @overload write(entity, filename)
  # 
  #   @param [Sketchup::Entity] entity An image, component instance, group, or
  #                                    layer to write.
  #   @param [String] filename         The name of the file to contain the
  #                                    texture.
  #   @return [Integer] status - one of three status messages (see comments.)
  #
  # @overload write(entity, side, filename)
  # 
  #   @param [Sketchup::Entity] entity A face to write.
  #   @param [Boolean] side            A boolean used to indicate the side of the
  #                                    face being written (true if front, false
  #                                    if back).
  #   @param [String] filename         The name of the file to contain the
  #                                    texture.
  #   @return [Integer] status - one of three status messages (see comments.)
  #
  # @version SketchUp 6.0
  def write(*argv, self)
  end

  # The write_all method is used to write all of the textures within the texture
  # writer to files. It will return one of three status numbers:
  # 
  #   - 0 = FILE_WRITE_OK
  #   - 1 = FILE_WRITE_FAILED_INVALID_TIFF
  #   - 2 = FILE_WRITE_FAILED_UNKNOWN
  #
  # @example 
  #   tw.load(texturable_entities[0]
  #   tw.load(faces[0], false)
  #   if tw.write_all("C:\\textures\\", true) == FILE_WRITE_OK
  #     puts("Texture files were successfully written.")
  #   end
  #
  # @param [String] dirname
  #   The directory to write to.
  #
  # @param [Boolean] filename_format
  #   true to use 8.3 DOS name format.
  #
  # @return [Integer] status - one of three status messages (see comments.)
  #
  # @version SketchUp 6.0
  def write_all(dirname, filename_format)
  end

end

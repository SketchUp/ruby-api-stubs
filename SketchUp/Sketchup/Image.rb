# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# An Image object represents a raster image placed in the Model.
#
# @version SketchUp 6.0
class Sketchup::Image < Sketchup::Drawingelement

  # Instance Methods

  # The explode method is used to explode an image into a face with a texture
  # on it.
  #
  # Note that current versions of SketchUp will return an empty array here.
  # To work around this limitation you can iterate over your entities collection
  # to determine which new entities were created.
  #
  # Versions prior to SketchUp 2015 returned an empty array due to a bug.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = "Plugins/su_dynamiccomponents/images"
  #   image_file = Sketchup.find_support_file("report_tool.png", path)
  #   image = model.active_entities.add_image(image_file, ORIGIN, 300)
  #   entities = image.explode
  #
  # @return entitiesarray - an Array object of entities if
  #   successful
  #
  # @version SketchUp 6.0
  def explode
  end

  # The height method is used to retrieve the height of the image.
  #
  # The height is given in inches.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   height = image.height
  #   if (height)
  #     UI.messagebox height
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return height - the height of the model if successful
  #
  # @version SketchUp 6.0
  def height
  end

  # The height= method is used to set the height of the image.
  #
  # The height is set in inches.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   UI.messagebox "Before adjustment"
  #   height = image.height = 400
  #   if (height)
  #     UI.messagebox height
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param height
  #   The height, in inches, to set the image.
  #
  # @return height - the new height if successful
  #
  # @version SketchUp 6.0
  def height=(height)
  end

  # The {#image_rep} method returns a copy of a {Sketchup::ImageRep} object
  # representing the pixel data.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = "Plugins/su_dynamiccomponents/images"
  #   image_file = Sketchup.find_support_file("report_tool.png", path)
  #   image = model.active_entities.add_image(image_file, ORIGIN, 300)
  #   image_rep = image.image_rep
  #
  # @return [Sketchup::ImageRep]
  #
  # @version SketchUp 2018
  def image_rep
  end

  # The normal method is used to retrieve the 3D Vector that is perpendicular to
  # the plane of the image.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   vector = image.normal
  #   if (vector)
  #     UI.messagebox vector
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def normal
  end

  # The origin method is used to retrieve the 3D point that defines the origin
  # of the image.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   origin = image.origin
  #   if (origin)
  #     UI.messagebox origin
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return point - a Point3d object containing the origin location
  #   if successful
  #
  # @version SketchUp 6.0
  def origin
  end

  # The origin= method is used to set the 3D point as the origin of the image.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   pt2 = Geom::Point3d.new 100,100,100
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   UI.messagebox "Before Move"
  #   origin = image.origin=pt2
  #   if (origin)
  #     UI.messagebox origin
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param point
  #   A Point3d object with the new origin.
  #
  # @return point - the Point3d object representing the newly
  #   established origin if successful
  #
  # @version SketchUp 6.0
  def origin=(point)
  end

  # The path method is used to retrieve the path of the file defining the image.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   path = image.path
  #   if (path)
  #     UI.messagebox path
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return path - the path for the image file if successful
  #
  # @version SketchUp 6.0
  def path
  end

  # The pixelheight method is used to retrieve the height of the image file in
  # pixels.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   pixelheight = image.pixelheight
  #   if (pixelheight)
  #     UI.messagebox pixelheight
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return height - the height of the image in pixels if
  #   successful
  #
  # @version SketchUp 6.0
  def pixelheight
  end

  # The pixelwidth method is used to retrieve the width of the image file in
  # pixels.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   pixelwidth = image.pixelwidth
  #   if (pixelwidth)
  #     UI.messagebox pixelwidth
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return width - the width of the image in pixels if successful
  #
  # @version SketchUp 6.0
  def pixelwidth
  end

  # The size= method is used to set the width and height of the image, in inches.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   UI.messagebox "Before Resize"
  #   size = image.size= 500,500
  #   if (size)
  #     UI.messagebox size
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param width
  #   The width of the image.
  #
  # @param height
  #   The height of the image.
  #
  # @return size - the new width and height of the image if
  #   successful
  #
  # @version SketchUp 6.0
  def size=(width, height)
  end

  # The transform! method is used to apply a transformation to the image.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   point = Geom::Point3d.new 100,100,100
  #   t = Geom::Transformation.new point
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   UI.messagebox "Before Move"
  #   image = image.transform! t
  #   if (image)
  #     UI.messagebox image
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param transform
  #   A Transformation object.
  #
  # @return image - the transformed Image object if successful
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The transformation method is used to retrieve the transformation for the
  # image.
  #
  # @example
  #   # Add an image to the model.
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   path = Sketchup.find_support_file('report_tool.png', 'Plugins/su_dynamiccomponents/images')
  #   point = Geom::Point3d.new(100,100,100)
  #   image = entities.add_image(path, point, 300)
  #
  #   trans = image.transformation
  #
  # @return transformation - a Transformation object if successful
  #
  # @version SketchUp 2014
  def transformation
  end

  # The transformation= method is used to set the transformation for the
  # image.
  #
  # @example
  #   # Add an image to the model.
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   path = Sketchup.find_support_file('report_tool.png', 'Plugins/su_dynamiccomponents/images')
  #   point = Geom::Point3d.new(100,100,100)
  #   image = entities.add_image(path, point, 300)
  #
  #   new_transform = Geom::Transformation.new([100,0,0])
  #   image.transformation = new_transform
  #
  # @param transform
  #   The Transformation object to apply
  #
  # @return image - the newly transformed image
  #
  # @version SketchUp 2014
  def transformation=(transform)
  end

  # The width method is used to retrieve the width of the image.
  #
  # The width is given in inches.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png",
  #     "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   width = image.width
  #   if (width)
  #     UI.messagebox width
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return width - the width of the image if successful
  #
  # @version SketchUp 6.0
  def width
  end

  # The width= method is used to set the width of the image.
  #
  # The width is set in inches.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   UI.messagebox "Before adjustment"
  #   width = image.width=400
  #   if (width)
  #     UI.messagebox width
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param width
  #   The width, in inches, to set the image.
  #
  # @return width - the new width if successful
  #
  # @version SketchUp 6.0
  def width=(width)
  end

  # The zrotation method is used to get the angle that the image is rotated
  # about the normal vector from an arbitrary X axis.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = Sketchup.find_support_file "report_tool.png", "Tools/DynamicComponents/images"
  #   pt = Geom::Point3d.new
  #   entities = model.active_entities
  #   image = entities.add_image path, pt, 300
  #   zrotation = image.zrotation
  #   if (zrotation)
  #     UI.messagebox zrotation
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return vector - a Vector3d object if successful
  #
  # @version SketchUp 6.0
  def zrotation
  end

end

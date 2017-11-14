# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Drawingelement is a base class for an item in the model that can be
# displayed. These items include edges, construction points, construction
# lines, and images. Arc curves and arcs are not included because they are not
# drawing elements by themselves, but are a composition of edges.
#
# @version SketchUp 6.0
class Sketchup::Drawingelement < Sketchup::Entity

  # Instance Methods

  # The bounds method is used to retrieve the BoundingBox for an drawing
  # element.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   # Remember, anything that can be displayed, such as a face, is also
  #   # a Drawingelement. So I can call bounds on a face because Face
  #   # is a sub-class of Drawingelement.
  #   boundingbox = face.bounds
  #
  # @return [Geom::BoundingBox] A BoundingBox object if successful
  #
  # @version SketchUp 6.0
  def bounds
  end

  # The casts_shadows= method is used to set the Drawingelement to cast shadows.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 100]
  #   pts[1] = [width, 0, 100]
  #   pts[2] = [width, depth, 100]
  #   pts[3] = [0, depth, 100]
  #   # Add the face to the entities in the model.
  #   face = entities.add_face pts
  #
  #   # Make the face not cast shadows.
  #   status = face.casts_shadows = false
  #   UI.messagebox status.to_s
  #
  # @param [Boolean] casts
  #   true if you want the Drawingelement object to cast
  #   shadows, false if you do not want the Drawingelement
  #   object to cast shadows.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def casts_shadows=(casts)
  end

  # The casts_shadows? method is used to determine if the Drawingelement is
  # casting shadows.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   status = face.casts_shadows?
  #   UI.messagebox status.to_s
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def casts_shadows?
  end

  # The erase! method is used to erase an element from the model.
  #
  # Erasing an Edge also erases all of the Face objects that use the Edge.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   status = face.erase!
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def erase!
  end

  # The hidden= method is used to set the hidden status for an element.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   UI.messagebox "Click OK to Hide the Box"
  #   status = face.hidden = true
  #
  # @param [Boolean] hidden
  #   true if you want to hide the element, false if you do
  #   not want to hide the element.
  #
  # @return [Boolean] true if the element has been hidden, false if
  #   the element has not been hidden.
  #
  # @version SketchUp 6.0
  def hidden=(hidden)
  end

  # The hidden? method is used to determine if the element is hidden.
  #
  # Hidden elements are still in the model, but they are not displayed.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   status = face.hidden?
  #   UI.messagebox "hidden? " + status.to_s
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def hidden?
  end

  # The layer method is used to retrieve the Layer object of the drawing
  # element.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   layer = face.layer
  #
  # @return [Sketchup::Layer] a layer object if successful
  #
  # @version SketchUp 6.0
  def layer
  end

  # The layer= method is used to set the layer for the drawing element.
  #
  # An exception is raised if you give a string that doesn't match any layer
  # name.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   # Add a layer
  #   layer = Sketchup.active_model.layers.add "joe"
  #   # Put the face on the joe layer (instead of layer 0)
  #   newlayer = face.layer = layer
  #
  # @param [Sketchup::Layer, String] layer
  #   A layer or layer name.
  #
  # @return [Sketchup::Layer, String] the new Layer object if successful
  #
  # @version SketchUp 6.0
  def layer=(layer)
  end

  # The material method is used to retrieve the material for the drawing
  # element.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   material = face.material
  #
  # @return [Sketchup::Material] the Material object if successful
  #
  # @version SketchUp 6.0
  def material
  end

  # The material= method is used to set the material for the drawing
  # element.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   m = model.materials.add "Joe"
  #   begin
  #     # Returns nil if not successful, path if successful.
  #     # Should return a texture object.
  #     m.texture = "c:\\My Textures\\Carpet.jpg"
  #   rescue
  #     UI.messagebox $!.message
  #   end
  #   # You will see the material applied when you reverse the box's faces
  #   material = face.material = m
  #
  # @param [Sketchup::Material, String, Sketchup::Color] material
  #   A Material, name of a material, Color, or name of a
  #   color.
  #
  # @return [Sketchup::Material, String, Sketchup::Color] the new Material object if successful
  #
  # @version SketchUp 6.0
  def material=(material)
  end

  # The receive_shadows= method is used to set the Drawingelement to receive
  # shadows.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 100]
  #   pts[1] = [width, 0, 100]
  #   pts[2] = [width, depth, 100]
  #   pts[3] = [0, depth, 100]
  #   # Add the face to the entities in the model.
  #   face = entities.add_face pts
  #
  #   # Make the face not receive shadows.
  #   status = face.receives_shadows = false
  #   UI.messagebox status.to_s
  #
  # @param [Boolean] receive
  #   true if you want the Drawingelement object to
  #   receive shadows, false if not.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def receives_shadows=(receive)
  end

  # The receive_shadows? method is used to determine if the Drawingelement is
  # receiving shadows.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   status = face.receives_shadows?
  #   UI.messagebox status.to_s
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def receives_shadows?
  end

  # The visible= method is used to set the visible status for an element. This
  # method performs an opposite function to the hidden= method.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   UI.messagebox "Click OK to Hide the Box"
  #   status = face.visible = false
  #
  # @param [Boolean] visibility
  #   true if you want to hide the element, false if not
  #
  # @return [Boolean] true if the element has been hidden, false if
  #   the element has not been hidden.
  #
  # @version SketchUp 6.0
  def visible=(visibility)
  end

  # The visible? method is used to get the visible status for an element.
  #
  # @example
  #   depth = 100
  #   width = 100
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = []
  #   pts[0] = [0, 0, 0]
  #   pts[1] = [width, 0, 0]
  #   pts[2] = [width, depth, 0]
  #   pts[3] = [0, depth, 0]
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   UI.messagebox "Click OK to Hide the Box"
  #   face.visible = false
  #   UI.messagebox "Is the face visible? " + face.visible?.to_s
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def visible?
  end

end

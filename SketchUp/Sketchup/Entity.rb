# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is the base class for all SketchUp entities. Entities are basically
# anything that can be contained in a model, including Drawingelements
# such as Edges, SectionPlanes, Groups, etc. and entities that relate to
# those Drawingelements, such as Loops, Layers, etc.
#
# Keep in mind that the methods below are available on all subclasses.
# For example, an Edge's parent class is Drawingelement, and a
# Drawingelement's parent class is Entity. Therefore an Edge has all of the
# methods defined in Drawingelement and Entity.
#
# The Object.is_a? method is the common way of determining what sort of Entity
# you're dealing with.
#
# @example
#   # Count how many faces are in the current selection.
#   selection = Sketchup.active_model.selection
#   face_count = 0
#
#   # Look at all of the entities in the selection.
#   selection.each { |entity|
#     if entity.is_a? Sketchup::Face
#       face_count = face_count + 1
#     end
#   }
#
#   UI.messagebox("There are " + face_count.to_s + " faces selected.")
#
# @version SketchUp 6.0
class Sketchup::Entity

  # Instance Methods

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   entity = Sketchup.active_model.entities[0]
  #   if entity.valid?
  #     status = entity.add_observer observer
  #   end
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The attribute_dictionaries method is used to retrieve the
  # AttributeDictionaries collection attached to the entity.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   status = entity1.set_attribute "testdictionary", "test", 115
  #   attrdicts = entity1.attribute_dictionaries
  #
  # @return [Sketchup::AttributeDictionaries, nil] the AttributeDictionaries
  #   object associated with the entity, or nil if there are
  #   no attribute_dictionary objects associated with the
  #   model. Care must be taken if nil is returned, for
  #   example: invoking attribute_dictionaries.length will
  #   throw a NoMethodError exception, not return 0.
  #
  # @version SketchUp 6.0
  def attribute_dictionaries
  end

  # The attribute_dictionary method is used to retrieve an attribute dictionary
  # with a given name that is attached to an Entity.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   status = entity1.set_attribute "testdictionary", "test", 115
  #   attrdict = entity1.attribute_dictionary "testdictionary"
  #
  # @param [String] name
  #   The name of the attribute dictionary.
  #
  # @param [Boolean] create
  #   boolean, if set to true then the attribute
  #   dictionary will be created if it does not exist.
  #
  # @return [Sketchup::AttributeDictionary, nil] - an AttributeDictionary object
  #   if successful, or nil if there is no attribute dictionary
  #
  # @version SketchUp 6.0
  def attribute_dictionary(name, create)
  end

  # The delete_attribute method is used to delete an attribute from an entity.
  #
  # If only the dictionary_name is given, then it deletes the entire
  # AttributeDictionary. Otherwise, delete_attribute deletes the attribute with
  # the given key from the given dictionary.
  #
  # In SketchUp 2018, special attribute dictionaries have been added. The name
  # of these dictionaries are "SU_InstanceSet" and "SU_DefinitionSet". The
  # dictionaries cannot be deleted via ruby and an ArgumentError will be raised.
  # The key/value pairs in the dictionary can be deleted safely.
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
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   status = entity1.set_attribute "testdictionary", "test", 115
  #   status = entity1.delete_attribute "testdictionary"
  #
  # @overload delete_attribute(dictionary_name)
  #
  #   @param dictionary_name [String] The name of an attribute dictionary.
  #   @return                [nil]
  #
  # @overload delete_attribute(dictionary_name, key)
  #
  #   @param dictionary_name [String] The name of an attribute dictionary.
  #   @param key             [String] An attribute key.
  #   @return                [nil]
  #
  # @version SketchUp 6.0
  def delete_attribute(*args)
  end

  # The deleted? method is used to determine if your entity is still valid (not
  # deleted by another script, for example.)
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   entity1 = entities[1]
  #   status = entity1.deleted?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def deleted?
  end

  # The entityID method is used to retrieve a unique ID assigned to an entity.
  #
  # The entityID is not persistent between sessions.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   entity1 = entities[1]
  #   id = entity1.entityID
  #
  # @return [Integer] the id for the Entity object
  #
  # @version SketchUp 6.0
  def entityID
  end

  # The {#get_attribute} method is used to retrieve the value of an attribute in
  # the entity's attribute dictionary.
  #
  # If the third parameter, +default_value+, is not passed and there is no
  # attribute that matches the given name, it returns +nil+.
  #
  # If +default_value+ is provided and there is no matching attribute it returns
  # the given value. It does not create an attribute with that name though.
  #
  # @example
  #   # Add an entity to the model:
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   edge = entities.add_line([0, 0, 0], [9, 9, 9])
  #
  #   # Read an attribute value from the edge. In this case this will return the
  #   # default value provided; 42.
  #   value = edge.get_attribute("MyExtension", "MyProperty", 42)
  #
  # @param [String] dict_name
  #   The name of an attribute dictionary.
  #
  # @param [Object] default_value
  #   A default value to return if no attribute is found.
  #
  # @param [String] key
  #   An attribute key.
  #
  # @return [Object] the retrieved value
  #
  # @version SketchUp 6.0
  def get_attribute(dict_name, key, default_value = nil)
  end

  # The to_s method is used to retrieve the string representation of the entity.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   st = entity1.to_s
  #
  # @return [String] the string representation of the entity if
  #   successful
  #
  # @version SketchUp 6.0
  def inspect
  end

  # The model method is used to retrieve the model for the entity.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   m = entity1.model
  #
  # @return [Sketchup::Model] the model that contains the Entity object
  #
  # @version SketchUp 6.0
  def model
  end

  # The parent method is used to retrieve the parent of the entity.
  #
  # The parent will be a ComponentDefinition, a Group, or a Model, whatever
  # the entity is contained within.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   parent = entity1.parent
  #
  # @return [Sketchup::ComponentDefinition, Sketchup::Model] a Entity object
  #   representing the parent of this entity
  #
  # @version SketchUp 6.0
  def parent
  end

  # The {#persistent_id} method is used to retrieve a unique persistent id
  # assigned to an entity.
  #
  # The persistent id persistent between sessions.
  #
  # Note that only a subset of entity types support PIDs. Refer to the table
  # below for which and when support was added.
  #
  # [SketchUp 2018]
  #   - {Sketchup::Page}
  # [SketchUp 2017]
  #   - {Sketchup::Axes}
  #   - {Sketchup::ComponentDefinition}
  #   - {Sketchup::ComponentInstance}
  #   - {Sketchup::ConstructionLine}
  #   - {Sketchup::ConstructionPoint}
  #   - {Sketchup::Curve}
  #   - {Sketchup::Dimension}
  #   - {Sketchup::Edge}
  #   - {Sketchup::Face}
  #   - {Sketchup::SectionPlane}
  #   - {Sketchup::Text}
  #   - {Sketchup::Vertex}
  #   - Polyline3d entities exposed only as {Sketchup::Drawingelement} Use
  #     {#typename} to determine if a {Sketchup::Drawingelement} is
  #     a <tt>"Polyline3d"</tt>.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   pts = [
  #     Geom::Point3d.new(0, 0, 0)
  #     Geom::Point3d.new(9, 0, 0)
  #     Geom::Point3d.new(9, 9, 0)
  #     Geom::Point3d.new(0, 9, 0)
  #   ]
  #
  #   # Add the face to the entities in the model
  #   group = entities.add_group
  #   face = group.entities.add_face(pts)
  #   pid = face.persistent_id
  #   # Exploding the group will preserve the pid.
  #   pid == face.persistent_id # Should return true
  #
  # @return [Integer] the id for the {Sketchup::Entity} object
  #
  # @version SketchUp 2017
  def persistent_id
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   entity = Sketchup.active_model.entities[0]
  #   if entity.valid?
  #     status = entity.remove_observer observer
  #   end
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The set attribute is used to set the value of an attribute in an attribute
  # dictionary with the given name.
  #
  # This method will create a new AttributeDictionary if none exists.
  #
  # Note, a bug prior to SketchUp 2015 would corrupt the model if the key is
  # an empty string. This also includes values that will evaluate to empty
  # strings, such as nil.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   status = entity1.set_attribute "testdictionary", "test", 115
  #
  # @param [String] dict_name
  #   The name of an attribute dictionary.
  #
  # @param [Object] value
  #   The value for the attribute.
  #
  # @param [String] key
  #   An attribute key.
  #
  # @return [Object] the newly set value if successful
  #
  # @version SketchUp 6.0
  def set_attribute(dict_name, key, value)
  end

  # The to_s method is used to retrieve the string representation of the entity.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   st = entity1.to_s
  #
  # @return [String] the string representation of the entity if
  #   successful
  #
  # @version SketchUp 6.0
  def to_s
  end

  # The typename method retrieves the type of the entity, which will be a string
  # such as "Face", "Edge", or "Group".
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #
  #   # I just happen to know that the second and third entities in the
  #   # entities objects are edges.
  #   entity1 = entities[1]
  #   type = entity1.typename
  #
  # @return [String] the type of the entity
  #
  # @version SketchUp 6.0
  def typename
  end

  # The valid? method is used to determine if your entity is still valid (not
  # deleted by another script, for example.)
  #
  # This method is functionally identical to the deleted? method.
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
  #
  #   # Add the face to the entities in the model
  #   face = entities.add_face pts
  #   entity1 = entities[1]
  #   status = entity1.valid?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def valid?
  end

end

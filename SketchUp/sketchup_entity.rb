# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

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
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
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
  # @return attributedictionaries - the AttributeDictionaries
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
  # @param name
  #   The name of the attribute dictionary.
  #
  # @param [optional] create
  #   boolean, if set to true then the attribute
  #   dictionary will be created if it does not exist.
  #
  # @return attributedictionary - an AttributeDictionary object if
  #   successful, or nil if there is no attribute dictionary
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
  # @param dictionary_name
  #   The name of an attribute dictionary.
  #
  # @param key
  #   An attribute key.
  #
  # @return nil
  #
  # @version SketchUp 6.0
  def delete_attribute(dictionary_name)
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
  # @return status - true if deleted, false if not deleted
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
  # @return id - the id for the Entity object
  #
  # @version SketchUp 6.0
  def entityID
  end

  # The get_attribute method is used to retrieve the value of an attribute in
  # the entity's attribute dictionary.
  # 
  # If the third parameter, default_value, is not passed and there is no
  # attribute that matches the given name, it returns nil.
  # 
  # If default_value is provided and there is no matching attribute it returns
  # the given value. It does not create an attribute with that name though.
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
  #   value = entity1.get_attribute "testdictoinary", "test"
  #
  # @param dict_name
  #   The name of an attribute dictionary.
  #
  # @param key
  #   An attribute key.
  #
  # @param [optional] default_value
  #   A default value to return if no attribute
  #   is found.
  #
  # @return value - the retrieved value
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
  # @return string - the string representation of the entity if
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
  # @return model - the model that contains the Entity object
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
  # @return entity - a Entity object representing the parent of
  #   this entity
  #
  # @version SketchUp 6.0
  def parent
  end

  # The {#persistent_id} method is used to retrieve a unique persistent id
  # assigned to an entity.
  # 
  # The persistent id persistent between sessions.
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
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
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
  # @param dict_name
  #   The name of an attribute dictionary.
  #
  # @param key
  #   An attribute key.
  #
  # @param value
  #   The value for the attribute.
  #
  # @return value - the newly set value if successful
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
  # @return string - the string representation of the entity if
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
  # @return type - the type of the entity
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
  # @return status - true if deleted, false if not deleted
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def valid?
  end

end

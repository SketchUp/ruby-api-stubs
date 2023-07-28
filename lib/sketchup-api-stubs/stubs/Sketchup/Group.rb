# Copyright:: Copyright 2023 Trimble Inc.
# License:: The MIT License (MIT)

# A Group class contains methods for manipulating groups of entities.
#
# Groups in SketchUp are very similar to components, but can from a user point
# of view be thought of as unique objects. Groups can be instanced when copied
# but are silently made unique when edited through the GUI. To honor this
# behavior, make sure to call {#make_unique} before modifying a group through
# the API.
#
# @version SketchUp 6.0
class Sketchup::Group < Sketchup::Drawingelement

  # Instance Methods

  # The add_observer method is used to add a ComponentInstance observer to the
  # group.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   status = group.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The copy method is used to create a new Group object that is a copy of the
  # group.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   group2 = group.copy
  #
  # @return [Sketchup::Group] a new Group object
  #
  # @version SketchUp 6.0
  def copy
  end

  # The definition method is used to retrieve the component definition for this
  # group.
  #
  # @example
  #   group = Sketchup.active_model.entities.add_group
  #   definition = group.definition
  #
  # @return [Sketchup::ComponentDefinition] a ComponentDefinition object if
  #   successful
  #
  # @version SketchUp 2015
  def definition
  end

  # The description method is used to retrieve the description for the group.
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
  #   # Add the group to the entities in the model
  #   group = entities.add_group
  #
  #   # Get the entities within the group
  #   entities2 = group.entities
  #
  #   # Add a face to within the group
  #   face = entities2.add_face pts
  #   group.description = "This is a Group with a 2d Face"
  #   description = group.description
  #
  # @return [String] a string description if successful
  #
  # @version SketchUp 6.0
  def description
  end

  # The description= method is used to set the description for the group.
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
  #   # Add the group to the entities in the model
  #   group = entities.add_group
  #
  #   # Get the entities within the group
  #   entities2 = group.entities
  #
  #   # Add a face to within the group
  #   face = entities2.add_face pts
  #   group.description = "This is a Group with a 2d Face"
  #   description = group.description
  #   if (description)
  #     UI.messagebox description
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [String] description
  #   A string description.
  #
  # @return [String] the new description if successful
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The entities method is used to retrieve a collection of entities in the
  # group.
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
  #   # Add the group to the entities in the model
  #   group = entities.add_group
  #
  #   # Get the entities within the group
  #   entities2 = group.entities
  #
  #   # Add a face to within the group
  #   face = entities2.add_face pts
  #   entities = group.entities
  #   if (entities)
  #     UI.messagebox entities
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Sketchup::Entities] an Entities object if successful
  #
  # @version SketchUp 6.0
  def entities
  end

  # The equals? method is used to determine if a group is geometrically
  # equivalent to another group.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   status = group1.equals?(group2)
  #
  # @param [Sketchup::Group] group
  #   The group to compare this group with.
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0
  def equals?(group)
  end

  # The explode method is used to explode the group into individual entities.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #
  #   array = group.explode
  #   if array
  #     UI.messagebox "Exploded the group"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Array<Sketchup::Drawingelement>] An array of entity objects if successful, false if
  #   unsuccessful.
  #
  # @version SketchUp 6.0
  def explode
  end

  # The {#glued_to} method is used to retrieve the entity that this group is
  # glued to.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   transform = Geom::Transformation.new(point)
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   group = entities.add_group
  #   group.entities.add_face([[0, 0, 0], [10, 0, 0], [10, 10, 0], [0, 10, 0]])
  #   status = group.glued_to
  #
  # @return [Sketchup::Face, Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil]
  #
  # @version SketchUp 2021.1
  def glued_to
  end

  # The {glued_to=} method glues this group to a drawing element.
  # When moving this other drawing elment with the Move tool, the glued group moves with it.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #
  #   # Create a face
  #   face = entities.add_face([[0, 0, 0], [100, 0, 0], [100, 100, 0], [0, 100, 0]])
  #
  #   # Create a group
  #   definitions = model.definitions
  #   group = entities.add_group
  #   group.entities.add_face([[0, 0, 0], [10, 0, 0], [10, 10, 0], [0, 10, 0]])
  #
  #   # Make group "gluable"
  #   group.definition.behavior.is2d = true
  #
  #   # Glue the group to the face.
  #   # If you now move the face, the group will follow.
  #   group.glued_to = face
  #
  # @param [Sketchup::Face, Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil] drawing_element
  #
  # @raise ArgumentError if the {Sketchup::Behavior} for this group doesn't allow gluing,
  #   if the alignment is wrong, or if this would lead to cyclic gluing.
  #
  # @return [Sketchup::Face, Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil] the entity the group was glued to.
  #
  # @version SketchUp 2021.1
  def glued_to=(drawing_element)
  end

  # The guid method is used to get the base 64 encoded unique id
  # for this SketchUp object.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   guid = group.guid
  #
  # @return [String] a unique 22 character string
  #
  # @version SketchUp 2014
  def guid
  end

  # The intersect method is used to compute the boolean intersection of two
  # groups representing manifold solid volumes (this & arg).  If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   result = group1.intersect(group2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to intersect this group with.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds. Otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def intersect(group)
  end

  # The {#local_bounds} method is used to retrieve the {Geom::BoundingBox}
  # bounding the contents of a {Sketchup::Group}, in the group's own internal
  # coordinate system.
  #
  # @deprecated In favor of `group.definition.bounds`.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   transformation = Geom::Transformation.new([100,0,0])
  #
  #   # Note that local_bounds_1 and local_bounds_2 will be identical, since
  #   # they both find the bounding box in group's untransformed state.
  #   local_bounds_1 = group.local_bounds
  #   group.transform! transformation
  #   local_bounds_2 = group.local_bounds
  #
  # @return [Geom::BoundingBox]
  #
  # @version SketchUp 7.0
  def local_bounds
  end

  # The locked= method is used to lock a group.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   status = group.locked = true
  #
  # @param [Boolean] lock
  #
  # @return [Boolean] true if the group is locked, false if not
  #
  # @version SketchUp 6.0
  def locked=(lock)
  end

  # The locked? method is used to determine if a group is locked.
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
  #   # Add the group to the entities in the model
  #   group = entities.add_group
  #   status = group.locked?
  #   UI.messagebox status
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def locked?
  end

  # The {#make_unique} method is used to force a group to have a unique
  # definition. If the group is already unique in the model, nothing happens.
  #
  # Copying a group in SketchUp will create a group that shares the same
  # definition. SketchUp implicitly makes group unique when edited from the GUI,
  # and from a user point of view groups could be thought of as always being
  # unique. To honor this behavior, call this method before editing a group
  # through the API.
  #
  # @example
  #   # Assume we have 2 groups, one copied from the other and sharing definitions
  #   groups = Sketchup.active_model.entities.grep(Sketchup::Group)
  #   groups[0].make_unique
  #   if (groups[0].entities.to_a == groups[1].entities.to_a)
  #     puts "This should not happen since we made the groups unique"
  #   end
  #
  # @return [Sketchup::Group] the unique group
  #
  # @version SketchUp 6.0
  def make_unique
  end

  # The manifold? method is used to determine if a group is manifold.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   group = entities.add_instance(definition, transformation)
  #   status = group.manifold?
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0
  def manifold?
  end

  # The {#move!} method is used to set the transformation of this group
  # instance, similarly to {#transformation=} but without recording to the undo
  # stack.
  #
  # This method is useful for moving entities inside of an animation or page
  # transition.
  #
  # @example
  #   point = Geom::Point3d.new 500,500,500
  #   transformation = Geom::Transformation.new point
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
  #   # Add the group to the entities in the model
  #   group = entities.add_group
  #
  #   # Get the entities within the group
  #   entities2 = group.entities
  #
  #   # Add a face to within the group
  #   face = entities2.add_face pts
  #   UI.messagebox "Group before Move"
  #   group = group.move!(transformation)
  #
  # @note Despite the name being similar to {#transform!}, this method closer
  #   corresponds to {#transformation=}.
  #
  # @param [Geom::Transformation] transformation
  #
  # @return [Sketchup::Group] the transformed Group object if successful
  #
  # @version SketchUp 6.0
  def move!(transformation)
  end

  # The name method is used to retrieve the name of the group.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   group.name = "A Line"
  #   name = group.name
  #
  # @return [String] The name of the group if successful
  #
  # @version SketchUp 6.0
  def name
  end

  # The name= method is used to set the description for the group.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #   group.name = "A Line"
  #   name = group.name
  #
  # @param [String] name
  #   A string name.
  #
  # @return [String] a new name if successful
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The outer_shell method is used to compute the outer shell of the two groups
  # representing manifold solid volumes (this || arg).  If the specified objects
  # (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   result = group1.outer_shell(group2)
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to outer shell this group with.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def outer_shell(group)
  end

  # The remove_observer method is used to remove a ComponentInstance observer
  # from the group.
  #
  # @example
  #   group = Sketchup.active_model.entities[0]
  #   if group != nil
  #     if group.is_a? Sketchup::Group
  #       status = group.remove_observer observer
  #     end
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

  # The show_differences method is used to determine if a group is
  # geometrically equivalent to another group and in addition move the non-
  # matching and matching geometry to new layers.
  #
  # This method will move both groups to Layer0.  Geometry that is the same
  # in both groups will be moved to a new layer named group_name + "_same".
  # Geometry that is not the same will be moved to a layer named group_name +
  # "_diff".
  #
  # If verbose is true, a list of all the geometry that is different
  # from one group to the other is displayed texturally in the Ruby Console.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   status = group1.show_differences(group2, true)
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to be compared with.
  #
  # @param [Boolean] verbose
  #   A boolean flag indicating whether to display a textural
  #   report of the found differences to the Ruby console.
  #
  # @return [Boolean] true if the groups are geometrically
  #   equivalent. Otherwise false.
  #
  # @version SketchUp 8.0
  def show_differences(group, verbose)
  end

  # The split method is used to compute the boolean split (map overlay) of the
  # two groups representing manifold solid volumes (this ^ arg). If the
  # specified objects (this and arg) do not represent manifold volumes,
  # this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   result = group1.split(group2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to split this group with.
  #
  # @return [Array(Sketchup::Group, Sketchup::Group, Sketchup::Group), nil] A vector (array) of the three resultant groups
  #   If the two objects (this and arg) represent manifold
  #   solids and the operation succeeds otherwise nil is
  #   returned. The 3 groups are as follows:
  #   The intersection of volume 1 & volume 2,
  #   the difference of volume 1 minus volume 2,
  #   and the reverse difference of volume 2 minus volume 1.
  #
  # @version SketchUp 8.0
  def split(group)
  end

  # The subtract method is used to compute the boolean difference of the two
  # groups representing manifold solid volumes (arg - this).  Both groups are
  # deleted and replaced by the result of subtracting the first from the second
  # group.  If the specified objects (this and arg) do not represent manifold
  # volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   result = group1.subtract(group2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to subtract this group from.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds. Otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def subtract(group)
  end

  # The to_component method is used to convert the group to a component
  # instance.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #
  #   # change the group to a component instance
  #   group.to_component
  #
  # @return [Sketchup::ComponentInstance] the new ComponentInstance object
  #
  # @version SketchUp 6.0
  def to_component
  end

  # The transform! method is used to apply a transformation to a group.
  #
  # @example
  #   point = Geom::Point3d.new 500,500,500
  #   t = Geom::Transformation.new point
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
  #   # Add the group to the entities in the model
  #   group = entities.add_group
  #
  #   # Get the entities within the group
  #   entities2 = group.entities
  #
  #   # Add a face to within the group
  #   face = entities2.add_face pts
  #   UI.messagebox "Group before Move"
  #   group = group.transform! t
  #   if (group)
  #     UI.messagebox "Group after move"
  #     UI.messagebox group
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [Geom::Transformation] transform
  #   A Transformation object.
  #
  # @return [Sketchup::Group] a transformed group object if successful
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The transformation method is used to retrieve the transformation for the
  # group.
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #
  #   trans = group.transformation
  #
  # @return [Geom::Transformation] a Transformation object if successful
  #
  # @version SketchUp 6.0
  def transformation
  end

  # The {#transformation=} method is used to set the transformation of this
  # group
  #
  # @example
  #   # Add a group to the model.
  #   group = Sketchup.active_model.entities.add_group
  #   group.entities.add_line([0,0,0],[100,100,100])
  #
  #   new_transformation = Geom::Transformation.new([100,0,0])
  #   group.transformation = new_transformation
  #
  # @param [Geom::Transformation] transformation
  #
  # @version SketchUp 6.0
  def transformation=(transformation)
  end

  # The trim method is used to compute the (non-destructive) boolean difference
  # of the two groups representing manifold solid volumes (arg - this).  The
  # argument is deleted and replaced by the result of subtracting the first from
  # the second group.  If the specified objects (this and arg) do not represent
  # manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   result = group1.trim(group2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to trim this group against.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def trim(group)
  end

  # The union method is used to compute the boolean union of the two groups
  # representing manifold solid volumes (this | arg).  If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   group1 = entities[0]
  #   group2 = entities[1]
  #   result = group1.union(group2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::Group, Sketchup::ComponentInstance] group
  #   The group to union this group with.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds. Otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def union(group)
  end

  # The volume method is used to compute the volume of this group if and only
  # if this group is manifold.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   group = entities.add_instance(definition, transformation)
  #   volume = group.volume
  #
  # @return [Float] If the group represents a manifold volume,
  #   volume will be a positive value. If volume is negative,
  #   the group is not manifold.
  #
  # @version SketchUp 8.0
  def volume
  end

end

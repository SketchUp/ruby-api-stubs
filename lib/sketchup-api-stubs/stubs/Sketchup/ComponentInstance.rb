# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::ComponentInstance} class is used to represent component
# instances of a component definition or components that have been dragged from
# the Component Browser and placed (thus, instanced) within the Model.
# Therefore, the ComponentInstance class contains a reference to a
# corresponding ComponentDefinition object and a Transformation object (which
# contains the location of the component in the Drawing Window).
#
# Starting from SketchUp 2018+, the {Sketchup::ComponentInstance} class
# contains default attributes when created or imported. The attributes
# are: "Owner", "Status". See the
# {https://help.sketchup.com/en/article/3000124 Help article} for more
# information. The dictionary cannot be deleted via ruby and an @raise ArgumentError
# will be raised. The key/value pairs in the dictionary can be deleted safely.
#
# @version SketchUp 6.0
class Sketchup::ComponentInstance < Sketchup::Drawingelement

  # Instance Methods

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   status = componentinstance.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The definition method is used to retrieve the component definition for this
  # component instance.
  #
  # @example
  #   # First create an instance for us to look at.
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #
  #   # You can get an instance's definition with this method.
  #   definition = componentinstance.definition
  #
  # @return [Sketchup::ComponentDefinition] a ComponentDefinition object if
  #   successful
  #
  # @version SketchUp 6.0
  def definition
  end

  # The definition= method is used to set the component definition for this
  # component.
  #
  # This method causes the instance to use a different definition, but it will
  # use the same transformation to position it in the Model.
  #
  # @example
  #   # Assumes that the active model contains two different components.
  #   instance1 = Sketchup.active_model.entities[0]
  #   instance2 = Sketchup.active_model.entities[1]
  #
  #   # Grab handles to our two definitions.
  #   definition1 = instance1.definition
  #   definition2 = instance2.definition
  #
  #   # Replace 2nd instance with the 1st definition.
  #   instance2.definition = definition1
  #
  # @param [Sketchup::ComponentDefinition] definition
  #   A ComponentDefinition object to set.
  #
  # @return [Sketchup::ComponentDefinition] the ComponentDefinition object
  #   that was set if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def definition=(definition)
  end

  # The equals? method is used to determine if a component instance is
  # geometrically equivalent to another instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   status = instance1.equals?(instance2)
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to compare this instance with.
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0
  def equals?(instance)
  end

  # The explode method is used to explode the component instance into separate
  # entities.
  #
  # @example
  #   # Assuming 'instance' is a ComponentInstance object
  #   array = instance.explode
  #   if array
  #     UI.messagebox "Exploded the component instance"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return [Array<Sketchup::Entity>, false] An array of entity objects if successful, +false+ if
  #   unsuccessful
  #
  # @version SketchUp 6.0
  def explode
  end

  # The {#glued_to} method is used to retrieve the entity that this instance is
  # glued to.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 30)
  #   transform = Geom::Transformation.new(point)
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   path = Sketchup.find_support_file("Bed.skp", "Components/Components Sampler/")
  #   definitions = model.definitions
  #   componentdefinition = definitions.load(path)
  #   instance = entities.add_instance(componentdefinition, transform)
  #   status = instance.glued_to
  #
  # @return [Sketchup::Face, Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil]
  #
  # @version SketchUp 6.0
  def glued_to
  end

  # The {glued_to=} method glues this instance to a drawing element.
  # When moving this other drawing elment with the Move tool, the glued instance moves with it.
  #
  # In SketchUp 2021.1 support for passing {Sketchup::Group}, {Sketchup::ComponentInstance} and
  # {Sketchup::Image} was added.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #
  #   # Create a face
  #   face = entities.add_face([[0, 0, 0], [100, 0, 0], [100, 100, 0], [0, 100, 0]])
  #
  #   # Add component
  #   path = Sketchup.find_support_file("Bed.skp", "Components/Components Sampler/")
  #   point = Geom::Point3d.new(10, 10, 0)
  #   transformation = Geom::Transformation.new(point)
  #   definitions = model.definitions
  #   definition = definitions.load(path)
  #   instance = entities.add_instance(definition, transformation)
  #
  #   # Make component "gluable"
  #   definition.behavior.is2d = true
  #
  #   # Glue the component to the face.
  #   # If you now move the face, the component will follow.
  #   instance.glued_to = face
  #
  # @param [Sketchup::Face, Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil] drawing_element
  #
  # @raise ArgumentError if the {Sketchup::Behavior} for this component doesn't allow gluing,
  #   if the alignment is wrong, or if this would lead to cyclic gluing.
  #
  # @return [Sketchup::Face, Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil] the entity the instance was glued to.
  #
  # @version SketchUp 6.0
  def glued_to=(drawing_element)
  end

  # The guid method is used to get the base 64 encoded unique id
  # for this SketchUp object.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   guid = componentinstance.guid
  #
  # @return [String] a unique 22 character string
  #
  # @version SketchUp 2014
  def guid
  end

  # The intersect method is used to compute the boolean intersection of two
  # instances representing manifold solid volumes (this - arg).  If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   result = instance1.intersect(instance2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to intersect this instance with.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def intersect(instance)
  end

  # The locked= method is used to lock a component instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   status = componentinstance.locked = true
  #
  # @param [Boolean] lock
  #
  # @return [Boolean] true if the component instance is locked.
  #   False if the instance is not locked.
  #
  # @version SketchUp 6.0
  def locked=(lock)
  end

  # The locked? method is used to determine if a component instance is locked.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   status = componentinstance.locked?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def locked?
  end

  # The {#make_unique} method is used to create a component definition for this
  # instance that is not used by any other instances. If the component is already
  # unique in the model, nothing happens.
  #
  # @example
  #   point = Geom::Point3d.new(10,20,30)
  #   transform = Geom::Transformation.new(point)
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #
  #   path = Sketchup.find_support_file("Bed.skp",
  #     "Components/Components Sampler/")
  #   definitions = model.definitions
  #   componentdefinition = definitions.load(path)
  #   instance = entities.add_instance(componentdefinition, transform)
  #   # Returns unique component instance
  #   instance.make_unique
  #
  # @return [Sketchup::ComponentInstance] returns itself
  #
  # @version SketchUp 6.0
  def make_unique
  end

  # The manifold? method is used to determine if an instance is manifold.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   status = componentinstance.manifold?
  #
  # @return [Boolean]
  #
  # @version SketchUp 8.0
  def manifold?
  end

  # The {#move!} method is used to set the transformation of this component
  # instance, similarly to {#transformation=} but without recording to the undo
  # stack.
  #
  # This method is useful for moving entities inside of an animation or page
  # transition.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   new_transformation = Geom::Transformation.new([100,0,0])
  #   componentinstance.move!(new_transformation)
  #
  # @note Despite the name being similar to {#transform!}, this method closer
  #   corresponds to {#transformation=}.
  #
  # @param [Geom::Transformation] transformation
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def move!(transformation)
  end

  # The name method is used to get the name of this instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   name = componentinstance.name
  #
  # @return [String] the string name of the ComponentInstance
  #
  # @version SketchUp 6.0
  def name
  end

  # The name method is used to set the name of this instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   componentinstance.name = "Sang"
  #
  # @param [String] name
  #   the string name to set
  #
  # @return [Sketchup::ComponentInstance] the newly named ComponentInstance
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The outer_shell method is used to compute the outer shell of the two
  # instances representing manifold solid volumes (this || arg). If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   result = instance1.outer_shell(instance2)
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to outer shell this instance with.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def outer_shell(instance)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   status = componentinstance.remove_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The show_differences method is used to determine if a component instance is
  # geometrically equivalent to another instance and in addition move the non-
  # matching and matching geometry to new layers.
  #
  # This method will move both instances to Layer0.  Geometry that is the same
  # in both components will be moved to a new layer named def_name + "_same".
  # Geometry that is not the same will be moved to a layer named def_name +
  # "_diff".
  #
  # If verbose is true, a list of all the geometry that is different
  # from one component to the other is displayed texturally in the Ruby Console.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   status = instance1.show_differences(instance2, true)
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to be compared with.
  #
  # @param [Boolean] verbose
  #   A boolean flag indicating whether to display a textural
  #   report of the found differences to the Ruby console.
  #
  # @return [Boolean] true if the instances are geometrically
  #   equivalent, otherwise false.
  #
  # @version SketchUp 8.0
  def show_differences(instance, verbose)
  end

  # The split method is used to compute the boolean split (map overlay)of the two
  # instances representing manifold solid volumes (this - arg).  If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # resultant groups if the two objects (this and arg) represent manifold solids and the operation
  # succeeds otherwise nil is returned. The 3 groups are as follows: The intersection of volume 1 &
  # volume 2, the difference of volume 1 minus volume 2, and the reverse difference of volume 2 minus
  # volume 1.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   result = instance1.split(instance2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::ComponentInstance, nil] instance
  #   The instance to split this instance with.
  #
  # @return [Array(Sketchup::Group, Sketchup::Group, Sketchup::Group)] A vector (array) of the three
  #
  # @version SketchUp 8.0
  def split(instance)
  end

  # The subtract method is used to compute the boolean difference of the two
  # instances representing manifold solid volumes (this - arg).  If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   result = instance1.subtract(instance2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to subtract this instance from.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def subtract(instance)
  end

  # Apply a {Geom::Transformation} to a component instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0, 0, 0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   new_transformation = Geom::Transformation.new([100, 0, 0])
  #   componentinstance.transform! new_transformation
  #
  # @param [Geom::Transformation] transform
  #   The transformation object to apply to the component instance.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def transform!(transform)
  end

  # The transformation method is used to retrieve the transformation of this
  # instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   t = componentinstance.transformation
  #
  # @return [Geom::Transformation] the Transformation object if successful
  #
  # @version SketchUp 6.0
  def transformation
  end

  # The {#transformation=} method is used to set the transformation of this
  # component instance.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   new_transformation = Geom::Transformation.new([100,0,0])
  #   componentinstance.transformation = new_transformation
  #
  # @param [Geom::Transformation] transformation
  #
  # @version SketchUp 6.0
  def transformation=(transformation)
  end

  # The trim method is used to compute the (non-destructive) boolean difference
  # of the two instances representing manifold solid volumes (this - arg).  If
  # the specified objects (this and arg) do not represent manifold volumes, this
  # method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   result = instance1.trim(instance2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to trim this instance against.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def trim(instance)
  end

  # The union method is used to compute the boolean union of the two instances
  # representing manifold solid volumes (this | arg).  If the specified
  # objects (this and arg) do not represent manifold volumes, this method fails.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   instance1 = entities[0]
  #   instance2 = entities[1]
  #   result = instance1.union(instance2)
  #
  # @note This method is not available in SketchUp Make.
  #
  # @param [Sketchup::ComponentInstance] instance
  #   The instance to union this instance with.
  #
  # @return [Sketchup::Group, nil] The resultant group if the two objects
  #   (this and arg) represent manifold solids and the
  #   operation succeeds otherwise nil is returned.
  #
  # @version SketchUp 8.0
  def union(instance)
  end

  # The volume method is used to compute the volume of this instance if and only
  # if this instance is manifold.
  #
  # @example
  #   entities = Sketchup.active_model.entities
  #   definition = Sketchup.active_model.definitions[0]
  #   transformation = Geom::Transformation.new([0,0,0])
  #   componentinstance = entities.add_instance(definition, transformation)
  #   volume = componentinstance.volume
  #
  # @return [Float] If the instance represents a manifold volume,
  #   volume will be a positive value.  If volume is negative,
  #   the instance is not manifold.
  #
  # @version SketchUp 8.0
  def volume
  end

end

# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::ComponentDefinition} class is used to define the contents for
# a SketchUp component. Components are a collection of entities that can be
# instanced and reused multiple times throughout a model. For example, you
# could draw a chair once, turn it into a component, and then use 6 instances
# of it to surround a table. Edits to the original "definition" will then
# propagate across all of its instances.
#
# The ComponentDefinition class contains the global entities and settings for
# each definition. See the {Sketchup::ComponentInstance} class for how each
# copy is defined.
#
# Starting from SketchUp 2018+, the {Sketchup::ComponentDefinition} class
# contains a new default attribute dictionary named "SU_DefinitionSet" with
# default keys named named "Price", "Size", "Url". See the
# {https://help.sketchup.com/en/article/3000124 Help article} for more
# information. The dictionary cannot be deleted via ruby and an ArgumentError
# will be raised. The key/value pairs in the dictionary can be deleted safely.
#
# @version SketchUp 6.0
class Sketchup::ComponentDefinition < Sketchup::Drawingelement

  # Includes

  include Comparable

  # Instance Methods

  # The <=> method is used to compare two ComponentDefinition objects for
  # sorting. The comparison is done based on the component name.
  #
  # @example
  #   definitions = Sketchup.active_model.definitions
  #   # Sort the definitions by name using the <=> operator.
  #   sorted_list = definitions.sort { |a, b| a <=> b }
  #   # This is the same as using sort_by:
  #   sorted_list = definitions.sort_by(&:name)
  #   sorted_list.each { |definition| puts definition.name }
  #
  # @param [Sketchup::ComponentDefinition] compdef2
  #   The second component definition in the comparison.
  #
  # @return [Integer] a -1 if component1 is less then component2. A 1
  #   if component1 greater than component2
  #
  # @version SketchUp 6.0
  def <=>(compdef2)
  end

  # The == method is used to test if two ComponentDefinition objects are the
  # same (based on their address in memory).
  #
  # @example
  #   c1=Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   c2=Sketchup.find_support_file "Fence.skp",
  #     "Components/Components Sampler/"
  #   c1 == c2
  #
  # @param [Sketchup::ComponentDefinition] compdef2
  #   The second component definition in the comparison.
  #
  # @return [Boolean] true if the ComponentDefinition objects are
  #   the same object. False if the objects are not the same.
  #
  # @version SketchUp 6.0
  def ==(compdef2)
  end

  # The add_classification method is used to add a given classification to
  # the component.
  #
  # Note that you cannot classify image definitions.
  #
  # @example
  #   definition = Sketchup.active_model.definitions.first
  #   success = definition.add_classification("IFC 2x3", "IfcDoor")
  #
  # @param [String] schema_name
  #   a String - Schema name to add
  #
  # @param [String] schema_type
  #   a String - Schema type to add
  #
  # @return [Boolean] true if the classification succeeds. Otherwise false.
  #
  # @version SketchUp 2015
  def add_classification(schema_name, schema_type)
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   status = componentdefinition.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # Attaches a procedure to this component definition, making it a procedural component if the
  # procedure is valid for the component's input geometry. Any previous procedure attached to this
  # definition will be replaced and its output geometry will be regenerated.
  #
  # @api Procedures
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   my_proc = MyModule::MyProcedure.new
  #   Sketchup.register_procedure(my_proc)
  #   definition.attach_procedure(my_proc, { count: 5, spacing: 10.0 })
  #
  # @example Attaching a native procedure by ID
  #   definition = Sketchup.active_model.definitions[0]
  #   definition.attach_procedure(Sketchup::PROCEDURE_ID_FOLLOW_ME, {})
  #
  # @overload attach_procedure(procedure, parameters)
  #
  #   @param [Sketchup::Procedure] procedure  Procedure to be attached.
  #   @param [Hash{Symbol => Integer, Float, String, Boolean}] parameters
  #     A hash of parameter identifier symbols/strings to values. Pass in an empty hash if the
  #     procedure does not need any parameters. The parameter identifiers (hash keys) must match
  #     those declared in the procedure's {Sketchup::Procedure#declare_params_and_ui} method.
  #
  # @overload attach_procedure(procedure_id, parameters)
  #
  #   @param [String] procedure_id  The ID of a registered procedure. Use one of the
  #     +Sketchup::PROCEDURE_ID_*+ constants to target a native procedure (for example
  #     {Sketchup::PROCEDURE_ID_FOLLOW_ME}).
  #   @param [Hash{Symbol => Integer, Float, String, Boolean}] parameters
  #
  # @raise [TypeError] If this is a group or image definition.
  #
  # @raise [TypeError] If parameters is not a Hash.
  #
  # @raise [TypeError] If a parameter value has an unsupported type.
  #
  # @raise [TypeError] If the first argument is neither a {Sketchup::Procedure} nor a String.
  #
  # @raise [ArgumentError] If a String procedure ID is given but no procedure with that ID is
  #   registered.
  #
  # @raise [ArgumentError] If the procedure cannot be attached to this definition most likely due to
  #   input geometry being invalid for the procedure.
  #
  # @return [nil]
  #
  # @see Sketchup::Procedure#declare_params_and_ui
  #
  # @see file:pages/native_procedures.md
  #   Native Procedure Parameters
  #
  # @version SketchUp 2027.0
  def attach_procedure(procedure, parameters)
  end

  # The behavior method is used to retrieve the Behavior object associated with
  # a component definition.
  #
  # @example
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   behavior = componentdefinition.behavior
  #
  # @return [Sketchup::Behavior] a Behavior object if successful
  #
  # @version SketchUp 6.0
  def behavior
  end

  # For a Procedural Component, retrieves a collection of control (input) elements.
  #
  # @api Procedures
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   entities = definition.control_entities if definition.procedural?
  #
  # @raise [TypeError] if this definition is not procedural.
  #
  # @return [Sketchup::Entities]
  #
  # @version SketchUp 2027.0
  def control_entities
  end

  # The count_instances method is used to count the number of unique component
  # instances in a model using this component definition. This does not represent
  # the total number of instances placed in the model as it doesn't take into
  # account instances inside unused definitions.
  #
  # @example
  #   path = Sketchup.find_support_file('Bed.skp',
  #     'Components/Components Sampler/')
  #   definitions = Sketchup.active_model.definitions
  #   definition = definitions.load(path)
  #   number = definition.count_instances
  #
  # @return [Integer] the number of component instances of this
  #   component definition (if successful)
  #
  # @version SketchUp 6.0
  def count_instances
  end

  # The count_used_instances method is used to count the total number of
  # component instances in a model using this component definition. This method
  # takes into account the full hierarchy of the model.
  #
  # @example
  #   path = Sketchup.find_support_file('Bed.skp',
  #     'Components/Components Sampler/')
  #   definitions = Sketchup.active_model.definitions
  #   definition = definitions.load(path)
  #   number = definition.count_used_instances
  #
  # @return [Integer] the number of component instances of this
  #   component definition (if successful)
  #
  # @version SketchUp 2016
  def count_used_instances
  end

  # The description method is used to retrieve the description of the component
  # definition.
  #
  # Component definitions do not have a description, by default.
  #
  # @example
  #   # Get the description
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   description = componentdefinition.description
  #
  # @return [String] the description of the component definition if successful
  #
  # @version SketchUp 6.0
  def description
  end

  # The description= method is used to set the description for the component
  # definition.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   componentdefinition.description = "This is a traditional bed"
  #   description = componentdefinition.description
  #
  # @param [String] description
  #
  # @return [String] the description if successful, false if
  #   unsuccessful
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The entities method retrieves a collection of all the entities in the
  # component definition.
  #
  # SketchUp 2027.0 and later: For a Procedural Component, this will return the output entities.
  # Extension code should not directly modify these entities as they are managed by the procedure.
  # Use {#control_entities} to access the control (input) entities of a Procedural Component.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   entities = componentdefinition.entities
  #
  # @return [Sketchup::Entities] an Entities object if successful
  #
  # @version SketchUp 6.0
  def entities
  end

  # The get_classification_value method is used to retrieve the value from
  # a classification attribute given a key path.
  #
  # @example
  #   definition = Sketchup.active_model.definitions.first
  #   definition.add_classification("IFC 2x3", "IfcDoor")
  #
  #   path = ["IFC 2x3", "IfcDoor", "ObjectType", "IfcLabel"]
  #   value = definition.get_classification_value(path)
  #
  # @param [Array<String>] path
  #   An array composed of the key path to the value.
  #
  # @return [Object, nil] a Ruby object if successful, nil otherwise.
  #
  # @version SketchUp 2015
  def get_classification_value(path)
  end

  # Returns the parameters of the procedure attached to this procedural component definition.
  #
  # @api Procedures
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   # Assuming the definition is procedural and has a procedure attached
  #   parameters = definition.get_procedure_parameters
  #   # => { count: 5, spacing: 10.0 }
  #
  # @raise [TypeError] If this definition is not procedural.
  #
  # @return [Hash{Symbol => Integer, Float, String, Boolean}] A hash of parameter identifier symbols to their current values. Returns an empty hash if the
  #   procedure declares no parameters or is not registered in the current session.
  #
  # @see Sketchup::ComponentDefinition#set_procedure_parameters
  #
  # @see Sketchup::Procedure#declare_params_and_ui
  #
  # @version SketchUp 2027.0
  def get_procedure_parameters
  end

  # The group? method is used to determine if this component definition is used
  # to hold the elements of a group.
  #
  # @example
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   status = componentdefinition.group?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def group?
  end

  # The guid method is used to retrieve the unique identifier of this component
  # definition. The guid changes after the component definition is modified and
  # the component edit is exited.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   guid = componentdefinition.guid
  #
  # @return [String] a string guid if successful
  #
  # @version SketchUp 6.0
  def guid
  end

  # The {#hidden?} method is used to determine if this component definition is
  # hidden in the component browser.
  #
  # This is based on how its instances are placed
  # in the model hierarchy. For more details, see
  # {this article}[https://developer.sketchup.com/article-hiddensubcomponents].
  #
  # In addition, component definitions used by Groups and Images are always hidden
  # in the Component Browser. See {#group?} and {#image?}.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   status = componentdefinition.hidden?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def hidden?
  end

  # The image? method is used to determine if this component definition is used
  # to define an image.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   status = componentdefinition.image?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def image?
  end

  # The insertion_point method is used to retrieve the Point3d object where the
  # component was inserted.
  #
  # @deprecated SketchUp 2020.0 removed the insertion point feature.
  #   The getter will always return the origin point and the
  #   setter becomes a no-op.
  #
  # @example
  #   point = Geom::Point3d.new 10,20,30
  #   transform = Geom::Transformation.new point
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   instance = entities.add_instance componentdefinition, transform
  #   point = componentdefinition.insertion_point
  #
  # @return [Geom::Point3d] the Point3d where the component was inserted if
  #   successful. False if unsuccessful.
  #
  # @version SketchUp 6.0
  def insertion_point
  end

  # Sets the insertion point of your definition.
  #
  # @deprecated SketchUp 2020.0 removed the insertion point feature.
  #   The getter will always return the origin point and the
  #   setter becomes a no-op.
  #
  # @example
  #   point = Geom::Point3d.new(10, 20, 0)
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   componentdefinition.insertion_point = point
  #
  # @param [Geom::Point3d] point
  #   The Point3d object to use as the
  #   insertion point.
  #
  # @return [Geom::Point3d] The Point3d object used as the insertion point.
  #
  # @version SketchUp 6.0
  def insertion_point=(point)
  end

  # The instances method is used to return any array of ComponentInstancesfor
  # this ComponentDefinition.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   instances = componentdefinition.instances
  #
  # @return [Array<Sketchup::ComponentInstance>] an array of ComponentInstances
  #   (if successful)
  #
  # @version SketchUp 6.0
  def instances
  end

  # The internal? method is used to determine if the component definition is
  # internal to the Component Browser
  #
  # @example
  #   point = Geom::Point3d.new 10,20,30
  #   transform = Geom::Transformation.new point
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   status = componentdefinition.internal?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def internal?
  end

  # Invalidates the bounding box of your definition. This command forces the
  # update of the bounding box of definition while inside an operation.
  # See Model.start_operation for how to start an operation.
  #
  # This method is useful if you make changes to your geometry using the Ruby
  # API and then need to know your bounding box size. This method forces
  # SketchUp to recalculate the definition's bounding box when you choose.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   componentdefinition.invalidate_bounds
  #
  # @return [Boolean] true if successful
  #
  # @version SketchUp 6.0
  def invalidate_bounds
  end

  # The {#live_component?} method is used to identify Live Components and
  # sub-definitions of Live Components.
  #
  # @example Skipping Live Components
  #   model = Sketchup.active_model
  #   model.definitions.each { |definition|
  #     next if definition.live_component?
  #     puts definition.name
  #   }
  #
  # @note These components are parametrically generated and API users should not
  #   modify them.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2021.0
  def live_component?
  end

  # The {#load_time} method gets the load time of the component definition. For an internal
  # component definition, this is the time that it was created. For an external component
  # definition, this is the time that it was added to the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   definition = model.definitions.first
  #   definition.load_time
  #
  # @return [Time]
  #
  # @version SketchUp 2025.0
  def load_time
  end

  # Makes this procedural component definition a regular, non-procedural definition. The procedure
  # is detached and the definition keeps either the procedural output geometry or the control
  # (input) geometry, as specified by +retained_geometry+.
  #
  # If +:keep_output+ is requested but the procedural output is empty (for example because the
  # procedure errored), the control (input) geometry is retained instead.
  #
  # @api Procedures
  #
  # @example Detach a component whose procedure's extension is not installed
  #   definition = Sketchup.active_model.definitions[0]
  #   definition.make_non_procedural(:keep_output) if definition.procedural?
  #
  # @example Keep the control (input) geometry
  #   definition.make_non_procedural(:keep_input)
  #
  # @param [Symbol] retained_geometry
  #   Either +:keep_output+ to keep the procedural output geometry,
  #   or +:keep_input+ to keep the control (input) geometry.
  #
  # @raise [TypeError] If this definition is not procedural.
  #
  # @raise [TypeError] If +retained_geometry+ is not a Symbol.
  #
  # @raise [ArgumentError] If +retained_geometry+ is not +:keep_output+ or +:keep_input+.
  #
  # @return [nil]
  #
  # @see Sketchup::ComponentDefinition#attach_procedure
  #
  # @version SketchUp 2027.0
  def make_non_procedural(retained_geometry)
  end

  # The manifold? method is used to determine if a component definition is manifold.
  #
  # A manifold definition is one where all edges are shared by exactly two faces,
  # and there are no holes or singularities. This allows checking if a definition
  # represents a closed solid without needing to create an instance.
  #
  # @example
  #   definition = Sketchup.active_model.definitions.add("Box")
  #   face = definition.entities.add_face([0,0,0], [10,0,0], [10,10,0], [0,10,0])
  #   face.pushpull(-10)
  #   status = definition.manifold?
  #
  # @return [Boolean]
  #
  # @version SketchUp 2026.2
  def manifold?
  end

  # The name method retrieves the name of the component definition.
  #
  # @example
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   name = componentdefinition.name
  #
  # @return [String] the component definition's name if successful
  #
  # @version SketchUp 6.0
  def name
  end

  # The {name=} method is used to set the name of the component definition.
  #
  # The name should be unique to the model, if it's not the name will automatically
  # be made unique.
  #
  # @bug In SketchUp 2022.0 a bug might lead to an available name being incorrectly renamed. Or
  #   a name that should be unavailable would be duplicated. This was fixed in SketchUp 2022.0.1.
  #
  # @example
  #   path = Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   name = componentdefinition.name="Bed"
  #
  # @param [String] name
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # The path method is used to retrieve the path where the component was loaded.
  #
  # @example
  #   path = Sketchup.find_support_file("Bed.skp", "Components/Components Sampler/")
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load(path)
  #   path = componentdefinition.path
  #
  # @return [String] Returns empty string if it is an internal component.
  #
  # @version SketchUp 6.0
  def path
  end

  # Returns whether this component definition is procedural.
  #
  # @api Procedures
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   is_procedural = definition.procedural?
  #
  # @return [Boolean]
  #
  # @version SketchUp 2027.0
  def procedural?
  end

  # The refresh_thumbnail method is used to force SketchUp to regenerate the
  # thumbnail image that appears in the component browser. This is useful if
  # you've used the API to change the geometry of your component and would
  # like the thumbnail to match.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   componentdefinition.refresh_thumbnail
  #
  # @return [nil]
  #
  # @version SketchUp 7.0
  def refresh_thumbnail
  end

  # The remove_classification method is used to remove a given classification
  # from the component.
  #
  # Note that you cannot classify image definitions.
  #
  # @example
  #   definition = Sketchup.active_model.definitions.first
  #   success = definition.remove_classification("IFC 2x3", "IfcDoor")
  #
  # @param [String] schema_name
  #   Schema name to remove
  #
  # @param [String] schema_type
  #   Schema type to remove. If not provided or an
  #   empty string, the currently applied schema type for the
  #   given schema name will be removed.
  #
  # @return [Boolean] true if the removal succeeds. Otherwise false.
  #
  # @version SketchUp 2015
  def remove_classification(schema_name, schema_type)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   status = componentdefinition.remove_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # Runs the procedures attached to this procedural component definition, regenerating
  # its output geometry.
  #
  # By default, procedures run only if the component has been marked as modified (its
  # control geometry changed or its procedures/parameters were updated). Pass +:force+
  # to run the procedures unconditionally.
  #
  # @api Procedures
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   definition.run_procedures           # run only if needed
  #   definition.run_procedures(:force)   # always run
  #
  # @param [Symbol] mode
  #   Either +:if_modified+ (default) or +:force+.
  #
  # @raise [TypeError] If this definition is not procedural.
  #
  # @raise [ArgumentError] If +mode+ is not +:if_modified+ or +:force+.
  #
  # @return nil
  #
  # @version SketchUp 2027.0
  def run_procedures(mode)
  end

  # The {#save_as} method is used to save your definition as a SketchUp file at the
  # specified file destination.
  #
  # Use this method when the user has chosen a path. If you want to "silently" save
  # out the definition, without changing the path it is associated with, use
  # {#save_copy} instead.
  #
  # @bug Prior to SketchUp 2027.0, saving a copy changed the definition {#guid}.
  #
  # @example
  #   my_definition = Sketchup.active_model.definitions[0]
  #   my_definition.save_as("c:\\myComponent.skp")
  #
  # @overload save_as(file_path)
  #
  #   Save as the current SketchUp version.
  #   @param [String] file_path
  #   @version SketchUp 7.0
  #
  # @overload save_as(file_path, version)
  #
  #   Save as a specific SketchUp version.
  #   @param [String] file_path
  #   @param [Integer] version
  #     See {Sketchup::Model#save} for supported values.
  #   @version SketchUp 2022.0
  #
  # @return [Boolean] true if successful, false otherwise
  def save_as(*args)
  end

  # The {#save_copy} method is used to save your definition as a SketchUp file
  # without changing the file path it is already associated with.
  #
  # This can be used to save out to a temporary file used by some other process,
  # without having the temporary path permanentely written to the SketchUp
  # model.
  #
  # @example
  #   my_definition = Sketchup.active_model.definitions[0]
  #   my_definition.save_copy("c:\\myComponent.skp")
  #
  # @overload save_copy(file_path)
  #
  #   Save as the current SketchUp version.
  #   @param [String] file_path
  #
  # @overload save_copy(file_path, version)
  #
  #   Save as a specific SketchUp version.
  #   @param [String] file_path
  #   @param [Integer] version
  #     See {Sketchup::Model#save} for supported values.
  #
  # @return [Boolean] true if successful
  #
  # @version SketchUp 2022.0
  def save_copy(*args)
  end

  # Saves a component thumbnail image. The image format is specified by the
  # file extension of filePath. Supported image formats are bmp, jpg, png,
  # tif, pct, and gif.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   componentdefinition.save_thumbnail "test_thumb.png"
  #
  # @param [String] filename
  #
  # @return [Boolean] true if successful, false otherwise.
  #
  # @version SketchUp 7.0
  def save_thumbnail(filename)
  end

  # The set_classification_value method is used to set the value of a
  # classification attribute given a key path.
  #
  # @example
  #   definition = Sketchup.active_model.definitions.first
  #   definition.add_classification("IFC 2x3", "IfcDoor")
  #
  #   path = ["IFC 2x3", "IfcDoor", "ObjectType", "IfcLabel"]
  #   success = definition.set_classification_value(path, "Room 101")
  #
  # @param [Array<String>] path
  #   An array composed of the key path to the value.
  #
  # @param [Object] value
  #   A value valid for that specific attribute.
  #
  # @raise [NotImplementedError] when trying to set the value of "choice"
  #   attributes.
  #
  # @raise [RuntimeError] if the attributes being set are corrupt.
  #
  # @raise [TypeError] when trying to set a value that is not valid for the
  #   attribute.
  #
  # @return [Boolean] true if the path was valid, false otherwise.
  #
  # @version SketchUp 2015
  def set_classification_value(path, value)
  end

  # Sets the parameters for the procedure attached to this procedural component definition.
  # The component's output geometry will be regenerated with the new parameters.
  #
  # @api Procedures
  #
  # @example
  #   definition = Sketchup.active_model.definitions[0]
  #   # Assuming the definition is procedural and has a procedure attached
  #   definition.set_procedure_parameters(count: 5, spacing: 10.0)
  #
  # @param [Hash{Symbol => Integer, Float, String, Boolean}] parameters
  #   A hash of parameter identifier strings to values. The parameter identifiers (hash keys) must
  #   match those declared in the procedure's {Sketchup::Procedure#declare_params_and_ui} method.
  #
  # @raise [TypeError] If this definition is not procedural.
  #
  # @raise [ArgumentError] If the parameters are invalid for the attached procedure.
  #
  # @see Sketchup::Procedure#declare_params_and_ui
  #
  # @see Sketchup::ComponentDefinition#attach_procedure
  #
  # @version SketchUp 2027.0
  def set_procedure_parameters(parameters)
  end

  # The {#thumbnail_camera} method is used to retrieve a camera representing
  # the thumbnail associated with the component definition.
  #
  # @example
  #   # Get the thumbnail camera
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   thumbnail_camera = componentdefinition.thumbnail_camera
  #
  # @return [Sketchup::Camera] the camera associated with the thumbnail.
  #
  # @version SketchUp 2023.0
  def thumbnail_camera
  end

  # The {#thumbnail_camera=} method is used to set the camera for the
  # thumbnail associated with the component definition.
  #
  # @example
  #   componentdefinition = Sketchup.active_model.definitions[0]
  #   eye = Geom::Point3d.new(20, 5, 30)
  #   target = Geom::Point3d.new(20, 60, 25)
  #   up = Z_AXIS
  #   camera = Sketchup::Camera.new(eye, target, up)
  #   # Assign camera to the thumbnail's camera and refresh.
  #   componentdefinition.thumbnail_camera = camera
  #   componentdefinition.refresh_thumbnail
  #
  # @param [Sketchup::Camera] camera
  #
  # @raise [TypeError] if the passed argument is not of {#Sketchup::Camera} type.
  #
  # @version SketchUp 2023.0
  def thumbnail_camera=(camera)
  end

end

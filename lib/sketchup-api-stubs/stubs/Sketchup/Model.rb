# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# This is the interface to a SketchUp model. The model is the 3D drawing that
# the user is working with, and it serves as the "entry point" for most Ruby
# API interactions. The Sketchup.active_model method gives you a handle to the
# current model, and from there you can use the model-level methods to start
# getting information and making changes.
#
# Constants:
# Product Family
# - Model::ProTrial
# - Model::ProLicensed
# - Model::MakeTrial
# - Model::MakeTrialExpired
#
# @bug Prior to SketchUp 2019.0 this class would yield +TypeError+ for all
#   method calls if +#singleton_class+ was called on the model object.
#
# @example
#   # Grab a handle to the currently active model (aka the one the user is
#   # looking at in SketchUp.)
#   model = Sketchup.active_model
#
#   # Grab other handles to commonly used collections inside the model.
#   entities = model.entities
#   layers = model.layers
#   materials = model.materials
#   component_definitions = model.definitions
#   selection = model.selection
#
#   # Now that we have our handles, we can start pulling objects and making
#   # method calls that are useful.
#   first_entity = entities[0]
#   UI.messagebox("First thing in your model is a #{first_entity.typename}")
#
#   number_materials = materials.length
#   UI.messagebox("Your model has #{number_materials} materials.")
#
#   new_edge = entities.add_line([0,0,0], [500,500,0])
#
# @version SketchUp 6.0
class Sketchup::Model

  # Constants

  LOAD_STATUS_SUCCESS = nil # Stub value.
  LOAD_STATUS_SUCCESS_MORE_RECENT = nil # Stub value.

  Make = nil # Stub value.
  MakeTrial = nil # Stub value.
  ProLicensed = nil # Stub value.
  ProTrial = nil # Stub value.

  VERSION_2013 = nil # Stub value.
  VERSION_2014 = nil # Stub value.
  VERSION_2015 = nil # Stub value.
  VERSION_2016 = nil # Stub value.
  VERSION_2017 = nil # Stub value.
  VERSION_2018 = nil # Stub value.
  VERSION_2019 = nil # Stub value.
  VERSION_2020 = nil # Stub value.
  VERSION_2021 = nil # Stub value.
  VERSION_3 = nil # Stub value.
  VERSION_4 = nil # Stub value.
  VERSION_5 = nil # Stub value.
  VERSION_6 = nil # Stub value.
  VERSION_7 = nil # Stub value.
  VERSION_8 = nil # Stub value.

  # Instance Methods

  # The {#abort_operation} method aborts the current operation started with the
  # start_operation method.
  #
  # The {#abort_operation} method is normally called from inside of a rescue
  # clause to cancel an operation if something goes wrong.
  #
  # @example
  #   status = model.abort_operation
  #
  # @note Never abort a transparent operation. Doing so would abort the operation
  #   it chains to. Instead, try to clean up and simply commit in order to make
  #   sure the operation is closed.
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def abort_operation
  end

  # Returns an {Sketchup::Entities} object which contains
  # the entities in the open group or component instance. If no group or
  # component is open for editing then this will be the same as {#entities}.
  #
  # To perform actions upon the current set of entities the user is working with
  # then this is the method to use. Entities selected by the user will be a
  # subset of the active entities.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   entities.each { |entity| puts "#{entity} (#{entity.class})" }
  #
  # @return [Sketchup::Entities]
  #
  # @see #edit_transform
  #
  # @version SketchUp 6.0
  def active_entities
  end

  # The {#active_layer} method retrieves the active Layer.
  #
  # The default layer in SketchUp is layer 0.
  #
  # @example
  #   model = Sketchup.active_model
  #   layer = model.active_layer
  #
  # @return [Sketchup::Layer]
  #
  # @version SketchUp 6.0
  def active_layer
  end

  # The {#active_layer=} method sets the active {Sketchup::Layer} object.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #   layer = layers.add('My Layer')
  #   model.active_layer = layer
  #
  # @param [Sketchup::Layer] layer
  #   The layer to be set as the active layer.
  #
  # @return [Sketchup::Layer]
  #
  # @version SketchUp 6.0
  def active_layer=(layer)
  end

  # Returns an array containing the sequence of entities the user has
  # double-clicked on for editing. This allows one to determine whether they are
  # in component edit mode and where in the model they are.
  #
  # For example, if a user has double-clicked into a component to
  # edit its geometry, and then double clicked into a sub-group to edit that,
  # the active_path might contain:
  #
  # <code>[<Sketchup::ComponentInstance>, <Sketchup::Group>]</code>
  #
  # @example
  #   active_path = Sketchup.active_model.active_path
  #
  # @return [Array<Sketchup::Drawingelement>, nil] array of entities showing where the user is
  #   currently editing.
  #
  # @version SketchUp 7.0
  def active_path
  end

  # The {#active_path=} method is used to open a given instance path for editing.
  #
  # @example Open an instance
  #   model = Sketchup.active_model
  #   instance = model.active_entities.grep(Sketchup::ComponentInstance).first
  #   instance_path = Sketchup::InstancePath.new([instance])
  #   model.active_path = instance_path
  #
  # @example Close all instances
  #   model = Sketchup.active_model
  #   model.active_path = nil
  #
  # @note An instance path can only be opened if the instances are not locked.
  #   This also include instances of the same component definition that are not
  #   on the given path. A definition cannot be edited if any of its instances
  #   are locked.
  #
  # @note Since changing the active entities in SketchUp also changes what
  #   coordinate system is used, entities can't be modified in the same operation
  #   as the active entities changes. The API handles this automatically by
  #   starting and committing transparent operations as needed.
  #
  #   If the API user tries to do this:
  #
  #       model.start_operation('...', true)
  #       model.active_entities.add_face(...)
  #       model.active_path = instance_path
  #       model.active_entities.add_face(...)
  #       model.commit_operation
  #
  #   Then SketchUp will automatically break it up to something like to this:
  #
  #       model.start_operation('...', true)
  #       model.active_entities.add_face(...)
  #       model.commit_operation
  #
  #       model.start_operation('...', true, false, true)
  #       model.active_path = instance_path
  #       model.commit_operation
  #
  #       model.start_operation('...', true, false, true)
  #       model.active_entities.add_face(...)
  #       model.commit_operation
  #
  #   For the end user this will be experienced as a single operation.
  #
  #   For the API user the side-effect is multiple transaction notifications to
  #   {Sketchup::ModelObserver}s.
  #
  # @param [Sketchup::InstancePath, Array<Sketchup::ComponentInstance, Sketchup::Group>, nil] instance_path
  #   Passing +nil+ or an empty array will close all open instances.
  #
  # @raise [ArgumentError] if the instance path is not valid.
  #
  # @raise [ArgumentError] if the instance path contains locked instances.
  #
  # @raise [ArgumentError] if the instance path contains instances who's
  #   siblings are locked.
  #
  # @raise [ArgumentError] if the instance path contains Live Components.
  #
  # @return [Sketchup::Model]
  #
  # @version SketchUp 2020.0
  def active_path=(instance_path)
  end

  # The {#active_view} method returns the active View object for this model.
  #
  # @example
  #   model = Sketchup.active_model
  #   view = model.active_view
  #
  # @return [Sketchup::View]
  #
  # @version SketchUp 6.0
  def active_view
  end

  # Add a text note to the Model.  The position of the note is given as relative
  # window positions between 0 and 1.  For example, the following command
  # would create a note that start 1/10 of the ways down the screen from the
  # upper left corner of the window.
  #
  # @example
  #   model = Sketchup.active_model
  #   # Add a note 1/10 ways down the screen and 1/10 ways right from the
  #   # upper left corner of model window.
  #   note = Sketchup.active_model.add_note('Hello World', 0.1, 0.1)
  #
  # @param [String] note
  #   A string note.
  #
  # @param [Numeric] x
  #   A distance along the x axis between 0 and 1.
  #
  # @param [Numeric] y
  #   A distance along the y axis between 0 and 1.
  #
  # @return [Sketchup::Text] a note object or an exception if it is
  #   unsuccessful.
  #
  # @version SketchUp 6.0
  def add_note(note, x, y)
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   model = Sketchup.active_model
  #   observer = Sketchup::ModelObserver.new
  #   status = model.add_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The {#attribute_dictionaries} method retrieves the AttributeDictionaries
  # object that is associated with the Model.
  #
  # @example
  #   model = Sketchup.active_model
  #   dictionaries = model.attribute_dictionaries
  #   if dictionaries
  #     # Code to do something if attribute dictionaries exist (usually you
  #     # parse the array of dictionaries.
  #   else
  #     # Code to do something if attribute dictionaries do not exist.
  #   end
  #
  # @return [Sketchup::AttributeDictionaries] the AttributeDictionaries
  #   object associated with the entity, or nil if there are
  #   no attribute_dictionary objects associated with the
  #   model. Care must be taken if nil is returned, for
  #   example: invoking attribute_dictionaries.length will
  #   throw a NoMethodError exception, not return 0.
  #
  # @version SketchUp 6.0
  def attribute_dictionaries
  end

  # Returns the Sketchup::AttributeDictionary object that is specified by
  # name.  If the model does not have an attribute dictionary that
  # corresponds to name, returns either nil, or a creates an attribute
  # dictionary.  If the optional second argument is true, and there is no
  # attribute dictionary that corresponds to name, a new attribute
  # dictionary is created.
  #
  # @example
  #   model = Sketchup.active_model
  #   create_if_empty = true
  #   dictionary = model.attribute_dictionary('name', create_if_empty)
  #
  # @param [String] name
  #   The name of the dictionary you are attempting to
  #   retrieve.
  #
  # @param [Boolean] create
  #   if set to true an attribute dictionary of the
  #   given "name" will be created if not found.
  #
  # @return [Sketchup::AttributeDictionary] an attribute dictionary object if
  #   successful, nil if unsuccessful
  #
  # @version SketchUp 6.0
  def attribute_dictionary(name, create = false)
  end

  # The {#axes} method returns the drawing axes for the model.
  #
  # @example
  #   # Point for a rectangle.
  #   points = [
  #     Geom::Point3d.new( 0,  0, 0),
  #     Geom::Point3d.new(10,  0, 0),
  #     Geom::Point3d.new(10, 20, 0),
  #     Geom::Point3d.new( 0, 20, 0)
  #   ]
  #   # Transform the points so they are local to the model axes. Otherwise
  #   # they would be local to the model origin.
  #   tr = Sketchup.active_model.axes.transformation
  #   points.each { |point| point.transform!(tr) }
  #   Sketchup.active_model.active_entities.add_face(points)
  #
  # @return [Sketchup::Axes] the axes for the model.
  #
  # @version SketchUp 2016
  def axes
  end

  # The behavior method retrieves the behavior of the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   behavior = model.behavior
  #
  # @return [Sketchup::Behavior] behavior object for the model if successful
  #
  # @version SketchUp 6.0
  def behavior
  end

  # The {#bounds} method is used to retrieve the {Geom::BoundingBox} bounding the
  # contents of a {Sketchup::Model}.
  #
  # @example
  #   model = Sketchup.active_model
  #   bounds = model.bounds
  #
  # @return [Geom::BoundingBox]
  #
  # @version SketchUp 6.0
  def bounds
  end

  # The {#classifications} method is used to retrieve the Classifications object
  # for this model.
  #
  # @example
  #   model = Sketchup.active_model
  #   c = model.classifications
  #
  # @return [Sketchup::Classifications] a Classifications object.
  #
  # @version SketchUp 2015
  def classifications
  end

  # The {#close} method is used to close this model. On Mac OS, only the active
  # model can be closed. On Windows, since there can be only one document open,
  # this method will perform a File/New operation.
  #
  # @example
  #   Sketchup.file_new
  #   model = Sketchup.active_model
  #   model.close
  #
  # @note As of SketchUp 2024.0 this method will ensure the next model window
  #   gets focus if there is one. Before that `Sketchup.active_model` might
  #   return `nil` after calling this method even though more models where open.
  #
  # @param [Boolean] ignore_changes
  #   If `true`, model changes will be
  #   ignored and save prompts will be suppressed.
  #   If `false`, changes will not be ignored and save
  #   prompts will be displayed normally.
  #
  # @return [nil]
  #
  # @version SketchUp 2015
  def close(ignore_changes = false)
  end

  # The {#close_active} method is used to close the currently active (open) group
  # or component.
  #
  # @example
  #   model = Sketchup.active_model
  #   status = model.close_active
  #
  # @note Before SketchUp 2014 this method had a bug where it didn't create an
  #   undo operation and that could lead to corrupted geometry when undo/redo was
  #   used after invoking this method.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def close_active
  end

  # The commit_operation method commits an operation for undo.
  #
  # The commit_operation method is normally called at the end of a method to
  # commit the operation that the method performs.
  #
  # @example
  #   status = model.commit_operation
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def commit_operation
  end

  # The {#definitions} method retrieves a definition list containing all of the
  # component definitions in the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #
  # @return [Sketchup::DefinitionList]
  #
  # @version SketchUp 6.0
  def definitions
  end

  # The description method retrieves a description of the model as found in the
  # Model Info > Files panel.
  #
  # The returned description can be empty. The default description for all models
  # is empty.
  #
  # @example
  #   model = Sketchup.active_model
  #   description = model.description
  #
  # @return [String] a description if successful.
  #
  # @version SketchUp 6.0
  def description
  end

  # The {#description=} method sets the description of the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   description = model.description = "This is a model of a house on the " <<
  #     "North West Corner of 10th and Dolores Street in Carmel, California"
  #
  # @param [String] description
  #   the description string to be set.
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def description=(description)
  end

  # The {#drawing_element_visible?} method reports whether the given drawing
  # element in an instance path is visible given the current model options.
  #
  # @example Traversing every visible entity in the model
  #   module Example
  #
  #     def self.instance?(entity)
  #       entity.is_a?(Sketchup::ComponentInstance) || entity.is_a?(Sketchup::Group)
  #     end
  #
  #     # Walk the visible entities in the model, taking into account
  #     # "DrawHiddenGeometry" and "DrawHiddenObjects" rendering options.
  #     def self.walk(entities, transformation = IDENTITY, path = [], &block)
  #       entities.each { |entity|
  #         entity_path = path + [entity]
  #         next unless entity.model.drawing_element_visible?(entity_path)
  #         block.call(entity, transformation, path)
  #         if instance?(entity)
  #           child_entities = entity.definition.entities
  #           child_transformation = transformation * entity.transformation
  #           walk(child_entities, child_transformation, entity_path, &block)
  #         end
  #       }
  #     end
  #
  #   end
  #
  #   model = Sketchup.active_model
  #   Example.walk(model.entities) do |entity, transformation, path|
  #     # Do something to every visible entity in the model...
  #   end
  #
  # @param [Sketchup::InstancePath, Array<Sketchup::Drawingelement>] instance_path
  #
  # @raise [ArgumentError] if the +instance_path+ is not valid.
  #
  # @return [Boolean]
  #
  # @see Sketchup::RenderingOptions
  #
  # @see Sketchup::Drawingelement#visible?
  #
  # @see Sketchup::Layer#visible?
  #
  # @version SketchUp 2020.0
  def drawing_element_visible?(instance_path)
  end

  # Returns the transformation of the current component edit session. If a user
  # has double-clicked to edit a component's geometry, this will
  # return the transformation of that component, relative to its parent's
  # origin. This allows one to correctly calculate "local" transformations of
  # a given entity regardless of whether the user is in edit mode.
  #
  # @example
  #   Sketchup.active_model.edit_transform
  #
  # @return [Geom::Transformation] the current edit Transformation
  #
  # @version SketchUp 7.0
  def edit_transform
  end

  # The {#entities} method returns an {Sketchup::Entities} object containing the
  # entities in the root of model.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.entities
  #
  # @note This does not return a collection of all the entities in the model,
  #   only the top level node of the model hierarchy. To get to all entities in
  #   a model you must recursivly traverse the model.
  #
  # @return [Sketchup::Entities] an Entities object if successful
  #
  # @version SketchUp 6.0
  def entities
  end

  # The export method is used to export a given file format. It knows which
  # format to export based on the file extension you place on the file name.
  # For example, a filename of "thing.obj" will export an OBJ file, whereas
  # "thing.dae" will export a COLLADA file.
  #
  # For SketchUp Pro 7.1+, valid extensions include dae, kmz, 3ds, dwg,
  # dxf, fbx, obj, wrl, and xsi. SketchUp Free only supports dae and kmz.
  #
  # Format Support Changes:
  # * SketchUp 7.1 added COLLADA (.dae) export capability.
  # * SketchUp Pro 2015+ added IFC export capability.
  # * SketchUp Pro 2016+ added PDF export capability.
  # * SketchUp Pro 2018+ added options for all 3D exporters.
  #
  # See the {file:pages/exporter_options.md Exporter Options} file for information
  # on creating a valid hash for the various exporters.
  #
  # @example General use
  #   model = Sketchup.active_model
  #   show_summary = true
  #
  #   # Export dwg file on a PC, showing a summary when complete.
  #   status = model.export('c:\my_export.dwg', show_summary)
  #
  #   # Export kmz file on Mac (note the absolute file path), without summary.
  #   status = model.export('/Library/my_export.kmz')
  #
  #   # Export pdf file on a PC, showing a summary when complete.
  #   options_hash = { :show_summary => true,
  #                    :output_profile_lines => false,
  #                    :map_fonts => false,
  #                    :model_units => Length::Meter }
  #   status = model.export('c:/my_export.pdf', options_hash)
  #
  #   # Or for a COLLADA (.dae) file.
  #   options_hash = { :triangulated_faces => true,
  #                    :doublesided_faces => true,
  #                    :edges => false,
  #                    :author_attribution => false,
  #                    :texture_maps => true,
  #                    :selectionset_only => false,
  #                    :preserve_instancing => true }
  #   status = model.export('c:/my_export.dae', options_hash)
  #
  # @example IFC Example
  #   model = Sketchup.active_model
  #   # If no IFC types are passed in, then no geometry will be exported.
  #   options_hash = { :hidden_geometry => true,
  #                    :ifc_mapped_items => true,
  #                    :ifc_types => ['IfcBuilding', 'IfcDoor']}
  #   status = model.export('c:/my_export.ifc', options_hash)
  #
  # @overload export(path, show_summary = false)
  #
  #   @param [String] path The name of the file to export.
  #   @param [Boolean] show_summary Boolean to show summary dialog.
  #   @return [Boolean]
  #
  # @overload export(path, options)
  #
  #   @param [String] path The path to save the export at.
  #   @param [Hash] options
  #   @return [Boolean]
  #
  # @raise [ArgumentError] If the file extension is unsupported.
  #
  # @version SketchUp 6.0
  def export(*args)
  end

  # Finds and returns entities by their entityID or GUID.
  #
  # GUIDs looked up are only relevant to Group and ComponentInstance as these
  # GUIDs are persistent. ComponentDefinition and Model GUIDs are not persistent
  # and are not looked up.
  #
  # When given an array of IDs, an array is returned with a 1:1 mapping to the
  # input arguments. This array may contain nil values if some ids were not
  # found. You cannot look up a mix of entityIDs and GUIDs in the same call.
  #
  # @example
  #   model = Sketchup.active_model
  #
  #   # Look up by entityID.
  #   entity_id = model.entities.add_line([0,0,0], [9,9,9]).entityID
  #   entity = model.find_entity_by_id(entity_id)
  #
  #   # Look up by GUID.
  #   guid = model.entities.add_group.guid
  #   entity = model.find_entity_by_id(guid)
  #
  #   # Look up multiple.
  #   entities = model.find_entity_by_id(id1, id2, id3)
  #   entities = model.find_entity_by_id([id1, id2, id3])
  #   entities = model.find_entity_by_id(guid1, guid2, guid3)
  #   entities = model.find_entity_by_id([guid1, guid2, guid3])
  #
  # @param [Array<Integer, String>] ids_or_array
  #   Pass either a series of ids or a single array containing
  #   ids. Ids must either be entityID Integers or GUID
  #   Strings.
  #
  # @return [Array<Sketchup::Entity, nil>] Returns an array with Entity  objects for each id
  #   found and nil otherwise. Single Entity or nil when
  #   called with a single id.
  #
  # @version SketchUp 2015
  def find_entity_by_id(ids_or_array)
  end

  # Finds and returns entities by their persistent id.
  #
  # When given an array of IDs, an array is returned with a 1:1 mapping to the
  # input arguments. This array may contain `nil` values if some ids were not
  # found.
  #
  # @example
  #   model = Sketchup.active_model
  #
  #   # Look up by persistent_id.
  #   pid = model.entities.add_line([0,0,0], [9,9,9]).persistent_id
  #   entity = model.find_entity_by_persistent_id(pid)
  #
  #   # Look up multiple.
  #   entities = model.find_entity_by_persistent_id(id1, id2, id3)
  #   entities = model.find_entity_by_persistent_id([id1, id2, id3])
  #
  # @example Limit search by scope
  #   model = Sketchup.active_model
  #   edge_pid = model.entities.add_line([0,0,0], [9,9,9]).persistent_id
  #   layer_pid = model.layers.add('Hello World').persistent_id
  #
  #   # Search in all scopes:
  #   entities = model.find_entity_by_persistent_id(edge_pid, layer_pid)
  #   # => [#<Sketchup::Edge:0x000002567da4a8f0>, #<Sketchup::Layer:0x000002567da49e50>]
  #
  #   # Search in layer scope:
  #   entities = model.find_entity_by_persistent_id(edge_pid, layer_pid, layers: true)
  #   # => [nil, #<Sketchup::Layer:0x000002567da49e50>]
  #
  # @overload find_entity_by_persistent_id(ids_or_array)
  #
  #   @param [Array<Integer>] ids_or_array Pass either a series of ids or a
  #     single array containing persistent ids.
  #
  #   @return [Array<Sketchup::Entity, nil>] Returns an array with
  #     {Sketchup::Entity} objects for each id found and nil otherwise.
  #
  # @overload find_entity_by_persistent_id(ids_or_array, **scope)
  #
  #   @version SketchUp 2020.2
  #   @param [Array<Integer>] ids_or_array Pass either a series of ids or a
  #     single array containing persistent ids.
  #   @param [Hash<Symbol, Boolean>] scope Limit the scope of the search to the
  #     given scope categories.
  #   @option [Boolean] scope :entities Search entities parent to
  #     {Sketchup::Entities}.
  #   @option [Boolean] scope :layers Search {Sketchup::Layers} for
  #     {Sketchup::Layer} entities.
  #   @option [Boolean] scope :layer_folders Search {Sketchup::Layers} for
  #     {Sketchup::LayerFolder} entities.
  #   @option [Boolean] scope :materials Search {Sketchup::Materials} for
  #     {Sketchup::Material} entities.
  #   @option [Boolean] scope :pages Search {Sketchup::Pages} for
  #     {Sketchup::Page} entities.
  #   @option [Boolean] scope :styles Search {Sketchup::Styles} for
  #     {Sketchup::Style} entities.
  #   @option [Boolean] scope :definitions Search {Sketchup::DefinitionList} for
  #     {Sketchup::ComponentDefinition} entities.
  #
  #   @return [Array<Sketchup::Entity, nil>] Returns an array with
  #     {Sketchup::Entity} objects for each id found and nil otherwise.
  #
  # @version SketchUp 2017
  def find_entity_by_persistent_id(*args)
  end

  # This methods determines if the model is georeferenced.
  #
  # @example
  #   if model.georeferenced?
  #     UI.messagebox('This model is georeferenced.')
  #   else
  #     UI.messagebox('This model is NOT georeferenced.')
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.1
  def georeferenced?
  end

  # The get_attribute method gets the value of an attribute that in the
  # AttributeDictionary with the given name. If no value is associated
  # with key, or if the model does not have an attribute dictionary
  # specified by name, the optional third parameter will be returned.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.set_attribute('testdictionary', 'test', 115)
  #   value = model.get_attribute('testdictionary', 'test', 42)
  #
  # @param [String] dictname
  #   The name of the dictionary containing the value.
  #
  # @param [String] key
  #   The key containing the value.
  #
  # @param [Object] defaultvalue
  #   default value that will be returned if a
  #   value does not exist.
  #
  # @return [Object, nil] the value for a given key in the given
  #   dictionary if a value exists; the default value if a
  #   defaultvalue is provided and the value does not exist;
  #   nil if the value does not exist and no defaultvalue is
  #   provided.
  #
  # @version SketchUp 6.0
  def get_attribute(dictname, key, defaultvalue = nil)
  end

  # the get_datum method retrieves the datum, in the form of a string, used in
  # UTM conversions.
  #
  # @example
  #   model = Sketchup.active_model
  #   datum = model.get_datum
  #
  # @return [String] a datum represented as a string if successful.
  #
  # @version SketchUp 6.0
  def get_datum
  end

  # Returns a value which indicates the product family of the installed SketchUp
  # application.
  # As of SketchUp 2013, the return values are:
  # - +0+ = Unknown
  # - +1+ = Pro Trial
  # - +2+ = Pro
  # - +3+ = Pro Expired
  # - +4+ = Make Trial
  # - +5+ = Make Expired
  # - +6+ = Make
  # - +7+ = Pro License Unavailable
  #
  # The Model class defines some of these values as constants as of SketchUp
  # 2016.
  #
  # @example
  #   model = Sketchup.active_model
  #   product_family = model.get_product_family
  #   if product_family == Sketchup::Model::ProLicensed then
  #     puts "You are running licensed SketchUp Pro!"
  #   end
  #
  # @return [Integer] the product family number.
  #
  # @version SketchUp 6.0
  def get_product_family
  end

  # The guid method retrieves the globally unique identifier, in the form of a
  # string, for the Model. The guid will change after the model is modified and
  # saved. The Model guid is stored with the SketchUp file; it will not change if the
  # file is moved to another computer.
  #
  # @example
  #   model = Sketchup.active_model
  #   guid = model.guid
  #
  # @return [String] a globally unique identifier, in the form of a
  #   string, for the model
  #
  # @version SketchUp 6.0
  def guid
  end

  # The import method is used to load a file by recognizing the file extension
  # and calling appropriate importer.
  #
  # See {Sketchup::DefinitionList#import} for importing a 3d model file as a
  # component definition, without activating the UI for placing an instance.
  #
  # See the {file:pages/importer_options.md Importer Options} file for information
  # on creating a valid hash for the various importers.
  #
  # @example Import for SketchUp 2017 and older
  #   model = Sketchup.active_model
  #   show_summary = true
  #   status = model.import("filename", show_summary)
  #
  # @example Import for SketchUp 2018+ and newer
  #   model = Sketchup.active_model
  #   options = { :units => "model",
  #               :merge_coplanar_faces => true,
  #               :show_summary => true }
  #   status = model.import("filename", options)
  #
  # @overload import(path, options)
  #
  #   @param [String] path The input file path.
  #   @param [Hash] options The options.
  #   @return [Boolean]
  #
  # @overload import(path, show_summary = false)
  #
  #   @note This variant is for SketchUp 2017 and earlier.
  #   @param [String] path The input file path.
  #   @param [Boolean] show_summary Show the summary dialog.
  #   @return [Boolean]
  #
  # @version SketchUp 6.0
  def import(*args)
  end

  # The {#instance_path_from_pid_path} method returns a instance path given a
  # string with persistent ids representing the path to the entity.
  #
  # @example
  #   points = [
  #     Geom::Point3d.new( 0,  0, 0),
  #     Geom::Point3d.new(10,  0, 0),
  #     Geom::Point3d.new(10, 20, 0),
  #     Geom::Point3d.new( 0, 20, 0)
  #   ]
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   group = entities.add_group
  #   face = group.entities.add_face(points)
  #   pid_path = "#{group.persistent_id}.#{face.persistent_id}"
  #   # pid_path will look something like this: "658.723"
  #   instance_path = model.instance_path_from_pid_path(pid_path)
  #
  # @param [String] pid_path
  #   a string with persistent ids delimited by period.
  #
  # @raise [ArgumentError] if a valid instance path cannot be created from the
  #   given input path string.
  #
  # @return [Sketchup::InstancePath]
  #
  # @see Sketchup::InstancePath#persistent_id_path
  #
  # @version SketchUp 2017
  def instance_path_from_pid_path(pid_path)
  end

  # The latlong_to_point method converts a latitude and longitude to a Point3d
  # object in the model. It does not actually work with a LatLong object, but
  # operates on a 2-element array. The returned point will always be on the
  # ground (z=0).
  #
  # @example
  #   # Draw a point in Boulder, Colorado (40.0170N, 105.2830W)
  #   lnglat_array = [-105.28300, 40.01700]
  #   model = Sketchup.active_model
  #   local_point = model.latlong_to_point(lnglat_array)
  #   model.entities.add_cpoint(local_point)
  #
  # @param [Array(Numeric, Numeric)] lnglat_array
  #   A 2-element array containing first the longitude then
  #   the latitude.
  #
  # @return [Geom::Point3d] a point3d object if successful, false if
  #   unsuccessful.
  #
  # @version SketchUp 6.0
  def latlong_to_point(lnglat_array)
  end

  # The {#layers} method retrieves a collection of all {Sketchup::Layers} objects
  # in the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   layers = model.layers
  #
  # @return [Sketchup::Layers] a Layers object containing a collection of
  #   layers in the model
  #
  # @version SketchUp 6.0
  def layers
  end

  # The {#line_styles} method returns the line styles manager.
  #
  # @example
  #   line_styles = Sketchup.active_model.line_styles
  #
  # @return [Sketchup::LineStyles] The line styles manager.
  #
  # @version SketchUp 2019
  def line_styles
  end

  # This method retrieves an Array of all of the datums recognized by SketchUp.
  #
  # @example
  #   model = Sketchup.active_model
  #   datums = model.list_datums
  #
  # @return [Array<String>] An Array object containing the datums
  #   supported by SketchUp
  #
  # @version SketchUp 6.0
  def list_datums
  end

  # The {#materials} method returns a collection of all of the materials in the
  # model.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #
  # @return [Sketchup::Materials]
  #
  # @version SketchUp 6.0
  def materials
  end

  # This method can be used to turn mipmapping on or off.
  #
  # @example
  #   Sketchup.active_model.mipmapping = false
  #
  # @param [Boolean] mipmap
  #   whether mipmapping is turned on or off.
  #
  # @return [Boolean] the new mipmapping setting
  #
  # @version SketchUp 7.0
  def mipmapping=(mipmap)
  end

  # This method can be used to find out if mipmapping is on or off.
  #
  # @example
  #   mipmapping = Sketchup.active_model.mipmapping?
  #
  # @return [Boolean]
  #
  # @version SketchUp 7.0
  def mipmapping?
  end

  # The modified? method determines if the Model has been modified since the
  # last save.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   # Add a group to force the status return value to be true
  #   entities.add_group
  #   status = model.modified?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def modified?
  end

  # The {#name} method retrieves the name of the model.
  #
  # This property can be seen in Model Info and maps to the component
  # name if the model is inserted into another model. This property should not
  # be confused with the model {#path}.
  #
  # @example
  #   model = Sketchup.active_model
  #   name = model.name
  #
  # @return [String] string name of the model
  #
  # @version SketchUp 6.0
  def name
  end

  # The {#name=} method sets the string name of the model.
  #
  # @example
  #   Sketchup.active_model.name = "My New Model Name"
  #
  # @param [String] name
  #
  # @version SketchUp 6.0
  def name=(name)
  end

  # Returns the number faces in a model.
  #
  # @example
  #   model = Sketchup.active_model
  #   number_of_faces = model.number_faces
  #   puts "There are #{number_of_faces} faces in the model."
  #
  # @return [Integer]
  #
  # @version SketchUp 7.1
  def number_faces
  end

  # The {#options} method retrieves the options manager that defines the options
  # settings for the model.
  #
  # Use the string keys instead of numerical indicies when accessing the options
  # as the indicies are not consistent between SketchUp versions.
  #
  # @example
  #   # Output all options available.
  #   options_manager = Sketchup.active_model.options
  #   options_manager.each { |options_provider|
  #     puts options_provider.name
  #     options_provider.each { |key, value|
  #       puts "> #{key} - #{value}"
  #     }
  #   }
  #
  # @return [Sketchup::OptionsManager]
  #
  # @version SketchUp 6.0
  def options
  end

  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name} (#{overlay.overlay_id}) Enabled: #{overlay.enabled?}"
  #   }
  #
  # @return [Sketchup::OverlaysManager]
  #
  # @version SketchUp 2023.0
  def overlays
  end

  # The {#pages} method retrieves a {Sketchup::Pages} object containing all of
  # the pages in the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #
  # @return [Sketchup::Pages]
  #
  # @version SketchUp 6.0
  def pages
  end

  # The path method retrieves the path of the file from which the model was
  # opened.
  #
  # An empty string is returned for a model that has not been saved.
  #
  # @example
  #   model = Sketchup.active_model
  #   path = model.path
  #
  # @return [String]
  #
  # @version SketchUp 6.0
  def path
  end

  # The place_component method places a new component in the Model using the
  # component placement tool.
  #
  # @example
  #   model.place_component componentdefinition, repeat
  #
  # @param [Sketchup::ComponentDefinition] componentdef
  #   A component definition object containing the
  #   definition (blueprint) for the component.
  #
  # @param [Boolean] repeat
  #   If set to true, stay in the component
  #   placement tool and place multiple components.
  #
  # @return [Sketchup::Model, nil] The model object on success or Nil
  #
  # @version SketchUp 6.0
  def place_component(componentdef, repeat = false)
  end

  # The point_to_latlong method converts a point in the model to a LatLong so
  # that you can get its latitude and longitude.
  #
  # This method uses the location information set in ShadowInfo.
  #
  # NOTE: SketchUp 6.0 and higher has a change where this method returns a
  # Point3d instead of a LatLong, where the x and y values contain the LatLong
  # coordinates.
  #
  # @example
  #   model = Sketchup.active_model
  #   local_point = Geom::Point3d.new(10, 10, 10)
  #   world_point = model.point_to_latlong(local_point)
  #
  # @param [Geom::Point3d] point
  #   A Point3d object.
  #
  # @return [Geom::Point3d, Geom::LatLong] a LatLong or Point3d object. See
  #   details for information.
  #
  # @version SketchUp 6.0
  def point_to_latlong(point)
  end

  # This method converts a Point3d object in the Model to UTM coordinates.
  #
  # This method uses the location information set in ShadowInfo. See also UTM.
  #
  # @example
  #   model = Sketchup.active_model
  #   point = Geom::Point3d.new(10, 10, 10)
  #   utm = model.point_to_utm(point)
  #
  # @param [Geom::Point3d] point
  #   A Point3d object.
  #
  # @return [Geom::UTM] a UTM object
  #
  # @version SketchUp 6.0
  def point_to_utm(point)
  end

  # The raytest method is used to cast a ray (line) through the model and return
  # the first thing that the ray hits.
  #
  # A ray is a two element array containing a point and a vector
  # [Geom::Point3d(), Geom::Vector3d()]. The point defines the start point of
  # the ray and the vector defines the direction. If direction can not be
  # normalized (e.g. direction = [0, 0, 0]), direction is taken as a point the
  # ray intersects.
  #
  # first value is a Point3d where the item that the ray passed through exists. The second element is
  # the instance path array of the entity that the ray hit. For example, if the ray hits a face that
  # is contained by a component instance the instance path would be [Component1]. If the ray hit a
  #   face that is contained by a component instance, which
  #   is contained by another component instance and so on,
  #   the instance path would be [Component1, Component2,
  #   Component3...].
  #
  # @example
  #   model = Sketchup.active_model
  #   ray = [Geom::Point3d.new(1, 2, 3), Geom::Vector3d.new(4, 5, 6)]
  #   item = model.raytest(ray, false) # Consider hidden geometry when
  #                                    # computing intersections.
  #
  # @note The parameter wysiwyg_flag was added in SU8 M1.
  #
  # @param [Array(Geom::Point3d, Geom::Vector3d)] ray
  #   A two element array containing a point and a vector.
  #
  # @param [Boolean] wysiwyg_flag
  #   An optional boolean, added in SU8 M1, indicating
  #   whether or not to consider hidden geometry in intersect
  #   computations.  If this flag is not specified, it
  #   defaults to true (WYSIWYG) - i.e. hidden geometry is
  #   not intersected against.
  #
  # @return [Array(Geom::Point3d, Array<Sketchup::Drawingelement>), nil] an array of two values. The
  #
  # @version SketchUp 6.0
  def raytest(ray, wysiwyg_flag = true)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   model = Sketchup.active_model
  #   observer = Sketchup::ModelObserver.new
  #   model.add_observer(observer)
  #   status = model.remove_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#rendering_options} method retrieves the RenderingOptions object for
  # this model.
  #
  # @example
  #   model = Sketchup.active_model
  #   renderingoptions = model.rendering_options
  #
  # @return [Sketchup::RenderingOptions]
  #
  # @version SketchUp 6.0
  def rendering_options
  end

  # This method is used to save the model to a file.
  #
  # @example
  #   model = Sketchup.active_model
  #   # Save the model using the current SketchUp format
  #   path = File.join(ENV['HOME'], 'Desktop', 'mysketchup.skp')
  #   status = model.save(path)
  #
  #   # Save the model to the current file using the current SketchUp format
  #   status = model.save
  #
  #   # Save the model to the current file in SketchUp 8 format
  #   status = model.save("", Sketchup::Model::VERSION_8)
  #
  #   # Save the model in SketchUp 8 format
  #   path = File.join(ENV['Home'], 'Desktop', 'mysketchup_v8.skp')
  #   status = model.save(path, Sketchup::Model::VERSION_8)
  #
  # @note A bug in SketchUp 2016 and older caused the +.skb+ backup file
  #   written during save to be empty. The +.skp+ file was however valid.
  #
  # @note Starting with SketchUp 2021, SketchUp is using a the same file format across versions.
  #   For instance, SketchUp 2021 can open a file made in SketchUp 2022.
  #
  # @overload save
  #
  #   Save model to the path it is already associated with.
  #   @raise ArgumentError if the model is not previosly saved.
  #   @version SketchUp 2014
  #
  # @overload save(path)
  #
  #   Save the model to a given path.
  #   @version SketchUp 6.0
  #   @param [String] path
  #     If empty, the model saves to the path it is already associated with.
  #
  # @overload save(path, version)
  #
  #   Save the model as a specific SketchUp file version to a given path.
  #   @version SketchUp 2014
  #   @param [String] path
  #   @param [Integer] version
  #     Possible values are:
  #     - Sketchup::Model::VERSION_3,
  #     - Sketchup::Model::VERSION_4,
  #     - Sketchup::Model::VERSION_5,
  #     - Sketchup::Model::VERSION_6,
  #     - Sketchup::Model::VERSION_7,
  #     - Sketchup::Model::VERSION_8,
  #     - Sketchup::Model::VERSION_2013,
  #     - Sketchup::Model::VERSION_2014,
  #     - Sketchup::Model::VERSION_2015,
  #     - Sketchup::Model::VERSION_2016,
  #     - Sketchup::Model::VERSION_2017,
  #     - Sketchup::Model::VERSION_2018,
  #     - Sketchup::Model::VERSION_2019,
  #     - Sketchup::Model::VERSION_2020,
  #     - Sketchup::Model::VERSION_2021
  #
  # @return [Boolean] +true+ if successful, +false+ if unsuccessful
  def save(*args)
  end

  # This method is used to save the copy of the current model to a file.
  #
  # @example
  #   model = Sketchup.active_model
  #   # Save copy of the model using the current SketchUp format
  #   path = File.join(ENV['Home'], 'Desktop', 'myModelCopy.skp')
  #   status = model.save_copy(path)
  #
  #   # Save copy of the model in SketchUp 8 format
  #   path = File.join(ENV['Home'], 'Desktop', 'mysketchupcopy_v8.skp')
  #   status = model.save_copy(path, Sketchup::Model::VERSION_8)
  #
  # @param [String] path
  #   The path of the file to save the model copy to.
  #
  # @param [Integer] version
  #   See {Sketchup::Model#save} for supported values.
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 2014
  def save_copy(path, version)
  end

  # The save_thumbnail method is used to save a thumbnail image to a file.
  # The image format is specified by the file extension of filename.  Supported
  # formats are bmp, jpg, png, tif, pct, and gif.
  #
  # @example
  #   model = Sketchup.active_model
  #   status = model.save_thumbnail('testthumbnail2.jpg')
  #
  # @param [String] filename
  #   The name of the file, with extension, to save the
  #   thumbnail as.
  #
  # @return [Boolean] true if successful, false if unsuccessful
  #
  # @version SketchUp 6.0
  def save_thumbnail(filename)
  end

  # This method is used to select a SketchUp Tool object s the active tool. You
  # must implement the SketchUp Tool interface to create a tool prior to calling
  # this method.
  #
  # The select tool is activated if you pass nil to the select_tool method. You
  # must implement the SketchUp Tool interface to create a tool, prior to calling
  # this method, and then instance the tool implementation and pass the object to
  # this method. If you attempt to set the select_tool to nil in the initialize
  # method of a tool you have written, it will be ignored.
  #
  # @example
  #   model = Sketchup.active_model
  #   tool = model.select_tool(nil)
  #
  # @param [Object] tool
  #   The Tool object you want to select.
  #
  # @return [Sketchup::Model] The Model object.
  #
  # @version SketchUp 6.0
  def select_tool(tool)
  end

  # This method retrieves a Selection object for the model, containing the
  # currently selected entities. The entries in the selection list are not
  # necessarily in the same order in which the user selected them.
  #
  # @example
  #   model = Sketchup.active_model
  #   selection = model.selection
  #
  # @return [Sketchup::Selection] A Selection object with 0 or more entities
  #   that are currently selected.
  #
  # @version SketchUp 6.0
  def selection
  end

  # This method is used to set the value of an attribute in an attribute
  # dictionary with the given name.
  #
  # This method can be used create a new AttributeDictionary object, if needed.
  #
  # @example
  #   model = Sketchup.active_model
  #   value = model.set_attribute('attributedictionaryname', 'key', 'value')
  #
  # @param [String] attrdictname
  #   The name of the attribute dictionary whose attribute
  #   you wish to set.
  #
  # @param [String] key
  #   The attribute name.
  #
  # @param [Object] value
  #   The value to set.
  #
  # @return [Object] the value that was set
  #
  # @version SketchUp 6.0
  def set_attribute(attrdictname, key, value)
  end

  # This method sets the datum used in conversions between the internal
  # coordinate system and UTM.
  #
  # The default datum is WGS84. You can use the method list_datums to get a list
  # of all of the datums supported in SketchUp. If you pass an invalid datum to
  # set_datum, set_datum returns the default datum.
  #
  # @example
  #   model = Sketchup.active_model
  #   value = model.set_datum('Adindan')
  #
  # @param [String] datum
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def set_datum(datum)
  end

  # This method is used to retrieve the shadow information for the Model.
  #
  # @example
  #   model = Sketchup.active_model
  #   shadowinfo = model.shadow_info
  #
  # @return [Sketchup::ShadowInfo]
  #
  # @version SketchUp 6.0
  def shadow_info
  end

  # The {#start_operation} method is used to notify SketchUp that a new
  # operation (which can be undone) is starting.
  #
  # The +op_name+ argument is a description for the operation that is displayed
  # adjacent to the Edit > Undo menu item. Make sure to provide a user friendly
  # name for your operation.
  #
  # Starting with SketchUp 7.0, there are three additional booleans that one can
  # pass in when starting an operation. It is recommended to always set
  # +disable_ui+ to +true+. It's left to +false+ for default for compatibility
  # reasons.
  #
  # @example Observer Operation since SU2016
  #   class MyDefinitionsObserver < Sketchup::DefinitionObserver
  #     def onComponentAdded(definitions, definition)
  #       return if definition.deleted?
  #       # The operation name won't be displayed when the fourth argument is
  #       # +true+. It will absorb into the previous operation.
  #       definition.model.start_operation('Tag It', true, false, true)
  #       definition.set_attribute('MyExtension', 'Tag', 'You are it')
  #       definition.model.commit_operation
  #     end
  #   end
  #
  #   observer = MyDefinitionsObserver.new
  #   model = Sketchup.active_model
  #   model.definitions.add_observer(observer)
  #
  # @example Typical Operation
  #   model = Sketchup.active_model
  #   model.start_operation('Generate House', true)
  #   model.entities.add_line([0, 0, 0], [9, 0, 0])
  #   model.entities.add_line([9, 0, 0], [9, 0, 9])
  #   model.commit_operation
  #
  # @note Operations in SketchUp are sequential and cannot be nested. If you start a
  #   new Ruby operation while another is still open, you will implicitly close
  #   the first one.
  #
  # @param [String] op_name
  #   name of the operation visible in the UI
  #
  # @param [Boolean] disable_ui
  #   if set to true, then SketchUp's tendency to
  #   update the user interface after each geometry change will be
  #   suppressed. This can result in much faster Ruby code execution if the
  #   operation involves updating the model in any way.
  #
  # @param [Boolean] next_transparent
  #   <b>Deprecated!</b> if set to true, then
  #   whatever operation comes after this one will be appended into one
  #   combined operation, allowing the user the undo both actions with a
  #   single undo command. This flag is a highly difficult one, since there
  #   are so many ways that a SketchUp user can interrupt a given operation
  #   with one of their own. <b>Use extreme caution</b> and test thoroughly
  #   when setting this to true.
  #
  # @param [Boolean] transparent
  #   if set to true, then this operation will
  #   append to the previous operation. This is particularly useful for
  #   creating observers that react to user actions without littering the
  #   undo stack with extra steps that Ruby is performing.
  #
  # @raise [RuntimeError] if called within the context of {Sketchup::Entities#build}.
  #
  # @return [Boolean] +true+ if successful, +false+ if unsuccessful
  #
  # @version SketchUp 6.0
  def start_operation(op_name, disable_ui = false, next_transparent = false, transparent = false)
  end

  # The {#styles} method retrieves the styles associated with the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   styles = model.styles
  #
  # @return [Sketchup::Styles]
  #
  # @version SketchUp 6.0
  def styles
  end

  # The tags method retrieves the string tags of the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   tags = model.tags
  #
  # @return [String] string tags of the model
  #
  # @version SketchUp 6.0
  def tags
  end

  # The tags= method sets the string tags of the model.
  #
  # @example
  #   Sketchup.active_model.tags = "Building, House, Brick"
  #
  # @param [String] tags
  #   new tags of the model
  #
  # @return [String] the new tags
  #
  # @version SketchUp 6.0
  def tags=(tags)
  end

  # The tile method retrieves the name of the model. If the model is saved on
  # disk, returns the file name without extension. Otherwise returns an empty
  # string.
  #
  # @example
  #   model = Sketchup.active_model
  #   title = model.title
  #
  # @return [String] the title of the model or an empty string (if
  #   the title is not set)
  #
  # @version SketchUp 6.0
  def title
  end

  # The {#tools} method is used to retrieve the current {Sketchup::Tools} object.
  #
  # @example
  #   model = Sketchup.active_model
  #   tools = model.tools
  #
  # @return [Sketchup::Tools] a Tools object.
  #
  # @version SketchUp 6.0
  def tools
  end

  # The utm_to_point method converts a position given in UTM coordinates to a
  # Point3d in the Model.
  #
  # @example
  #   model = Sketchup.active_model
  #   utm = Geom::UTM.new([+1, "A", 0.12333333, 0.12321321])
  #   point = model.utm_to_point(utm)
  #
  # @param [Geom::UTM] utm
  #   A UTM object.
  #
  # @return [Geom::Point3d] A Point3d object.
  #
  # @version SketchUp 6.0
  def utm_to_point(utm)
  end

  # Determine if a model is a valid Sketchup::Model object. Returns false
  # if the model has been closed.
  #
  # This is useful on the mac where one can have multiple models open at the
  # same time. In such a case, this method can tell you if the user has closed
  # the model before you perform operations on it.
  #
  # @example
  #   # This is a silly example since the active model is generally going to
  #   # be valid, but it illustrates the idea.
  #   model = Sketchup.active_model
  #   if model.valid?
  #     UI.messagebox('This model is valid.')
  #   else
  #     UI.messagebox('This model is NOT valid.')
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def valid?
  end

end

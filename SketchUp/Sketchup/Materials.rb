# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A collection of Materials objects. Each model contains a Materials collection
# that can be accessed via Model.materials.
#
# @example
#   # Get a handle to all the materials in the current model.
#   model = Sketchup.active_model
#   materials = model.materials
#
# @version SketchUp 6.0
class Sketchup::Materials < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieve a material by index or name.
  #
  # The {#at} method is an alias of {#[]}
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials[0]
  #
  # @overload [](index)
  #
  #   @param index [Integer] A number representing the material's index in an array
  #                        of Material objects.
  #   @return [Sketchup::Material, nil] a Material object on success, Nil on failure
  #
  # @overload [](name)
  #
  #   @param name [String] The name of the material.
  #   @return [Sketchup::Material, nil] a Material object on success, Nil on failure
  #
  # @version SketchUp 6.0
  def [](arg)
  end

  # Add a new Material.  When called with no arguments, this will generate a
  # new unique name for the new Material.  If a name is given, it will check
  # to see if there is already a material with that name.  If there is already
  # a material with the given name, then a new unique name is generated using
  # the given name as a base.
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #
  # @param [String] name
  #   The name of the new material.
  #
  # @return [Sketchup::Material] a Material object
  #
  # @version SketchUp 6.0
  def add(name)
  end

  # The add_observer method is used to add an observer to the materials
  # collection.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   status = materials.add_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The {#[]} method is used to retrieve a material by index or name.
  #
  # The {#at} method is an alias of {#[]}
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials[0]
  #
  # @overload [](index)
  #
  #   @param index [Integer] A number representing the material's index in an array
  #                        of Material objects.
  #   @return [Sketchup::Material, nil] a Material object on success, Nil on failure
  #
  # @overload [](name)
  #
  #   @param name [String] The name of the material.
  #   @return [Sketchup::Material, nil] a Material object on success, Nil on failure
  #
  # @version SketchUp 6.0
  def at(arg)
  end

  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   count = materials.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The current method is used to get the current material, i.e. the material
  # that the user has selected in the Materials dialog.
  #
  # @example
  #   current = Sketchup.active_model.materials.current
  #
  # @return [Sketchup::Material] a Material object.
  #
  # @version SketchUp 6.0
  def current
  end

  # The current= method is used to set the current material.
  #
  # @example
  #   # Make the first material in the model "current"
  #   materials = Sketchup.active_model.materials
  #   materials.current = materials[0]
  #
  # @param [Sketchup::Material] material
  #   A Material object.
  #
  # @return [Sketchup::Material]
  #
  # @version SketchUp 6.0
  def current=(material)
  end

  # The each method is used to iterate through all of the materials.
  #
  # @example
  #   model = Sketchup.active_model
  #   model.materials.each { |material|
  #     puts material.display_name
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [Sketchup::Material] A variable that will hold each Material object as they
  #   are found.
  def each
  end

  # The number of materials in the collection.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   number = materials.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#load} method is used to load a material from file into the model.
  #
  # If a matching material exist in the model that will be returned instead.
  #
  # @example
  #   # Load a material from the shipped SketchUp library. (SketchUp 2016)
  #   filename = 'Materials/Brick, Cladding and Siding/Cinder Block.skm'
  #   path = Sketchup.find_support_file(filename)
  #   materials = Sketchup.active_model.materials
  #   material = materials.load(path)
  #
  # @param [String] filename
  #   the path to the SKM file to load.
  #
  # @raise [RuntimeError] if the material failed to load.
  #
  # @return [Sketchup::Material] the new loaded material, or existing material.
  #
  # @version SketchUp 2017
  def load(filename)
  end

  # The purge_unused method is used to remove unused materials.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   materials.purge_unused
  #
  # @return [Sketchup::Materials] The Materials object.
  #
  # @version SketchUp 6.0
  def purge_unused
  end

  # Remove a given material.
  #
  # NOTE: On SketchUp versions prior to 2014 there is a bug in this method that
  # could potentially lead to file corruption. If you call Materials.remove on a
  # material that is painted onto any entity in the active model (e.g. faces,
  # edges, groups, ...), then calling this method will not successfully unpaint
  # the entity and remove the material from the model.
  # You must first unpaint all of the entities that respond to .material
  # and .back_material before calling Materials.remove.
  #
  # @example
  #   if entity.respond_to?(:material) do
  #     if entity.material.equal?(material_to_remove) do
  #       entity.material = nil
  #     end
  #   end
  #   # for entities that have a back material
  #   if entity.respond_to?(:back_material) do
  #     if entity.back_material.equal?(material_to_remove) do
  #       entity.back_material = nil
  #     end
  #   end
  #
  # @example
  #   model = Sketchup.active_model
  #   materials = model.materials
  #   material = materials.add('Joe')
  #   materials.remove(material)
  #
  # @param [Sketchup::Material] material
  #   The material to remove.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 8.0 M1
  def remove(material)
  end

  # The remove_observer method is used to remove an observer from the materials
  # collection.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   status = materials.remove_observer(observer)
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The number of materials in the collection.
  #
  # The {#size} method is an alias for {#length}.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   number = materials.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

  # The {#unique_name} method is used to retrieve a unique name from the
  # materials collection that is based on the provided one. If provided name is
  # unique it will be returned, otherwise any trailing indices will be replaced
  # by a new index.
  #
  # @example
  #   materials = Sketchup.active_model.materials
  #   unique_name = materials.unique_name("test_name")
  #
  # @param [String] name
  #   the suggested name.
  #
  # @return [String] a unique name.
  #
  # @version SketchUp 2018
  def unique_name(name)
  end

end

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
  #   @param index         A number representing the material's index in an array
  #                        of Material objects.
  #   @return              material - a Material object on success, Nil on failure
  #
  # @overload [](name)
  # 
  #   @param name          The name of the material.
  #   @return              material - a Material object on success, Nil on failure
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
  # @param name
  #   The name of the new material.
  #
  # @return material - a Material object
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
  # @param observer
  #   An observer.
  #
  # @return success - true if successful, false if unsuccessful.
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
  #   @param index         A number representing the material's index in an array
  #                        of Material objects.
  #   @return              material - a Material object on success, Nil on failure
  #
  # @overload [](name)
  # 
  #   @param name          The name of the material.
  #   @return              material - a Material object on success, Nil on failure
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
  # @return integer - number of materials in the collection.
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
  # @return material - a Material object.
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
  # @param material
  #   A Material object.
  #
  # @return true if successful, false if unsuccessful.
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
  # @return material - a Material object
  #
  # @version SketchUp 6.0
  #
  # @yield [material] A variable that will hold each Material object as they
  #   are found.
  def each
  end

  # The number of materials in the collection.
  # 
  # The {#size} method is an alias for {#length} added in SketchUp 2014.
  #
  # @example 
  #   materials = Sketchup.active_model.materials
  #   number = materials.length
  #
  # @return integer - number of materials in the collection.
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
  # @return materials - The Materials object.
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
  # @param material
  #   The material to remove.
  #
  # @return status - true if successful, false if unsuccessful.
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
  # @param observer
  #   An observer.
  #
  # @return success - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The number of materials in the collection.
  # 
  # The {#size} method is an alias for {#length} added in SketchUp 2014.
  #
  # @example 
  #   materials = Sketchup.active_model.materials
  #   number = materials.length
  #
  # @return integer - number of materials in the collection.
  #
  # @version SketchUp 6.0
  def size
  end

end

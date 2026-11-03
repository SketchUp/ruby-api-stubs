# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The {Sketchup::InstancePath} class represent the instance path to a given
# entity within the model hierarchy.
#
# @version SketchUp 2017
class Sketchup::InstancePath

  # Includes

  include Enumerable

  # Instance Methods

  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   if path.size > 1
  #     # do something
  #   end
  #
  # @return [Boolean] `true` if the instances paths represent the same set of
  #   entities.
  #
  # @version SketchUp 2017
  def ==(other)
  end

  # The elements of an instance path can be accessed similarly to an array.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   path[0] == group # returns true
  #   path[1] == edge # returns true
  #
  # @note This method does not accept negative indices. For the exact behavior
  #   of an array, use +{#to_a}+.
  #
  # @param [Integer] index
  #
  # @raise [IndexError] if the given index is out of bounds
  #
  # @raise [TypeError] if the index is not of integer type
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Sketchup::Entity]
  #
  # @version SketchUp 2017
  def [](index)
  end

  # Clears the instance path.
  #
  # This sets it to an empty state. After calling this, {#valid?} will return
  # +false+ and {#empty?} will return +true+.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   path.clear
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Sketchup::InstancePath] self
  #
  # @version SketchUp 2026.2
  def clear
  end

  # Returns a new instance path with the same elements.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path1 = Sketchup::InstancePath.new([group, edge])
  #   path2 = path1.clone
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Sketchup::InstancePath]
  #
  # @version SketchUp 2026.2
  def clone
  end

  # Copies all elements from another instance path into this one.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path1 = Sketchup::InstancePath.new([group, edge])
  #   path2 = Sketchup::InstancePath.new([])
  #   path2.copy(path1)
  #
  # @param [Sketchup::InstancePath] other
  #
  # @raise [TypeError] if the given instance path refer to deleted entities.
  #
  # @return [Sketchup::InstancePath] self
  #
  # @version SketchUp 2026.2
  def copy(other)
  end

  # The yielded entities will start with the root and end with the leaf.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   path.each { |entity|
  #     # do something
  #   }
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [nil]
  #
  # @version SketchUp 2017
  #
  # @yieldparam [Sketchup::Entity] entity
  def each
  end

  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   if path.empty?
  #     # do something...
  #   end
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def empty?
  end

  # Returns `true` if the instance path contain the given object.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   if path.include?(edge)
  #     # do something...
  #   end
  #
  # @param [Object] object
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def include?(object)
  end

  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #
  # @param [Array<Sketchup::Entity>] path
  #   The leaf can be any entity, but the
  #   rest must be a group or component instance.
  #
  # @raise [ArgumentError] if the instance path isn't composed of instances and
  #   an optional leaf entity.
  #
  # @return [Sketchup::InstancePath]
  #
  # @version SketchUp 2017
  def initialize(path)
  end

  # The leaf of an instance path is the last element which can be any entity
  # that can be represented in the model. This is normally a
  # {Sketchup::Drawingelement}, but could be a {Sketchup::Vertex}.
  #
  # An instance can also be a leaf.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   path.leaf == edge # returns true
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Sketchup::Entity, nil] Nil if the last item of the instance path is a group or
  #   component, otherwise {Sketchup::Entity}.
  #
  # @version SketchUp 2017
  def leaf
  end

  # Sets the leaf entity of the instance path.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group])
  #   path.leaf = edge
  #
  # @param [Sketchup::Entity, nil] entity
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @raise [TypeError] if the given entity is deleted.
  #
  # @version SketchUp 2026.2
  def leaf=(entity)
  end

  # {#length} is an alias of {#size}.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   if path.length > 1
  #     # do something
  #   end
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2017
  def length
  end

  # The serialized version of an instance path is the persistent ids of its
  # entities concatenated with a period.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   pid_path = path.persistent_id_path # something like "342.345"
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [String]
  #
  # @see Sketchup::Model#instance_path_from_pid_path
  #
  # @version SketchUp 2017
  def persistent_id_path
  end

  # Removes items from the end in-place.
  #
  # This treats the path as a flat list and removes items from the end,
  # whether they are instances or a leaf.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   removed = path.pop # Returns edge
  #
  # @note If +num+ is +0+, no elements are removed. If +num+ is greater than the
  #   path length, all elements are removed.
  #
  # @overload pop
  #
  #   @return [Sketchup::Entity, nil] the removed element or +nil+ if the path is empty.
  #
  # @overload pop(num)
  #
  #   @param [Integer] num the number of items to remove from the end.
  #   @return [Array<Sketchup::Entity>] the removed elements.
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @raise [TypeError] if the given +num+ is not an integer.
  #
  # @raise [ArgumentError] if +num+ is less than 0.
  #
  # @see #push
  #
  # @version SketchUp 2026.2
  def pop(*args)
  end

  # Appends the given entity to the path in-place.
  #
  # This treats the path as a flat list and appends the entity to the end. The
  # entity can be an instance (group, component instance, image) or a leaf entity.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group])
  #   path.push(edge) # path is now [group, edge]
  #
  # @note This method modifies the path in-place. Use {#clone} if you want
  #   to keep the original path unchanged.
  #
  # @param [Sketchup::Entity] entity
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @raise [TypeError] if the given entity is not a Sketchup::Entity.
  #
  # @raise [ArgumentError] if the resulting path would be invalid (e.g. adding
  #   an element after a leaf).
  #
  # @return [Sketchup::InstancePath] self
  #
  # @see #pop
  #
  # @version SketchUp 2026.2
  def push(entity)
  end

  # The root of an instance path is the element located closest to the model
  # root. This will be a group or component instance. If you have a non-instance
  # as a leaf with no other parent component this will return `nil`.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   path.root == group # returns true
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Sketchup::Group, Sketchup::ComponentInstance, Sketchup::Image, nil]
  #
  # @version SketchUp 2017
  def root
  end

  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   if path.size > 1
  #     # do something
  #   end
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2017
  def size
  end

  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   pid_string = path.to_a.join('.')
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @return [Array] an array representing the instance path.
  #
  # @version SketchUp 2017
  def to_a
  end

  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   tr = path.transformation
  #
  # @overload transformation
  #
  #   @return [Geom::Transformation] the combined transformation up to the
  #     the leaf entity.
  #
  # @overload transformation(index)
  #
  #   @param [Integer] index
  #   @return [Geom::Transformation]  the combined transformation up to the
  #     the given index.
  #
  # @raise [IndexError] if the given index is out of bounds
  #
  # @raise [TypeError] if the index is not of integer type
  #
  # @raise [TypeError] if the instance path refer to deleted entities.
  #
  # @version SketchUp 2017
  def transformation(*args)
  end

  # An instance path is valid if it has at least one element and consist of
  # groups and instances with exception of the leaf which can be any entity.
  #
  # This method doesn't check if the path can actually be looked up in the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   group = model.entities.add_group
  #   edge = group.entities.add_line([10, 10, 10], [20, 20, 20])
  #   path = Sketchup::InstancePath.new([group, edge])
  #   if path.valid?
  #     # do something...
  #   end
  #
  # @return [Boolean]
  #
  # @version SketchUp 2017
  def valid?
  end

end

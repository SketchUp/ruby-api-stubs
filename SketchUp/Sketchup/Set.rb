# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The set class represents a collection of unique objects. This class is useful
# for keeping track of a group of related entities, kind of like a selection
# set that stays around for as long as you need it to.
#
# To make a set of your own, create an empty one using Sketchup::Set.new, and
# then add items to it.
#
# @deprecated In SketchUp 2014 this class was changed from +Set+
#   to +Sketchup::Set+ in order to avoid conflict with the Ruby Standard
#   Library. The +Sketchup::Set+ class is deprecated and new extensions should
#   make use of Ruby's +Set+ class unless they need backward compatibility.
#
# @example
#   set = Sketchup::Set.new
#   set.insert(1)
#   set.insert(2)
#
# @example Compatibility Shim
#   module Example
#
#     # Shim for the Set class which was moved in SketchUp 2014
#     if defined?(Sketchup::Set)
#       # Warning! Do NOT do this in the global namespace!
#       Set = Sketchup::Set
#     end
#
#     def self.test_set_shim
#       set = Set.new
#       set.insert('Hello')
#       set.insert('World')
#       puts set.to_a
#     end
#
#   end
#
# @version SketchUp 6.0
class Sketchup::Set

  # Instance Methods

  # The clear method is used to clear all objects out of the set.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   set.clear
  #
  # @return set - an empty Set object
  #
  # @version SketchUp 6.0
  def clear
  end

  # The {#contains?} method is an alias for {#include?}.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   p set.contains?(2)
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @see #include?
  #
  # @version SketchUp 6.0
  def contains?(entity)
  end

  # The delete object is used to delete or remove an object from the set.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.delete(1)
  #
  # @param object
  #   The object to be deleted.
  #
  # @return object - the object that was deleted.
  #
  # @version SketchUp 6.0
  def delete(object)
  end

  # The each method is used to iterate through all of the objects in the set.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   set.each { | item | puts item }
  #
  # @version SketchUp 6.0
  #
  # @yield [item]
  def each
  end

  # The empty? method is used to determine whether the set is empty.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   puts set.empty?
  #
  # @return status - true if the set is empty, false if it is not
  #   empty.
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def empty?
  end

  # The {#include?} method is used to determine if the set includes a particular
  # object.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   p set.include?(2)
  #
  # @param [Sketchup::Entity] entity
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @see #contains?
  #
  # @version SketchUp 6.0
  def include?(entity)
  end

  # The insert method is used to insert an object into the set.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #
  # @param object
  #   The object to be inserted into the set.
  #
  # @return size - the number of objects in the set
  #
  # @version SketchUp 6.0
  def insert(object)
  end

  # The {#length} method is an alias for {#size}.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   puts set.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#size} method is used to determine the number of objects in the set.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert(1)
  #   set.insert(2)
  #   set.insert(3)
  #   puts set.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def size
  end

  # The to_a method is used to get an Array of the entities in your Set.
  #
  # @example
  #   set = Sketchup::Set.new
  #   set.insert('Hello')
  #   set.insert('World')
  #   my_array = set.to_a
  #   UI.messagebox my_array
  #
  # @return array - The Array of the entities in the Set.
  #
  # @version SketchUp 6.0
  def to_a
  end

end

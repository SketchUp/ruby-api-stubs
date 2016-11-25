# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::Set

  # Instance Methods

  # The clear method is used to clear all objects out of the set.
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   if (set.include? toolbar)
  #     UI.messagebox "Success: Contains Toolbar Object"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #   set.clear
  #   if (set.include? toolbar)
  #     UI.messagebox set
  #   else
  #     UI.messagebox "Set is empty"
  #   end
  #
  # @return set - an empty Set object
  #
  # @version SketchUp 6.0
  def clear
  end

  # The contains? method is an alias for include?. See also Set.include?
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   if (set.contains? toolbar)
  #     UI.messagebox "Success: Contains Toolbar Object"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param object
  #   A Ruby object of any type.
  #
  # @return status - true if the set contains the object, false if
  #   the set does not contain the object.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def contains?(object)
  end

  # The delete object is used to delete or remove an object from the set.
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   if (set.include? toolbar)
  #     UI.messagebox "Success: Contains Toolbar Object"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #   set.delete toolbar
  #   if (set.include? toolbar)
  #     UI.messagebox set
  #   else
  #     UI.messagebox "Set is empty"
  #   end
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
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   set.each { | item | UI.messagebox item }
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
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   status = set.empty?
  #   if (status)
  #     UI.messagebox "Success: Set is Empty"
  #   else
  #     UI.messagebox "Failure: Set has an Item"
  #   end
  #
  # @return status - true if the set is empty, false if it is not
  #   empty.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def empty?
  end

  # The contains? method is an alias for include?. See also Set.include?
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   if (set.contains? toolbar)
  #     UI.messagebox "Success: Contains Toolbar Object"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param object
  #   A Ruby object of any type.
  #
  # @return status - true if the set contains the object, false if
  #   the set does not contain the object.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def include?(object)
  end

  # The insert method is used to insert an object into the set.
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   if (set.include? toolbar)
  #     UI.messagebox "Success: Contains Toolbar Object"
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param object
  #   The object to be inserted into the set.
  #
  # @return size - the number of objects in the set
  #
  # @version SketchUp 6.0
  def insert(object)
  end

  # The length method is an alias for size. See also Set.size.
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   length = set.length
  #   if (length)
  #     UI.messagebox length
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return length - the length (number of objects) in the set
  #
  # @version SketchUp 6.0
  def length
  end

  # The length method is an alias for size. See also Set.size.
  #
  # @example 
  #   set = Sketchup::Set.new
  #   toolbar = UI::Toolbar.new "Test"
  #   set.insert toolbar
  #   length = set.length
  #   if (length)
  #     UI.messagebox length
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @return length - the length (number of objects) in the set
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

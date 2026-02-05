# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# A set of the currently selected drawing elements. Use the Model.selection method
# to get a Selection object.  Note that the order of drawing elements
# (<code>selection[0]</code>, <code>selection[1]</code> and so on) in the set
# is in no particular order and should not be assumed to be in the same order
# as the user selected the drawing elements.
#
# @example
#   # Get a handle to the selection set.
#   model = Sketchup.active_model
#   selection = model.selection
#
# @version SketchUp 6.0
class Sketchup::Selection

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieve a {Sketchup::Drawingelement} from the selection
  # by index. Index 0 is the first Drawingelement in the selection.
  #
  # This method is not very efficient. If you need to look at every entity in
  # the selection, consider using {#each} instead of using this method
  # to manually grab each one.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   selection = model.selection
  #   selection.add(entities.to_a)
  #   p selection[0]
  #
  # @param [Integer] index
  #   The index of the Drawingelement object to retrieve.
  #
  # @return [Sketchup::Drawingelement, nil]
  #
  # @see #at
  #
  # @version SketchUp 6.0
  def [](index)
  end

  # The {#add} method is used to add Drawingelement to the selection. Drawingelements that are
  # added to the Selection are visually indicated by the selection bounding box.
  #
  # You can pass it individual Drawingelements or an Array of Drawingelements.
  #
  # @example
  #   # Add by listing the Drawingelements...
  #   ss.add(e1, e2, e3)
  #
  #   # ...or add by passing an Array of Drawingelements.
  #   ss.add([e1, e2, e3])
  #
  # @example
  #   model = Sketchup.active_model
  #   edge = model.active_entities.add_line([0, 0, 0], [9, 9, 9])
  #   model.selection.add(edge)
  #
  # @overload add(drawing_elements)
  #
  #   @param [Array<Sketchup::Drawingelement>] drawing_elements
  #
  # @overload add(*drawing_elements)
  #
  #   @param [Array<Sketchup::Drawingelement>] drawing_elements
  #
  # @return [Integer] the number of Drawingelement objects added
  #
  # @version SketchUp 6.0
  def add(*args)
  end

  # The add_observer method is used to add an observer to the selection object.
  #
  # @example
  #   selection = Sketchup.active_model.selection
  #   status = selection.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The {#at} method is an alias for {#[]}.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   selection = model.selection
  #   selection.add(entities.to_a)
  #   p selection.at(0)
  #
  # @param [Integer] index
  #   The index of the Drawingelement object to retrieve.
  #
  # @return [Sketchup::Drawingelement, nil]
  #
  # @see #[]
  #
  # @version SketchUp 6.0
  def at(index)
  end

  # The clear method is used to clear the selection.
  #
  # @example
  #   entity = entities[0]
  #   selection.add entity
  #   UI.messagebox "Ready to Clear"
  #   selection.clear
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def clear
  end

  # The {#contains?} method is and alias of {#include?}.
  #
  # @example
  #   model = Sketchup.active_model
  #   entity = model.active_entities.first
  #   selection = model.selection
  #   selection.add(entity)
  #   p selection.contains?(entity)
  #
  # @param [Sketchup::Drawingelement] drawing_element
  #
  # @return [Boolean]
  #
  # @see #include?
  #
  # @version SketchUp 6.0
  def contains?(drawing_element)
  end

  #
  # @example
  #   selection = Sketchup.active_model.selection
  #   number = selection.count
  #
  # @note Since SketchUp 2014 the count method is inherited from Ruby's
  #   +Enumerable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The {#each} method is used to iterate through all of the selected Drawingelements.
  #
  # If you want to do something with all of the selected Drawingelements, this is more
  # efficient than using {#[]}.
  #
  # @example
  #   selection.each { |drawing_element| puts drawing_element }
  #
  # @note Don't remove content from this collection while iterating over it with
  #   {#each}. This would change the size of the collection and cause elemnts to
  #   be skipped as the indices change. Instead copy the current collection to an
  #   array using +to_a+ and then use +each+ on the array, when removing content.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yieldparam [Sketchup::Drawingelement] drawing_element
  def each
  end

  # The {#empty?} method is used to determine if there are drawing elements in the
  # selection.
  #
  # @example
  #   status = selection.add drawing_element
  #   status = selection.empty
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def empty?
  end

  # The {#first} method is used to retrieve the first selected Drawingelement
  #
  # Returns nil if nothing is selected. This method is useful when you know that
  # only a single Drawingelement is selected, or you are only interested in the first
  # selected Drawingelement.
  #
  # @example
  #   status = selection.add drawing_element
  #   drawing_element = selection.first
  #
  # @return [Sketchup::Drawingelement] the first selected Drawingelement object if successful
  #
  # @version SketchUp 6.0
  def first
  end

  # The {#include?} method is used to determine if a given {Sketchup::Drawingelement} is
  # in the selection.
  #
  # @example
  #   model = Sketchup.active_model
  #   entity = model.active_entities.first
  #   selection = model.selection
  #   selection.add(entity)
  #   p selection.include?(entity)
  #
  # @param [Sketchup::Drawingelement] drawing_element
  #
  # @return [Boolean]
  #
  # @see #contains?
  #
  # @version SketchUp 6.0
  def include?(drawing_element)
  end

  # The {#invert} method is used to invert the selection.
  #
  # @example
  #   model = Sketchup.active_model
  #   entities = model.active_entities
  #   selection = model.selection
  #   # Create a cube
  #   face = entities.add_face([0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0])
  #   face.pushpull(-9)
  #   # Add the first two faces to the selection
  #   faces = entities.grep(Sketchup::Face).take(2)
  #   selection.add(faces)
  #   # Invert selection
  #   selection.invert
  #
  # @return [nil]
  #
  # @version SketchUp 2019.2
  def invert
  end

  # The {#is_curve?} method is used to determine if the selection contains all
  # edges that belong to a single curve.
  #
  # @example
  #   selection.add drawing_element
  #   status = selection.is_curve?
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def is_curve?
  end

  # The {#is_surface?} method is used to determine if the selection contains only
  # all of the faces that are part of a single curved surface.
  #
  # @example
  #   selection.add drawing_element
  #   status = selection.is_surface
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def is_surface?
  end

  # The {#length} method is used to retrieve the number of selected drawing elements.
  #
  # @example
  #   selection = Sketchup.active_model.selection
  #   number = selection.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @see #nitems
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#model} method retrieves the model for the selection.
  #
  # @example
  #   model = selection.model
  #
  # @return [Sketchup::Model] the model that includes the selection if
  #   successful
  #
  # @version SketchUp 6.0
  def model
  end

  # The {#nitems} method is an alias for {#length}.
  #
  # @example
  #   selection = Sketchup.active_model.selection
  #   number = selection.nitems
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def nitems
  end

  # The {#remove} method is used to remove Drawingelements from the selection.
  # You can pass it individual Drawingelements or an Array of Drawingelements.
  #
  # @example
  #   # Remove by listing the Drawingelements...
  #   ss.remove(e1, e2, e3)
  #
  #   # ...or remove by passing an Array of Drawingelements.
  #   ss.remove([e1, e2, e3])
  #
  # @example
  #   model = Sketchup.active_model
  #   face = model.active_entities.add_line([0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0])
  #   edges = face.all_connected
  #   model.selection.add(edges)
  #
  #   model.selection.remove(edges.first)
  #
  # @overload remove(drawing_elements)
  #
  #   @param [Array<Sketchup::Drawingelement>] drawing_elements
  #
  # @overload remove(*drawing_elements)
  #
  #   @param [Array<Sketchup::Drawingelement>] drawing_elements
  #
  # @return [Integer] the number of Drawingelement objects removed
  #
  # @version SketchUp 6.0
  def remove(*args)
  end

  # The remove_observer method is used to remove an observer from the selection
  # object.
  #
  # @example
  #   selection = Sketchup.active_model.selection
  #   status = object.remove_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#shift} method is used to remove the first Drawingelement from the selection and
  # returns it.
  #
  # @example
  #   status = selection.add drawing_element
  #   UI.messagebox "Ready to remove item from selection set"
  #   drawing_element = selection.shift
  #
  # @return [Sketchup::Drawingelement] the first Drawingelement object in the selection set
  #   if successful
  #
  # @version SketchUp 6.0
  def shift
  end

  # The {#single_object?} method is used to determine if the selection contains a
  # single object.
  #
  # It can either be a single DrawingElement or a group of DrawingElements for which is_curve?
  # or is_surface? will return true.
  #
  # @example
  #   status = selection.single_object
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def single_object?
  end

  # The {#size} method is an alias for {#length}.
  #
  # @example
  #   selection = Sketchup.active_model.selection
  #   number = selection.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

  # The {#toggle} method is used to change whether a Drawingelement is part of the
  # selection. Drawingelements that are not already selected
  # are added. Drawingelements that are already selected are removed.
  #
  # You can pass it individual Drawingelements or an Array of Drawingelements.
  #
  # @example
  #   # Toggle by listing the Drawingelements...
  #   ss.toggle(e1, e2, e3)
  #
  #   # ...or toggle by passing an Array of Drawingelements.
  #   ss.toggle([e1, e2, e3])
  #
  # @example
  #   model = Sketchup.active_model
  #   face = model.active_entities.add_line([0, 0, 0], [9, 0, 0], [9, 9, 0], [0, 9, 0])
  #   edges = face.all_connected
  #   model.selection.add(edges)
  #
  #   model.selection.toggle(edges.first)
  #
  # @overload toggle(drawings_elements)
  #
  #   @param [Array<Sketchup::Drawingelement>] drawing_elements
  #
  # @overload toggle(*drawing_elements)
  #
  #   @param [Array<Sketchup::Drawingelement>] drawing_elements
  #
  # @return [Integer] the number of Drawingelement objects changed
  #
  # @version SketchUp 6.0
  def toggle(*args)
  end

end

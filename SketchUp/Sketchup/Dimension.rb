# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Dimension class provides base functionality for classes DimensionLinear
# and DimensionRadial. It's not instantiable.
#
# @version SketchUp 2014
class Sketchup::Dimension < Sketchup::Drawingelement

  # Constants

  ARROW_CLOSED = nil # Stub value.
  ARROW_DOT = nil # Stub value.
  ARROW_NONE = nil # Stub value.
  ARROW_OPEN = nil # Stub value.
  ARROW_SLASH = nil # Stub value.

  # Instance Methods

  # The add_observer method is used to add a DimensionObserver to the dimension.
  #
  # @example
  #   observer = MyDimObserver.new
  #   dim = Sketchup.active_model.entities.add_dimension_linear([50, 10, 0],
  #         [100, 10, 0], [0, 20, 0])
  #   status = dim.add_observer(observer)
  #
  # @note If the given observer responds to +onTextChanged+, it will be
  #   added as a {Sketchup::DimensionObserver}. If not, the base
  #   {Sketchup::Entity#add_observer} will be called.
  #
  # @param observer
  #   A DimensionObserver.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 2014
  def add_observer(observer)
  end

  # The arrow_type method retrieves the current arrow type of the dimension.
  # Valid arrow types are class constants:
  # - +Dimension::ARROW_NONE,+
  # - +Dimension::ARROW_SLASH+
  # - +Dimension::ARROW_DOT+
  # - +Dimension::ARROW_CLOSED+
  # - +Dimension::ARROW_OPEN+
  #
  # @example
  #   type = dim.arrow_type
  #   if type == Sketchup::Dimension::ARROW_CLOSED
  #     puts "Arrow type is closed"
  #   end
  #
  # @return a numerical representation of the arrow type
  #
  # @version SketchUp 2014
  def arrow_type
  end

  # The arrow_type= method sets the arrow type of the dimension.
  # Valid arrow types are class constants:
  # - +Dimension::ARROW_NONE,+
  # - +Dimension::ARROW_SLASH+
  # - +Dimension::ARROW_DOT+
  # - +Dimension::ARROW_CLOSED+
  # - +Dimension::ARROW_OPEN+
  #
  # @example
  #   dim.arrow_type = Sketchup::Dimension::ARROW_CLOSED
  #
  # @param type
  #   a numerical representation of the arrow type.
  #
  # @return the arrow type that was set.
  #
  # @version SketchUp 2014
  def arrow_type=(type)
  end

  # The has_aligned_text= method accepts true or false indicating whether the
  # dimension's text is aligned to the dimension or to the screen.
  #
  # @example
  #   dim.has_aligned_text = true
  #
  # @param [Boolean] value
  #
  # @return the alignment flag that was set
  #
  # @version SketchUp 2014
  def has_aligned_text=(value)
  end

  # The has_aligned_text method is used to determine whether the dimension's text
  # is aligned to the dimension or to the screen.
  #
  # @example
  #   aligned = dim.has_aligned_text?
  #
  # @return status - true if text is aligned to the dimension.
  #   False if dimension text is aligned to the screen.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2014
  def has_aligned_text?
  end

  # The plane method is used to retrieve the plane of the dimension. Refer to the
  # Geom module for information on how planes are represented.
  #
  # @example
  #   plane = dim.plane
  #
  # @return the plane of the dimension
  #
  # @version SketchUp 2014
  def plane
  end

  # The remove_observer method is used to remove a DimensionObserver from the
  # dimension. Note that, if the given observer responds to 'onTextChanged', it
  # will be removed as a DimensionObserver. If not, the base
  # Entity.remove_observer will be called.
  #
  # @example
  #   observer = MyDimObserver.new
  #   dim = Sketchup.active_model.entities.add_dimension_linear([50, 10, 0],
  #         [100, 10, 0], [0, 20, 0])
  #   status = dim.add_observer(observer)
  #   status = dim.remove_observer(observer)
  #
  # @param observer
  #   A DimensionObserver.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 2014
  def remove_observer(observer)
  end

  # The text method is used to retrieve the dimension text.
  #
  # @example
  #   dimtext = dim.text
  #
  # @return the dimension text
  #
  # @version SketchUp 2014
  def text
  end

  # The text= method is used to set an override on the dimension text.
  #
  # @example
  #   dim.text= "text"
  #
  # @param [String] text
  #
  # @return the newly set text override
  #
  # @version SketchUp 2014
  def text=(text)
  end

end

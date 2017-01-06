# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to changes in dimension text.
#
# @example
#   # This is an example of a DimensionObserver
#   class MyDimensionObserver < Sketchup::DimensionObserver
#     def onTextChanged(dimension)
#       puts "onTextChanged: #{dimension}, new_text= #{dimension.text}"
#     end
#   end
#
#   # Attach the observer. (Assumes there is a dimension in the model root.)
#   dim = Sketchup.active_model.entities.grep(Sketchup::Dimension).first
#   dim.add_observer(MyDimensionObserver.new)
#
# @version SketchUp 2014
class Sketchup::DimensionObserver

  # Instance Methods

  # The {#onTextChanged} method is invoked when your entity is erased.
  #
  # @example
  #   def onTextChanged(dimension)
  #     puts "onTextChanged: #{dimension}, new_text= #{dimension.text}"
  #   end
  #
  # @param [Sketchup::Dimension] dimension
  #   The dimension object whose text has
  #   been changed.
  #
  # @version SketchUp 2014
  def onTextChanged(dimension)
  end

end

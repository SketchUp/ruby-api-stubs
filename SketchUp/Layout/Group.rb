# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# A group is a special type of {Layout::Entity} that does not belong to a
# {Layout::Layer} and contains other {Layout::Entity}s as children. A
# {Layout::Group}'s children may include other {Layout::Group}s, allowing for a
# hierarchical tree structure of {Layout::Entity}s. A {Layout::Group} must
# contain at least one child and will be automatically collapsed if an
# operation is performed that results in the {Layout::Group} being empty.
#
# @version LayOut 2018
class Layout::Group < Layout::Entity

  # Constants

  RESIZE_BEHAVIOR_BOUNDS = nil # Stub value.
  RESIZE_BEHAVIOR_BOUNDS_AND_FONTS = nil # Stub value.
  RESIZE_BEHAVIOR_NONE = nil # Stub value.

  # Instance Methods

  # The {#entities} method returns the {Layout::Entities} that belong to the
  # {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   entities = group.entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#initialize} method creates a new {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.shared_entities
  #   entities.each { |entity|
  #     entity_array.push(entity)
  #   }
  #   group = Layout::Group.new(entity_array)
  #
  # @param [Array<Layout::Entity>] entities
  #
  # @raise [ArgumentError] if entities is empty.
  #
  # @raise [ArgumentError] if entities contains the same {Layout::Entity} more
  #   than once
  #
  # @raise [ArgumentError] if entities contains {Layout::Entity}s on both shared
  #   and non-shared {Layout::Layer}s, or on non-shared {Layout::Layer}s
  #   belonging to different {Layout::Page}s
  #
  # @raise [ArgumentError] if entities contains a mix of {Layout::Entity}s that
  #   belong to a {Layout::Document} and {Layout::Entity}s that don't belong to a
  #   {Layout::Document}
  #
  # @raise [ArgumentError] if entities contains {Layout::Entity}s that belong to
  #   different {Layout::Document}s
  #
  # @return [Layout::Group]
  #
  # @version LayOut 2018
  def initialize(entities)
  end

  # The {#remove_scale_factor} method removes the scale factor from the
  # {Layout::Group}.
  #
  # The resize behavior can be one of the following values:
  # [+Layout::Group::RESIZE_BEHAVIOR_NONE+]
  # [+Layout::Group::RESIZE_BEHAVIOR_BOUNDS+]
  # [+Layout::Group::RESIZE_BEHAVIOR_BOUNDS_AND_FONTS+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   group.remove_scale_factor(true)
  #
  # @param [Integer] resize_behavior
  #
  # @raise [ArgumentError] if the {Layout::Group} does not have a scale factor
  #
  # @raise [Layout::LockedLayerError] if the {Layout::Group} is on a locked layer
  #
  # @raise [Layout::LockedEntityError] if the {Layout::Group} is locked
  #
  # @version LayOut 2018
  def remove_scale_factor(resize_behavior)
  end

  # The {#scale_factor} method returns the the scale factor associated with the
  # {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   scale = group.scale_factor
  #
  # @return [Float, nil]
  #
  # @version LayOut 2018
  def scale_factor
  end

  # The {#scale_precision} method returns the precision used for the scale of the
  # {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   precision = group.scale_precision
  #
  # @return [Float] the number specifying the precision for the {Layout::Group}
  #
  # @version LayOut 2018
  def scale_precision
  end

  # The {#scale_precision=} method sets the precision for the scale of the
  # {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   group.scale_precision = 0.0001
  #
  # @note LayOut only allows for a finite set of precision values for each units
  #   setting, so it will set the precision to the closest valid setting for the
  #   specified units. See the "Units" section of LayOut's "Document Setup"
  #   dialog for a reference of the available precisions for each units setting.
  #
  # @param [Float] precision
  #   The double specifying the precision for the
  #   {Layout::Group}
  #
  # @version LayOut 2018
  def scale_precision=(precision)
  end

  # The {#scale_units} method returns the units format used in the scale for the
  # {Layout::Group}.
  #
  # The units format can be any of the following values:
  # [Layout::Document::FRACTIONAL_INCHES]
  # [Layout::Document::DECIMAL_INCHES]
  # [Layout::Document::DECIMAL_FEET]
  # [Layout::Document::DECIMAL_MILLIMETERS]
  # [Layout::Document::DECIMAL_CENTIMETERS]
  # [Layout::Document::DECIMAL_METERS]
  # [Layout::Document::DECIMAL_POINTS]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   units = group.scale_units
  #
  # @raise [ArgumentError] if the {Layout::Group} does not have a scale factor
  #
  # @return [Integer] units The units format of the scale factor
  #
  # @version LayOut 2018
  def scale_units
  end

  # The {#scale_units=} method sets the the units format for the scale of the
  # {Layout::Group}.
  #
  # The units format can be any of the following values:
  # [Layout::Document::FRACTIONAL_INCHES]
  # [Layout::Document::DECIMAL_INCHES]
  # [Layout::Document::DECIMAL_FEET]
  # [Layout::Document::DECIMAL_MILLIMETERS]
  # [Layout::Document::DECIMAL_CENTIMETERS]
  # [Layout::Document::DECIMAL_METERS]
  # [Layout::Document::DECIMAL_POINTS]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   group.scale_units = Layout::Document::DECIMAL_FEET
  #
  # @param [Integer] units_format
  #
  # @raise [ArgumentError] if the {Layout::Group} does not have a scale factor
  #
  # @raise [ArgumentError] if scale_units is not a valid value
  #
  # @raise [Layout::LockedLayerError] if the {Layout::Group} is on a locked layer
  #
  # @raise [Layout::LockedEntityError] if the {Layout::Group} is locked
  #
  # @version LayOut 2018
  def scale_units=(units_format)
  end

  # The {#set_scale_factor} method sets the the scale factor for the
  # {Layout::Group}.
  #
  # The units format can be any of the following values:
  # [Layout::Document::FRACTIONAL_INCHES]
  # [Layout::Document::DECIMAL_INCHES]
  # [Layout::Document::DECIMAL_FEET]
  # [Layout::Document::DECIMAL_MILLIMETERS]
  # [Layout::Document::DECIMAL_CENTIMETERS]
  # [Layout::Document::DECIMAL_METERS]
  # [Layout::Document::DECIMAL_POINTS]
  #
  # The resize behavior can be one of the following values:
  # [+Layout::Group::RESIZE_BEHAVIOR_NONE+]
  # [+Layout::Group::RESIZE_BEHAVIOR_BOUNDS+]
  # [+Layout::Group::RESIZE_BEHAVIOR_BOUNDS_AND_FONTS+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   group.set_scale_factor(2.0, Layout::Group::RESIZE_BEHAVIOR_BOUNDS)
  #
  # @param [Integer] units_format
  #
  # @param [Float] scale_factor
  #
  # @param [Integer] resize_behavior
  #
  # @raise [LockedLayerError] if the {Layout::Group} is on a locked
  #   {Layout::Layer}
  #
  # @raise [ArgumentError] if a scale factor cannot be set for the
  #   {Layout::Group}
  #
  # @raise [ArgumentError] if scale_factor is an invalid value
  #
  # @raise [ArgumentError] if the {Layout::Group} cannot be assigned a scale
  #   factor because it is already inheriting a scale factor from its parent
  #
  # @raise [LockedEntityError] if the {Layout::Group} is locked
  #
  # @version LayOut 2018
  def set_scale_factor(scale_factor, units_format, resize_behavior)
  end

  # The {#ungroup} method removes all {Layout::Entity}s from the {Layout::Group}
  # and deletes the {Layout::Group}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   group = doc.shared_entities.first
  #   group.ungroup
  #
  # @raise [LockedEntityError] if the {Layout::Group} is locked
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ungroup
  end

end

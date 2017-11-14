# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Entities class is a container class for {Layout::Entity}s. A
# {Layout::Entities} object is different from a SketchUp::Entities object in
# that it is read-only. Adding or removing {Layout::Entity}s from a
# {Layout::Document} happens with the {Layout::Document#add_entity} and
# {Layout::Document#remove_entity} methods.
#
# The {Layout::Entities} from {Layout::AngularDimension#entities},
# {Layout::Label#entities}, {Layout::LinearDimension#entities}, or
# {Layout::Table#entities} contains the {Layout::Entity}s that represent the
# {Layout::Entity} in its exploded form.
#
# The {Layout::Entities} from {Layout::Group#entities} contains all the
# {Layout::Entity}s that belong to the {Layout::Group}.
#
# The {Layout::Entities} from {Layout::Page#entities} contains all of the
# {Layout::Entity}s on both shared and non-shared {Layout::Layer}s. This class
# is used to iterate through the {Layout::Entity}s in draw order or pick order
# (reverse draw order) using the {#each} and {#reverse_each} methods.
#
# The {Layout::Entities} from {Layout::Document#shared_entities} contains all
# of the {Layout::Entity}s that belong on all shared {Layout::Layer}s.
#
# The {Layout::Entities} from {Layout::Page#nonshared_entities} contains all of
# the {Layout::Entity}s that belong to that {Layout::Page}.
#
# The {Layout::Entities} from {Layout::LayerInstance#entities} contains all of
# the {Layout::Entity}s that belong on that {Layout::LayerInstance}.
#
# @example
#   # Grab a handle to a pages entities
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   entities = doc.pages.first.entities
#
#   # From here, we can iterate over the entities in draw order or pick order
#   entities.each { |entity|
#     puts entity
#   }
#   entities.reverse_each(skip_locked: true) { |entity|
#     puts entity
#   }
#
# @version LayOut 2018
class Layout::Entities

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method returns the {Layout::Entity} at the given index. This method
  # is not valid for use when the {Layout::Entities} object came from a
  # {Layout::Page}.
  #
  # @example
  #   table = Layout::Table.new([1, 1, 4, 4], 4, 4)
  #   entities = table.entities
  #   entity = entities[10]
  #
  # @param [Integer] index
  #
  # @raise [ArgumentError] if this came from a {Layout::Page}
  #
  # @return [Layout::Entity]
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#each} method iterates through all of the {Layout::Entity}s. When
  # iterating over a {Layout::LayerInstance}'s {Layout::Entities}, it is not
  # necessary to provide a flags Hash. When iterating over a {Layout::Page}'s
  # {Layout::Entities}, the flags Hash is optional; providing no Hash will
  # result in iterating over all {Layout::Entity}s, including those on hidden or
  # locked {Layout::Layer}s. Valid symbols for the Hash are +:skip_hidden+ and
  # +:skip_locked+.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   flags = { :skip_hidden => true }
  #   entities = doc.pages.first.entities
  #   entities.each(flags) { |entity|
  #     puts entity
  #   }
  #
  # @param [Hash{Symbol => Boolean}] flags
  #   A hash that allows skipping of
  #   {Layout::Entity}s on hidden or locked {Layout::Layers}
  #
  # @version LayOut 2018
  #
  # @yieldparam [Layout::Entity] entity
  def each(flags = {})
  end

  # The {#length} method returns the number of {Layout::Entity}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.shared_entities
  #   num_entities = entities.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def length
  end

  # The {#reverse_each} method iterates through all of the {Layout::Entity}s in
  # reverse order. When iterating over a {Layout::LayerInstance}'s
  # {Layout::Entities}, it is not necessary to provide a flags Hash. When
  # iterating over a {Layout::Page}'s {Layout::Entities}, the flags Hash is
  # optional; providing no Hash will result in iterating over all
  # {Layout::Entity}s, including those on hidden or locked {Layout::Layer}s.
  # Valid symbols for the Hash are +:skip_hidden+ and +:skip_locked+.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   flags = { :skip_hidden => true, :skip_locked => true }
  #   entities = doc.pages.first.entities
  #   entities.reverse_each(flags) { |entity|
  #     puts entity
  #   }
  #
  # @overload reverse_each
  #
  #   @yieldparam [Layout::Entity] entity
  #
  # @overload reverse_each(flags)
  #
  #   @param [Hash{Symbol => Boolean}] flags A hash that allows skipping of
  #     {Layout::Entity}s on hidden or locked {Layout::Layers}.
  #   @yieldparam [Layout::Entity] entity
  #
  # @version LayOut 2018
  def reverse_each(*args)
  end

  # The {#length} method returns the number of {Layout::Entity}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.shared_entities
  #   num_entities = entities.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def size
  end

end

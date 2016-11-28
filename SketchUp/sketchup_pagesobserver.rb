# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

class Sketchup::PagesObserver < Sketchup::EntitiesObserver

  # Instance Methods

  # The {#onContentsModified} method is invoked whenever the pages change.
  #
  # @example 
  #   def onContentsModified(pages)
  #     puts "onContentsModified: #{pages}"
  #   end
  #
  # @param [Sketchup::Pages] pages
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onContentsModified(pages)
  end

  # The {#onElementAdded} method is invoked when an element is added to a
  # {Sketchup::Pages} object.
  #
  # @example 
  #   def onElementAdded(pages, page)
  #     puts "onElementAdded: #{page}"
  #   end
  #
  # @param [Sketchup::Pages] pages
  #
  # @param [Sketchup::Page] page
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onElementAdded(pages, page)
  end

  # The {#onElementRemoved} method is invoked when an element is removed from a
  # {Sketchup::Pages} object.
  #
  # @example 
  #   def onElementRemoved(pages, page)
  #     puts "onElementRemoved: #{page}"
  #   end
  #
  # @param [Sketchup::Pages] pages
  #
  # @param [Sketchup::Page] page
  #
  # @return [nil] 
  #
  # @version SketchUp 6.0
  def onElementRemoved(pages, page)
  end

end

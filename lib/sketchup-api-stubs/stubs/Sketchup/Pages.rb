# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# The Pages class contains methods for manipulating a collection of Pages
# (Named "scenes" in the UI.) in a model.
#
# You get a handle to this collection by calling Model.pages.
#
# @example
#   model = Sketchup.active_model
#   pages = model.pages
#
# @version SketchUp 6.0
class Sketchup::Pages < Sketchup::Entity

  # Includes

  include Enumerable

  # Constants

  ImageEmbedded = nil # Stub value.
  ImageEmbeddedAndLinked = nil # Stub value.
  ImageLinked = nil # Stub value.

  UnitsNormalizedX = nil # Stub value.
  UnitsNormalizedY = nil # Stub value.
  UnitsPixels = nil # Stub value.

  # Class Methods

  # The {.add_frame_change_observer} method is used to add a new frame change
  # observer that is called with each frame of an animation, meaning the
  # end user has clicked on a Scene tab (aka Page) inside SketchUp and
  # the camera is animating to that scene.
  #
  # The method returns an integer id that can be stored and later used to remove
  # the observer with the {Sketchup::Pages.remove_frame_change_observer} method.
  #
  # @example
  #   class MyFrameChangeObserver
  #     def frameChange(from_page, to_page, percent_done)
  #       puts "From page #{from_page.name} to #{to_page.name} (#{percent_done * 100}%)"
  #     end
  #   end
  #   id = Sketchup::Pages.add_frame_change_observer(MyFrameChangeObserver.new)
  #
  # @param [#frameChange] object
  #   An object that implements the
  #   {Sketchup::FrameChangeObserver#frameChange} method.
  #
  # @return [Integer] A unique id of the observer
  #
  # @see Sketchup::FrameChangeObserver#frameChange
  #
  # @version SketchUp 6.0
  def self.add_frame_change_observer(object)
  end

  # The {.remove_frame_change_observer} method is used to remove a frame change
  # observer
  #
  # @example
  #   Sketchup::Pages.remove_frame_change_observer(id)
  #
  # @param [Integer] observer_id
  #   The unique id returned by {.add_frame_change_observer}
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def self.remove_frame_change_observer(observer_id)
  end

  # Instance Methods

  # The [] method retrieves a page by either name or index.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   page = pages["Page 2"]
  #   if (page)
  #     UI.messagebox page
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param index_or_name
  #   The index or the string name of the specific page.
  #
  # @return page - a Page object if successful
  #
  # @version SketchUp 6.0
  def [](index_or_name)
  end

  # The {#add} method is used to add a new Page object to the collection.
  #
  # If no name is given, then a new name is generated using the default name for
  # new Pages. If a name is given, then a new Page with that name is
  # added.
  #
  # If the flags parameter is given, it controls which properties are saved with
  # the Page. See the {Page#update} method for a description of the flags that
  # can be set.
  #
  # If index is given, it specifies the position in the page list that the new
  # page is added.  Otherwise the new page is added to the end.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   if (status)
  #     UI.messagebox status
  #   else
  #     UI.messagebox "Failure"
  #   end
  #
  # @param [String] name
  #   The name of the specific page.
  #
  # @param [Integer] flags
  #   Bit flags in integer form.
  #
  # @param [Integer] index
  #   Index of where to inset.
  #
  # @return [Sketchup::Page]
  #
  # @version SketchUp 6.0
  def add(name = nil, flags = PAGE_USE_ALL, index = self.size)
  end

  # The {#add_matchphoto_page} method is used to add a photomatch page to the
  # model. This is an advanced feature that was added to support internal
  # SketchUp work, so it is unlikely to be useful to you.
  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   page = pages.add_matchphoto_page("/path/to/image.png")
  #
  # @param [String] image_filename
  #   The image file to use as the background.
  #
  # @param [Sketchup::Camera] camera
  #
  # @param [String] page_name
  #
  # @return [Sketchup::Page]
  #
  # @version SketchUp 7.0
  def add_matchphoto_page(image_filename, camera = nil, page_name = nil)
  end

  # The add_observer method is used to add an observer to the Pages object.
  # See the PagesObserver interface for more details.
  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   status = pages.add_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   pages.add('Page 1')
  #   pages.add('Page 2')
  #   number = pages.count
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

  # The {#each} method is used to iterate through pages in the model.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   pages.add("Page 1")
  #   pages.add("Page 2")
  #   pages.each { |page| puts page.name }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yieldparam [Sketchup::Page] page
  def each
  end

  # The {#erase} method is used to remove a page from the collection.
  #
  # @example
  #   page = Sketchup.active_model.pages.add('Hello World')
  #   Sketchup.active_model.pages.erase(page)
  #
  # @param [Sketchup::Page] page
  #
  # @return [Boolean]
  #
  # @version SketchUp 6.0
  def erase(page)
  end

  # The {#length} method is an alias for {#size}.
  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   pages.add('Page 1')
  #   pages.add('Page 2')
  #   number = pages.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 2014
  def length
  end

  # The parent method is used to determine the model for the Pages collection.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   model = pages.parent
  #
  # @return model - the model that contains the pages if successful
  #
  # @version SketchUp 6.0
  def parent
  end

  # The remove_observer method is used to remove an observer from the current
  # object. See the PagesObserver interface for more details.
  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   status = pages.remove_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The selected_page method is used to retrieve the currently selected page.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   page = pages.selected_page
  #
  # @return page - the currently selected Page object if successful
  #
  # @version SketchUp 6.0
  def selected_page
  end

  # The selected_page method is used to set the currently selected page. Once
  # you set this, SketchUp will animate to that page as if the user had clicked
  # on its scene tab.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   status = pages.add "Page 1"
  #   status = pages.add "Page 2"
  #   pages.selected_page = model.pages[1]
  #
  # @param [Sketchup::Page] page
  #
  # @return status - true if successful
  #
  # @version SketchUp 6.0
  def selected_page=(page)
  end

  # The {#show_frame_at} method is used to show a frame in animation (of the
  # slide show) at a given time in seconds.
  #
  # @example
  #   model = Sketchup.active_model
  #   pages = model.pages
  #   pages.add("Page 1")
  #   pages.add("Page 2")
  #   page, ratio = pages.show_frame_at(1.8)
  #
  # @note In versions prior to SketchUp 2019 this method will crash if called
  #   when there are no pages in the model.
  #
  # @param [Float] seconds
  #   The time in seconds.
  #
  # @return [Array(Sketchup::Page, Float), nil] Upon success it returns the
  #   page that is displayed and a parameter between +0.0+ and +1.0+ that is
  #   tells how far along the transition to next page you are at.
  #
  # @version SketchUp 6.0
  def show_frame_at(seconds)
  end

  # The {#size} method is used to retrieve the number of pages.
  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   pages.add('Page 1')
  #   pages.add('Page 2')
  #   number = pages.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def size
  end

  # The slideshow_time method is used to get the amount of time that a slideshow
  # of all of the pages will take. This takes into account the transition time
  # for each Page and the amount of time that each Page is displayed.
  #
  # @example
  #   pages = Sketchup.active_model.pages
  #   time = pages.slideshow_time
  #
  # @return status - true if successful
  #
  # @version SketchUp 6.0
  def slideshow_time
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Pages class is a container class for all pages in a {Layout::Document}.
#
# @example
#   # Grab a handle to an existing LayOut document's pages.
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   pages = doc.pages
#
#   # From here, we can add pages to or remove them from the document
#   pages.add("New Page")
#   pages.remove(pages[0])
#
# @version LayOut 2018
class Layout::Pages

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method returns a value from the array of {Layout::Page}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   page = pages[2]
  #
  # @param [Integer] index
  #   The index of the {Layout::Page} to return.
  #
  # @raise [IndexError] if index is out of range
  #
  # @return [Layout::Page]
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#add} method adds a new {Layout::Page} to the {Layout::Document}.
  # The newly added {Layout::Page} will be the last one in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   new_page = doc.add
  #
  # @param [String] name
  #   The name for the new page.
  #
  # @return [Layout::Page] The newly added {Layout::Page}.
  #
  # @version LayOut 2018
  def add(name = nil)
  end

  # The {#each} method iterates through all of the {Layout::Page}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   pages.each { |page|
  #     puts page.name
  #   }
  #
  # @version LayOut 2018
  #
  # @yieldparam [Layout::Page] page
  def each
  end

  # The {#index} method returns the index of the {Layout::Page}, or +nil+ if
  # it doesn't exist in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   page_index = pages.index(pages.first) # Returns 0
  #
  # @param [Layout::Page] page
  #
  # @return [Integer, nil]
  #
  # @version LayOut 2018
  def index(page)
  end

  # The {#initial} method returns the initial {Layout::Page} that will be
  # displayed the next time the {Layout::Document} is opened. This value will
  # change whenever the {Layout::Page} is changed in the {Layout::Document} in
  # LayOut.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   page = pages.initial
  #
  # @return [Layout::Page]
  #
  # @version LayOut 2018
  def initial
  end

  # The {#initial=} method sets the initial {Layout::Page} that will be
  # displayed the next time the {Layout::Document} is opened. This value will
  # change whenever the {Layout::Page} is changed in the {Layout::Document} in
  # LayOut.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   pages.initial = doc.pages[0]
  #
  # @overload initial=(page)
  #
  #   @param [Layout::Page] page The {Layout::Page} to set as the initial one
  #
  #   @raise [ArgumentError] if page does not belong to the {Layout::Document}
  #
  # @overload initial=(index)
  #
  #   @param [Integer] index The index of the {Layout::Page} to set as the
  #     initial one
  #
  #   @raise [IndexError] if index is out of range
  #
  # @version LayOut 2018
  def initial=(page)
  end

  # The {#length} method returns the number of {Layout::Page}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   num_pages = pages.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def length
  end

  # The {#remove} method deletes the given {Layout::Page} from the
  # {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   pages.remove(pages[0])
  #
  # @overload remove(page)
  #
  #   @param [Layout::Page] page The {Layout::Page} to be removed
  #
  #   @raise [ArgumentError] if the {Layout::Page} is not in the
  #     {Layout::Document}
  #   @raise [ArgumentError] if the {Layout::Page} is the only one in the
  #     {Layout::Document}
  #
  # @overload remove(index)
  #
  #   @param [Integer] index The index of the {Layout::Page} to be removed
  #
  #   @raise [ArgumentError] if the {Layout::Page} is the only one in the
  #     {Layout::Document}
  #   @raise [IndexError] if index is out of range
  #
  # @version LayOut 2018
  def remove(page)
  end

  # The {#reorder} method moves a {Layout::Page} to a different index within
  # the {Layout::Document}'s list of pages. This will move the {Layout::Page}
  # such that its new index becomes new_index.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   pages.reorder(pages[1], 3)
  #
  # @overload reorder(page, new_index)
  #
  #   @param [Layout::Page] page The {Layout::Page} to be reordered
  #   @param [Integer] new_index The index to put the {Layout::Page} at
  #
  #   @raise [ArgumentError] if the {Layout::Page} is not in the {Layout::Document}
  #   @raise [IndexError] if new_index is out of range
  #
  # @overload reorder(index, new_index)
  #
  #   @param [Integer] index The index of the {Layout::Page} to be reordered
  #   @param [Integer] new_index The index to put the {Layout::Page} at
  #
  #   @raise [IndexError] if index or new_index is out of range
  #
  # @version LayOut 2018
  def reorder(page, new_index)
  end

  # The {#length} method returns the number of {Layout::Page}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   num_pages = pages.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def size
  end

end

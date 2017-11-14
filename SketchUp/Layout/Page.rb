# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# Class for a single page in a LayOut document.
#
# @version LayOut 2018
class Layout::Page

  # Instance Methods

  # The {#==} method checks to see if the two {Layout::Page}s are equal.
  # This checks whether the Ruby Objects are pointing to the same internal
  # object.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   document = doc.pages.first.document
  #   doc.pages.first == document.pages.first
  #
  # @param [Layout::Page] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#document} method returns the {Layout::Document} that the {Layout::Page}
  # belongs to.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   # page_doc should reference the same document as doc
  #   page_doc = first_page.document
  #
  # @return [Layout::Document]
  #
  # @version LayOut 2018
  def document
  end

  # The {#entities} method returns all {Layout::Entity}s that are on the
  # {Layout::Page}. This is the equivalent of iterating over all
  # {Layout::LayerInstance}s and using {Layout::LayerInstance.entities}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   entities = first_page.entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def entities
  end

  # The {#in_presentation=} method sets whether the {Layout::Page} is included in
  # presentations.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   first_page.in_presentation = true
  #
  # @param [Boolean] in_presentation
  #
  # @version LayOut 2018
  def in_presentation=(in_presentation)
  end

  # The {#in_presentation?} method returns whether the {Layout::Page} is included
  # in presentations.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   in_presentation = first_page.in_presentation?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def in_presentation?
  end

  # The {#layer_instances} method returns an array of the {Layout::LayerInstance}s
  # for the {Layout::Page}.
  #
  # @example
  #   # An example of page.layer_instances
  #
  # @return [Array<Layout::LayerInstance>]
  #
  # @version LayOut 2018
  def layer_instances
  end

  # The {#layer_visible?} method returns whether a {Layout::Layer} is visible
  # on the {Layout::Page}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   layer = doc.layers.first
  #   visible = first_page.layer_visible?(layer)
  #
  # @param [Layout::Layer] layer
  #
  # @raise [ArgumentError] if layer and page are not in the same document
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def layer_visible?(layer)
  end

  # The {#name} method returns the name of the {Layout::Page}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   first_page_name = pages.first.name
  #
  # @return [String]
  #
  # @version LayOut 2018
  def name
  end

  # The {#name=} method sets the name of a page.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pages = doc.pages
  #   pages.first.name = "First page"
  #
  # @param [String] name
  #
  # @raise [ArgumentError] if name is an empty string
  #
  # @version LayOut 2018
  def name=(name)
  end

  # The {#nonshared_entities} method returns the {Layout::Entities}
  # unique to the {Layout::Page}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   entities = first_page.nonshared_entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def nonshared_entities
  end

  # The {#set_layer_visibility} method sets whether a {Layout::Layer} is visible
  # on the {Layout::Page}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_page = doc.pages.first
  #   layer = doc.layers.first
  #   first_page.set_layer_visibility(layer, false)
  #
  # @param [Layout::Layer] layer
  #
  # @param [Boolean] visible
  #
  # @raise [ArgumentError] if layer could not be hidden because there must be at
  #   least one unlocked, visible layer on each page
  #
  # @raise [ArgumentError] if layer and page are not in the same document
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def set_layer_visibility(layer, visible)
  end

end

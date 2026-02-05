# Copyright:: Copyright 2026 Trimble Inc.
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

  # The {#attribute_dictionary} method returns a copy of the page's attribute dictionary with the
  # given name.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   page.set_attribute("jane_doe_doc_maker", "made_by_doc_maker", true)
  #   attributes = page.attribute_dictionary("jane_doe_doc_maker")
  #   # Adding to this Layout::Dictionary does not apply to the page's attribute dictionary, use
  #   # Layout::Page#set_attribute.
  #   attributes.merge!(doc_id: 42)
  #
  # @param [String] name
  #
  # @return [Layout::Dictionary, nil] A copy of the page's attribute dictionary, or nil if there is
  #   no attribute dictionary
  #
  # @version LayOut 2026.0
  def attribute_dictionary(name)
  end

  # The {#delete_attribute} method is used to delete an attribute from a page.
  #
  # @overload delete_attribute(dictionary_name)
  #
  #   @param [String] dictionary_name The name of an attribute dictionary.
  #   @return [Boolean]
  #
  #   @example
  #     doc = Layout::Document.open("C:/path/to/document.layout")
  #     page = doc.pages.first
  #     page.set_attribute("jane_doe_doc_maker", "made_by_doc_maker", true)
  #     page.delete_attribute("jane_doe_doc_maker")
  #
  # @overload delete_attribute(dictionary_name, key)
  #
  #   @param [String] dictionary_name The name of an attribute dictionary.
  #   @param [String] key An attribute key.
  #   @return [Boolean]
  #
  #   @example
  #     doc = Layout::Document.open("C:/path/to/document.layout")
  #     page = doc.pages.first
  #     page.set_attribute("jane_doe_doc_maker", "made_by_doc_maker", true)
  #     page.delete_attribute("jane_doe_doc_maker", "made_by_doc_maker")
  #
  # @version LayOut 2026.0
  def delete_attribute(*args)
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

  # The {#get_attribute} method is used to retrieve the value of an attribute in
  # the page's attribute dictionary.
  #
  # If the third parameter, +default_value+, is not passed and there is no
  # attribute that matches the given name, it returns +nil+.
  #
  # If +default_value+ is provided and there is no matching attribute it returns
  # the given value. It does not create an attribute with that name though.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   # Read an attribute value from the page. In this case this will return the
  #   # default value provided: 42.
  #   page.get_attribute("jane_doe_doc_maker", "doc_id", 42)
  #
  # @param [String] name
  #   The name of an attribute dictionary.
  #
  # @param [String] key
  #   An attribute key.
  #
  # @param [String, Boolean, Integer, Float, Hash, Layout::Dictionary, nil] default_value
  #   A default
  #   value to return if no attribute is found.
  #
  # @return [String, Boolean, Integer, Float, Layout::Dictionary, nil] the retrieved value.
  #
  # @version LayOut 2026.0
  def get_attribute(name, key, default_value = nil)
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

  # The {#set_attribute} method adds an attribute to the page's attribute dictionary.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page = doc.pages.first
  #   page.set_attribute("jane_doe_doc_maker", "doc_id", 42)
  #
  # @param [String] name
  #   The name of an attribute dictionary.
  #   @param [String] key An attribute key.
  #   @param [String, Boolean, Integer, Float, Hash, Layout::Dictionary, nil] value The value for the
  #     attribute.
  #
  # @version LayOut 2026.0
  def set_attribute(name, key, value)
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
  # @raise [ArgumentError] if layer and page are not in the same document
  #
  # @raise [ArgumentError] if layer could not be hidden because there must be at
  #   least one unlocked, visible layer on each page
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def set_layer_visibility(layer, visible)
  end

end

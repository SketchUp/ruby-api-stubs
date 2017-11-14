# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is the interface to a LayOut Layer Definition. A layer definition
# specifies the document-wide information about a layer. To access the entities
# on a layer for a given page, use {Layout::LayerInstance}.
#
# @example
#   # Grab a handle to an existing LayOut document.
#   doc = Layout::Document.open("C:/path/to/document.layout")
#
#   new_layer = doc.add_layer(true)
#   new_layer.name = "A new layer"
#
# @version LayOut 2018
class Layout::Layer

  # Constants

  SHARELAYERACTION_CLEAR = nil # Stub value.
  SHARELAYERACTION_KEEPONEPAGE = nil # Stub value.
  SHARELAYERACTION_MERGEALLPAGES = nil # Stub value.

  UNSHARELAYERACTION_CLEAR = nil # Stub value.
  UNSHARELAYERACTION_COPYTOALLPAGES = nil # Stub value.
  UNSHARELAYERACTION_COPYTOONEPAGE = nil # Stub value.

  # Instance Methods

  # The {#==} method checks to see if the two {Layout::Layer}s are equal.
  # This checks whether the Ruby Objects are pointing to the same internal
  # object.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   document = doc.pages.first.document
  #   doc.layers.first == document.layers.first
  #
  # @param [Layout::Layer] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#document} method returns the {Layout::Document} that the {Layout::Layer}
  # belongs to.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   first_layer = doc.layers.first
  #   # layer_doc should reference the same document as doc
  #   layer_doc = first_layer.document
  #
  # @return [Layout::Document]
  #
  # @version LayOut 2018
  def document
  end

  # The {#layer_instance} method returns a {Layout::LayerInstance} from the
  # {Layout::Layer}. If the {Layout::Layer} is shared, a {Layout::Page} does not
  # have to be provided.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   page = doc.pages.first
  #   layer_instance = layers.first.layer_instance(page)
  #
  # @overload layer_instance
  #
  #   @return [Layout::LayerInstance]
  #
  # @overload layer_instance(page)
  #
  #   @param [Layout::Page] page
  #   @return [Layout::LayerInstance]
  #
  # @raise [ArgumentError] if the {Layout::Layer} is not shared and no page is
  #   provided
  #
  # @version LayOut 2018
  def layer_instance(page)
  end

  # The {#locked=} method sets whether the {Layout::Layer} is locked.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layers.first.locked = false
  #
  # @param [Boolean] locked
  #   +true+ to lock the {Layout::Layer}, +false+ to
  #   unlock it
  #
  # @raise [ArgumentError] if the {Layout::Layer} could not be locked because
  #   there must be at least one unlocked, visible {Layout::Layer}
  #
  # @version LayOut 2018
  def locked=(locked)
  end

  # The {#locked?} method returns whether the {Layout::Layer} is locked.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   is_locked = layer.first.locked?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def locked?
  end

  # The {#name} method returns the name of the {Layout::Layer}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layer_name = layers.first.name
  #
  # @return [String]
  #
  # @version LayOut 2018
  def name
  end

  # The {#name=} sets the name of the {Layout::Layer}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   layers.first.name = "Base layer"
  #
  # @param [String] name
  #
  # @raise [ArgumentError] if name is an empty string
  #
  # @version LayOut 2018
  def name=(name)
  end

  # The {#set_nonshared} method sets the {Layout::Layer} to non-shared.
  #
  # The unshare action can be one of the following values:
  # [+Layout::Layer::UNSHARELAYERACTION_CLEAR+]
  # [+Layout::Layer::UNSHARELAYERACTION_COPYTOONEPAGE+]
  # [+Layout::Layer::UNSHARELAYERACTION_COPYTOALLPAGES+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   page = doc.pages.first
  #   layers.first.set_nonshared(page, Layout::Layer::UNSHARELAYERACTION_COPYTOONEPAGE);
  #
  # @param [Layout::Page] page
  #   The {Layout::Page} with the {Layout::Layer} to be
  #   non-shared.
  #
  # @param [Integer] unshare_action
  #   The share action that specifies what to do
  #   with {Layout::Entity}s after the {Layout::Layer} is non-shared.
  #
  # @raise [ArgumentError] if unshare_action is not a valid value
  #
  # @raise [LockedLayerError] if the {Layout::Layer} is locked
  #
  # @version LayOut 2018
  def set_nonshared(page, unshare_action)
  end

  # The {#set_shared} method sets the {Layout::Layer} to shared.
  #
  # The share action can be one of the following values:
  # [+Layout::Layer::SHARELAYERACTION_CLEAR+]
  # [+Layout::Layer::SHARELAYERACTION_KEEPONEPAGE+]
  # [+Layout::Layer::SHARELAYERACTION_MERGEALLPAGES+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   page = doc.pages.first
  #   layers.first.set_shared(page, Layout::Layer::SHARELAYERACTION_KEEPONEPAGE);
  #
  # @param [Layout::Page] page
  #   The {Layout::Page} with the {Layout::Layer} to be
  #   shared.
  #
  # @param [Integer] share_action
  #   The share action that specifies what to do with
  #   {Layout::Entity}s after the {Layout::Layer} is shared.
  #
  # @raise [ArgumentError] if share_action is not a valid value
  #
  # @raise [Layout::LockedLayerError] if the {Layout::Layer} is locked
  #
  # @version LayOut 2018
  def set_shared(page, share_action)
  end

  # The {#shared?} method returns whether the {Layout::Layer} is shared.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #   is_shared = layers.first.shared?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def shared?
  end

end

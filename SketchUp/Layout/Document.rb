# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This is the interface to a LayOut document. A {Layout::Document} is the 2D
# drawing that the user is working with, and it serves as the "entry point" for
# most Ruby API interactions. The {Layout::Document.open} method gives you a
# handle to a {Layout::Document}, and from there you can use the
# document-level methods to start getting information and making changes.
#
# @example
#   # Grab a handle to an existing LayOut document.
#   doc = Layout::Document.open("C:/path/to/document.layout")
#
#   # Grab other handles to commonly used collections inside the model.
#   layers = doc.layers
#   pages = doc.pages
#   entities = doc.shared_entities
#
#   # Now that we have our handles, we can start pulling objects and making
#   # method calls that are useful.
#   first_entity = entities[0]
#
#   number_pages = pages.count
#
# @version LayOut 2018
class Layout::Document

  # Constants

  DECIMAL_CENTIMETERS = nil # Stub value.
  DECIMAL_FEET = nil # Stub value.
  DECIMAL_INCHES = nil # Stub value.
  DECIMAL_METERS = nil # Stub value.
  DECIMAL_MILLIMETERS = nil # Stub value.
  DECIMAL_POINTS = nil # Stub value.

  FRACTIONAL_INCHES = nil # Stub value.

  VERSION_1 = nil # Stub value.
  VERSION_2 = nil # Stub value.
  VERSION_2013 = nil # Stub value.
  VERSION_2014 = nil # Stub value.
  VERSION_2015 = nil # Stub value.
  VERSION_2016 = nil # Stub value.
  VERSION_2017 = nil # Stub value.
  VERSION_2018 = nil # Stub value.
  VERSION_3 = nil # Stub value.
  VERSION_CURRENT = nil # Stub value.

  # Class Methods

  # The {.open} method creates a new {Layout::Document} by loading an existing
  # .layout file.
  #
  # @example
  #   filename = File.join(ENV['Home'], 'Desktop', 'template.layout')
  #   doc = Layout::Document.open(filename)
  #
  # @param [String] path
  #   The path to the .layout file on disk.
  #
  # @raise [ArgumentError] if the file does not exist
  #
  # @return [Layout::Document] The {Layout::Document} created from the .layout
  #   file.
  #
  # @version LayOut 2018
  def self.open(path)
  end

  # Instance Methods

  # The {#==} method checks to see if the two {Layout::Document}s are equal.
  # This checks whether the Ruby Objects are pointing to the same internal
  # object.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   document = doc.pages.first.document
  #   doc == document
  #
  # @param [Layout::Document] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#add_entity} method adds an {Layout::Entity} to the {Layout::Document}
  # and places it on the given {Layout::Layer} and {Layout::Page}. If layer is a
  # shared {Layout::Layer} then page may be ommitted. The {Layout::Entity} must
  # not already belong to a {Layout::Document}. If the {Layout::Entity} is a
  # {Layout::Group}, then the {Layout::Group} along with all of its children will
  # be added to the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   rect = Layout::Rectangle.new([[1, 1], [2, 2]])
  #   all_layers = doc.layers
  #   all_pages = doc.pages
  #   doc.add_entity(rect, all_layers.first, all_pages.first)
  #
  # @overload add_entity(entity, layer, page)
  #
  #   @param [Layout::Entity] entity The {Layout::Entity} to be added
  #   @param [Layout::Layer] layer The {Layout::Layer} to add the
  #     {Layout::Entity} to
  #   @param [Layout::Page] page The {Layout::Page} to add the {Layout::Entity}
  #     to
  #
  # @overload add_entity(entity, layer)
  #
  #   @param [Layout::Entity] entity The {Layout::Entity} to be added
  #   @param [Layout::Layer] layer The shared {Layout::Layer} to add the
  #     {Layout::Entity} to
  #
  # @raise [ArgumentError] if no {Layout::Page} is passed in and layer is
  #   non-shared
  #
  # @raise [ArgumentError] if entity already belongs to a {Layout::Document}
  #
  # @raise [ArgumentError] if layer does not belong to the {Layout::Document}
  #
  # @raise [ArgumentError] if page does not belong to the {Layout::Document}
  #
  # @version LayOut 2018
  def add_entity(*args)
  end

  # The {#auto_text_definitions} method returns an array of
  # {Layout::AutoTextDefinition}'s in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   defs = doc.auto_text_definitions
  #
  # @return [Layout::AutoTextDefinitions]
  #
  # @version LayOut 2018
  def auto_text_definitions
  end

  # The {#grid} method returns the {Layout::Grid} for a {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   grid = doc.grid
  #
  # @return [Layout::Grid]
  #
  # @version LayOut 2018
  def grid
  end

  # The {#grid_snap_enabled=} method sets whether or not grid snap is enabled in
  # the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.grid_snap_enabled = true
  #
  # @param [Boolean] enabled
  #   +true+ for enabled +false+ for disabled
  #
  # @version LayOut 2018
  def grid_snap_enabled=(enabled)
  end

  # The {#grid_snap_enabled?} method returns whether or not grid snap is enabled
  # in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   enabled = doc.grid_snap_enabled?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def grid_snap_enabled?
  end

  # The {#initialize} method creates a new {Layout::Document}. Passing a path to
  # an existing {Layout::Document} will use that file as a template. The new
  # {Layout::Document} won't have a path until it is saved for the first time.
  #
  # @example
  #   doc = Layout::Document.new
  #   doc2 = Layout::Document.new("/path/to/template.layout")
  #
  # @overload initialize
  #
  #   @return [Layout::Document] an empty {Layout::Document} with one
  #     {Layout::Layer} and one {Layout::Page}
  #
  # @overload initialize(template_path)
  #
  #   @param [String] template_path The path to the {Layout::Document} to use as
  #     a template
  #   @return [Layout::Document] an unsaved {Layout::Document} based on the
  #     template
  #
  # @raise [ArgumentError] if the template file could not be found
  #
  # @raise [RuntimeError] if there was an error reading the template file
  #
  # @version LayOut 2018
  def initialize(*args)
  end

  # The {#layers} method returns the {Layout::Layers} of the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   layers = doc.layers
  #
  # @return [Layout::Layers]
  #
  # @version LayOut 2018
  def layers
  end

  # The {#object_snap_enabled=} method enables or disables inference in the
  # {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.object_snap_enabled = false
  #
  # @param [Boolean] enabled
  #   +true+ for enabled +false+ for disabled
  #
  # @version LayOut 2018
  def object_snap_enabled=(enabled)
  end

  # The {#object_snap_enabled?} method returns whether or not inference is
  # enabled in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   enabled = doc.object_snap_enabled?
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def object_snap_enabled?
  end

  # The {#page_info} method returns a reference to the {Layout::PageInfo}
  # settings of the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_info = doc.page_info
  #
  # @return [Layout::PageInfo]
  #
  # @version LayOut 2018
  def page_info
  end

  # The {#pages} method returns the {Layout::Pages} of the {Layout::Document}.
  #
  #
  # @example:
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc_pages = doc.pages
  #
  # @return [Layout::Pages] The {Layout::Pages} for the {Layout::Document}.
  #
  # @version LayOut 2018
  def pages
  end

  # The {#path} method returns the full path of the {Layout::Document} file. An
  # empty string is returned for a new {Layout::Document} (one which has not
  # been saved and opened).
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   path = doc.path
  #
  # @return [String]
  #
  # @version LayOut 2018
  def path
  end

  # The {#precision} method returns the precision for the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   precision = doc.precision
  #
  # @return [Float] the number specifying the precision for the
  #   {Layout::Document}
  #
  # @version LayOut 2018
  def precision
  end

  # The {#precision=} method sets the precision for the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.precision = 0.0001
  #
  # @note LayOut only allows for a finite set of precision values for each units
  #   setting, so it will set the precision to the closest valid setting for the
  #   specified units. See the "Units" section of LayOut's "Document Setup"
  #   dialog for a reference of the available precisions for each units setting.
  #
  # @param [Float] precision
  #   The double specifying the precision for the
  #   {Layout::Document}
  #
  # @version LayOut 2018
  def precision=(precision)
  end

  # The {#remove_entity} method removes an {Layout::Entity} from the
  # {Layout::Document}. If entity is a {Layout::Group}, then the {Layout::Group}
  # and all of its children will be removed from the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   shared_entities = doc.shared_entities
  #   # Remove the first entity in the document
  #   doc.remove_entity(shared_entities.first)
  #
  # @param [Layout::Entity] entity
  #   The {Layout::Entity} to be removed
  #
  # @raise [ArgumentError] if entity does not belong to the {Layout::Document}
  #
  # @version LayOut 2018
  def remove_entity(entity)
  end

  # The {#save} method saves the {Layout::Document} to a file at the given path.
  # Passing an empty path string will save the {Layout::Document} at its current
  # path.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   # Save the model using the current Layout format
  #   filename = File.join(ENV['Home'], 'Desktop', 'mydoc.layout')
  #   status = doc.save(filename)
  #   # Save the document to the current file using the current LayOut format
  #   status = doc.save
  #   # Save the document to the current file in LayOut 3 format
  #   status = doc.save(Layout::Document::VERSION_3)
  #   # Save the document in LayOut 2013 format
  #   filename = File.join(ENV['Home'], 'Desktop', 'mydoc_v2013.layout')
  #   status = doc.save(filename, Layout::Document::VERSION_2013)
  #
  # @overload save
  #
  #   @raise [ArgumentError] if the {Layout::Document} hasn't been saved with a
  #    path yet
  #
  # @overload save(path, version = Layout::Document::VERSION_CURRENT)
  #
  #   @param [String] path The path to the .layout file on disk.
  #   @param [Integer] version LayOut file format to save.
  #
  # @raise [ArgumentError] if version is not a valid version
  #
  # @version LayOut 2018
  def save(*args)
  end

  # The {#shared_entities} method returns the {Layout::Entities}
  # that exist on shared {Layout::Layer}s in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   entities = doc.shared_entities
  #
  # @return [Layout::Entities]
  #
  # @version LayOut 2018
  def shared_entities
  end

  # The {#time_created} method returns the time when the {Layout::Document} was
  # created.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   created_time = doc.time_created
  #
  # @return [Time] time when the {Layout::Document} was created
  #
  # @version LayOut 2018
  def time_created
  end

  # The {#time_modified} method returns the last time the {Layout::Document} was
  # modified.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   mod_time = doc.time_modified
  #
  # @return [Time] time when the {Layout::Document} was last modified
  #
  # @version LayOut 2018
  def time_modified
  end

  # The {#time_published} method returns the time when the {Layout::Document} was
  # published.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   pub_time = doc.time_published
  #
  # @return [Time] time when the {Layout::Document} was published
  #
  # @version LayOut 2018
  def time_published
  end

  # The {#units} method returns the units for the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   units = doc.units
  #
  # @return [Integer] The unit format of the {Layout::Document}
  #
  # @version LayOut 2018
  def units
  end

  # The {#units=} method sets the units for the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   units_format = LAYOUT::DOCUMENT::DECIMAL_MILLIMETERS
  #   doc.units = units_format
  #
  # @param [Integer] units_format
  #   The format of the units in the {Layout::Document}
  #
  # @raise [ArgumentError] if units format is not a valid format
  #
  # @version LayOut 2018
  def units=(units_format)
  end

end

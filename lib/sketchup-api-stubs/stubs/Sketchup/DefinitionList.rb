# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# A DefinitionList object holds a list of all of the ComponentDefinition
# objects in a model. This class contains methods for  adding and retrieving
# definitions from the list.
#
# @version SketchUp 6.0
class Sketchup::DefinitionList < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The [] method is used to retrieve a component definition from the list. You
  # can give an integer index in the range 0 to length, a string which
  # represents the GUID (a unique internal identifier), or a string that is
  # the name of the definition.
  #
  # @example
  #   path=Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   component = definitions[0]
  #
  # @overload [](index)
  #
  #   @param [Integer] index The index for a specific component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @overload [](name)
  #
  #   @param [String] name The unique GUID for the component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @overload [](guid)
  #
  #   @param [String] guid The name of an existing component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @version SketchUp 6.0
  def [](arg)
  end

  # The add method is used to add a new component definition to the definition
  # list with the given name.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.add "BedTraditional"
  #   component = definitions[0]
  #
  # @param [String] def_name
  #   The new component definition to add to the definition
  #   list.
  #
  # @return [Sketchup::ComponentDefinition] the ComponentDefinition object
  #   that was added (if successful)
  #
  # @version SketchUp 6.0
  def add(def_name)
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   definitions = Sketchup.active_model.definitions
  #   status = definitions.add_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The [] method is used to retrieve a component definition from the list. You
  # can give an integer index in the range 0 to length, a string which
  # represents the GUID (a unique internal identifier), or a string that is
  # the name of the definition.
  #
  # @example
  #   path=Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #   component = definitions[0]
  #
  # @overload [](index)
  #
  #   @param [Integer] index The index for a specific component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @overload [](name)
  #
  #   @param [String] name The unique GUID for the component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @overload [](guid)
  #
  #   @param [String] guid The name of an existing component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @version SketchUp 6.0
  def at(arg)
  end

  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   number = definitions.count
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

  # The {#each} method is used to iterate through all of the component
  # definitions in the definition list.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   definitions.add("BedTraditional")
  #   number = definitions.each { |definition| puts definition.name }
  #
  # @note Don't remove content from this collection while iterating over it with
  #   {#each}. This would change the size of the collection and cause elements to
  #   be skipped as the indices change. Instead copy the current collection to an
  #   array using +to_a+ and then use +each+ on the array, when removing content.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yieldparam [Sketchup::ComponentDefinition] definition
  def each
  end

  # The {#import} method is used to import a (non-SketchUp) 3d model file as a definition.
  #
  # Importers using the C API +SketchUpModelImporterInterface+ interface are supported (those in the
  # +Importers/+ directory).
  #
  # See the {file:pages/importer_options.md Importer Options} file for information
  # on creating a valid hash for the various importers.
  #
  # For SketchUp models, instead use {#load}.
  #
  # @example
  #   path = "C:/circle.dwg"
  #   definition = Sketchup.active_model.definitions.import(path)
  #
  # @param [String] path
  #
  # @param [Hash] options
  #
  # @raise [IOError] if the file is missing.
  #
  # @raise [ArgumentError] if no suitable importer could be found.
  #
  # @return [Sketchup::ComponentDefinition]
  #
  # @version SketchUp 2021.1
  def import(path, options = {})
  end

  # The {#length} method is used to retrieve number of component definitions in
  # the list.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   number = definitions.length
  #
  # @return [Integer]
  #
  # @see #size
  #
  # @version SketchUp 6.0
  def length
  end

  # The {#load} method is used to load a component from a file.
  #
  # @bug In SketchUp versions prior to SketchUp 2019 the application would crash
  #   if you tried to open a newer model instead of raising the expected
  #   +RuntimeError+.
  #
  # @bug Prior to SketchUp 2023.0 this method silently failed to load a component if the model
  #   already contained a different component associated with the same path.
  #   Instead the existing component was returned.
  #   Making arbitrary changes to the existing component would allow the new one to be loaded.
  #
  # @example
  #   path = Sketchup.find_support_file("Bed.skp",
  #     "Components/Components Sampler/")
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   definition = definitions.load(path)
  #
  # @example Workaround for loading from the same path twice
  #   path = "some/location/on/your/computer.skp"
  #   definition1 = Sketchup.active_model.definitions.load(path)
  #
  #   # Now open the external file and make some changes to it.
  #
  #   # HACK: Prior to version 2023.0 SketchUp wouldn't load components from the same path twice.
  #   # Instead it silently returned the existing, outdated component.
  #   # Making an arbitrary change to the existing component allows a new one to be loaded.
  #   definition1.entities.add_cpoint(ORIGIN) if Sketchup.version.to_i < 23
  #
  #   definition2 = Sketchup.active_model.definitions.load(path)
  #
  # @overload load(path)
  #
  #   @param [String] path
  #     The path where the component definition file is located.
  #
  # @overload load(path, allow_newer: true)
  #
  #   Starting with SketchUp 2021.0 SketchUp attempts to load newer SketchUp
  #   models. If a newer model is loaded some information might have been skipped
  #   and extensions should be careful to not save over the file they loaded from
  #   as information might be lost.
  #
  #   @version SketchUp 2021.0
  #   @param [String] path
  #     The path where the component definition file is located.
  #   @param [Boolean] allow_newer
  #     Indicate that it is ok to load a model with of a newer version.
  #
  # @raise IOError If the file is not a valid SketchUp model.
  #
  # @raise RuntimeError If the file is the same as the model being loaded into.
  #
  # @raise IOError If the file is an empty component.
  #
  # @raise RuntimeError If the file contains only screen text.
  #
  # @raise RuntimeError If the file is of a newer file version that the executing
  #   SketchUp version cannot open.
  #
  # @return [Sketchup::ComponentDefinition] the loaded ComponentDefinition
  #
  # @version SketchUp 6.0
  def load(*args)
  end

  # The {#load_from_url} method loads a component from a location specified by
  # string url.
  #
  # This method throws an exception if an url string is not
  # given, or an error occurs during retrieval from URL and a
  # +load_handler+ was not given. Optional second parameter +load_handler+ can be
  # used to pass in a Ruby object that responds to the following methods:
  #
  # - +cancelled?+
  # - +onPercentChange(percent)+
  # - +onSuccess()+
  # - +onFailure(message_string)+
  #
  # @bug Calling this method from an {UI::HtmlDialog}'s action callback on macOS will cause the
  #   SketchUp application to become unresponsive or crash. To work around this, defer the call
  #   from the action callback with a non-repeating zero-delay timer;
  #   +UI.start_timer(0, false) { method_calling_load_from_url }+
  #
  # @example Download a component using a LoadHandler
  #   class LoadHandler
  #     attr_accessor :error
  #
  #     # @param [Float] percent
  #     def onPercentChange(percent)
  #       Sketchup::set_status_text("loading: #{percent.round}%")
  #     end
  #
  #     def cancelled?
  #       # You could, for example, show a messagebox after X seconds asking if the
  #       # user wants to cancel the download. If this method returns true, then
  #       # the download cancels.
  #       return false
  #     end
  #
  #     def onSuccess
  #       Sketchup::set_status_text('')
  #     end
  #
  #     # @param [String] error_message
  #     def onFailure(error_message)
  #       self.error = error_message
  #       Sketchup::set_status_text('')
  #     end
  #   end
  #
  #   # Replace this with a real URL...
  #   url = 'https://www.sketchup.com/model.skp'
  #   model = Sketchup.active_model
  #   load_handler = LoadHandler.new
  #   definition = model.definitions.load_from_url(url, load_handler)
  #
  #   if definition.nil?
  #     puts "Error: #{load_handler.error}"
  #   end
  #
  # @example Workaround for macOS bug related to HtmlDialog action callbacks
  #   module Example
  #
  #     def self.open_dialog
  #       @dialog = UI::HtmlDialog.new
  #       @dialog.add_action_callback("say") { |action_context, url|
  #         self.load_component_deferred(url)
  #       }
  #       @dialog.set_file("path/to/file.html")
  #       @dialog.show
  #     end
  #
  #     def load_component_deferred
  #       # The timer delay is enough to avoid .load_from_url from deadlocking.
  #       UI.start_timer(0, false) do
  #         self.load_component(url)
  #       end
  #     end
  #
  #     def self.load_component(url)
  #       model = Sketchup.active_model
  #       definition = model.definitions.load_from_url(url)
  #       # ...
  #     end
  #
  #   end
  #
  # @overload load_from_url(url)
  #
  #   @param [String] url
  #     URL to load a .skp file from.
  #
  # @overload load_from_url(url, load_handler)
  #
  #   @param [String] url
  #     URL to load a .skp file from.
  #   @param [Object] load_handler
  #     Ruby object that has methods defined
  #     as described in the +load_from_url+ details above.
  #
  # @return [Sketchup::ComponentDefinition]
  #
  # @version SketchUp 7.0
  def load_from_url(*args)
  end

  # The purge_unused method is used to remove the unused component definitions.
  #
  # @example
  #   definitions = Sketchup.active_model.definitions
  #   definitions.purge_unused
  #
  # @return [Sketchup::DefinitionList]
  #
  # @version SketchUp 6.0
  def purge_unused
  end

  # The {#remove} method is used to remove a component definition from the
  # definition list with the given component definition. This will remove all
  # instances of the definition.
  #
  # @bug Prior to SketchUp 2023.0 this could crash SketchUp if you erased an
  #   definition used by the active edit path.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   definition = definitions[0]
  #   definitions.remove(definition)
  #
  # @param [Sketchup::ComponentDefinition] definition
  #
  # @raise [ArgumentError] if the given definition is used by {Sketchup::Model#active_path}.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2018
  def remove(definition)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   definitions = Sketchup.active_model.definitions
  #   status = definitions.remove_observer observer
  #
  # @param [Object] observer
  #   An observer.
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

  # The {#size} method is an alias for {#length}.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   number = definitions.size
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 2014
  def size
  end

  # The unique_name is used to generate a unique name for a definition based on
  # a base_name string. For example, a base_name of "Joe" might return "Joe #2"
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   new_name = definitions.unique_name "My Base Name"
  #
  # @param [String] base_name
  #
  # @return [String] the unique name.
  #
  # @version SketchUp 6.0
  def unique_name(base_name)
  end

end

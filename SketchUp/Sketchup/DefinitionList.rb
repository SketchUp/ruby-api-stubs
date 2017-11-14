# Copyright:: Copyright 2017 Trimble Inc.
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
  # @overload [](guid)
  #
  #   @param [String] guid The name of an existing component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @overload [](name)
  #
  #   @param [String] name The unique GUID for the component definition.
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
  # @overload [](guid)
  #
  #   @param [String] guid The name of an existing component definition.
  #   @return [Sketchup::ComponentDefinition, nil]
  #
  # @overload [](name)
  #
  #   @param [String] name The unique GUID for the component definition.
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
  #   +Enumable+ mix-in module. Prior to that the {#count} method is an alias
  #   for {#length}.
  #
  # @return [Integer]
  #
  # @see #length
  #
  # @version SketchUp 6.0
  def count
  end

  # The each method is used to iterate through all of the component definitions
  # in the definition list.
  #
  # Throws an exception if there are no component definitions.
  #
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   definitions.add("BedTraditional")
  #   number = definitions.each { |definition| puts definition.name }
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  #
  # @yield [Sketchup::ComponentDefinition] definition
  def each
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

  # The load method is used to load a component from a file.
  #
  # @example
  #   path=Sketchup.find_support_file "Bed.skp",
  #     "Components/Components Sampler/"
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   componentdefinition = definitions.load path
  #
  # @param [String] path
  #   The path where the component definition file is located.
  #
  # @return [Sketchup::ComponentDefinition] the loaded ComponentDefinition
  #   object if successful
  #
  # @version SketchUp 6.0
  def load(path)
  end

  # The load_from_url method loads a component from a location specified by
  # string url. This method throws an exception if an url string is not
  # given, or an error occurs during retrieval from url and a
  # load_handler was not given. Optional second parameter load_handler can be
  # used to pass in a ruby object that responds to the following methods:
  #
  #   - cancelled?(a_boolean)
  #   - onPercentChange(a_float)
  #   - onSuccess()
  #   - onFailure(message_string)
  #
  # @example
  #   class LoadHandler
  #
  #     attr :error
  #
  #     def onPercentChange(percent)
  #       Sketchup::set_status_text("LOADING: #{percent}%")
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
  #     def onFailure(error_message)
  #       self.error = error_message
  #       Sketchup::set_status_text('')
  #     end
  #
  #   end
  #
  #   # Replace this with a real URL...
  #   url = 'http://www.sketchup.com/model.skp'
  #   model = Sketchup.active_model
  #   definition = model.definitions.load_from_url(url, load_handler)
  #
  #   if definition.nil?
  #     puts "Error: #{load_handler.error}"
  #   end
  #
  # @param [String] url
  #   URL to load a .skp file from.
  #
  # @param [Object] load_handler
  #   Ruby object that has methods defined
  #   as described in the load_from_url details.
  #
  # @return [Sketchup::ComponentDefinition] the loaded ComponentDefinition
  #   object if successful
  #
  # @version SketchUp 7.0
  def load_from_url(url, load_handler)
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
  # @example
  #   model = Sketchup.active_model
  #   definitions = model.definitions
  #   definition = definitions[0]
  #   definitions.remove(definition)
  #
  # @param [Sketchup::ComponentDefinition] definition
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

# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# An {Sketchup::Environments} object is a collection of {Sketchup::Environment} objects.
# It is used to manage the environments in a model.
#
# An {Sketchup::Environment} object represents an environment in the model. Environments are
# used to control the background and lighting of the model. Environments can be used as skyboxes,
# for reflections, and to link the sun to the environment.
#
# @version SketchUp 2025.0
class Sketchup::Environments < Sketchup::Entity

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method is used to retrieve an {Sketchup::Environment} by name.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('My Environment', path)
  #   result = environments['My Environment']
  #
  # @param [String] name
  #   The name of the {Sketchup::Environment}.
  #
  # @return [Sketchup::Environment, nil]
  #
  # @version SketchUp 2025.0
  def [](name)
  end

  # The {#add} method adds an {Sketchup::Environment} to the {Sketchup::Environments}.
  #
  # @note The supported file formats are HDR, EXR and SKE.
  #
  # @overload add(name, path)
  #
  #   @param [String] name the name of the environment.
  #   @param [String] path the path to the image or SKE file used for the environment
  #   @example
  #     environments = Sketchup.active_model.environments
  #     path = 'path/to/environment.hdr'
  #     environment = environments.add('My Environment', path)
  #
  # @overload add(path)
  #
  #   @since SketchUp 2026.0
  #   @param [String] path the path to the image or SKE file used for the environment
  #   @example
  #     environments = Sketchup.active_model.environments
  #     path = 'path/to/environment.hdr'
  #     environment = environments.add(path)
  #
  # @raise ArgumentError if the file could not be loaded.
  #
  # @return [Sketchup::Environment] the newly created environment
  #
  # @version SketchUp 2025.0
  def add(*args)
  end

  # The {#add_observer} method is used to add an observer to the environments
  # collection.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   status = environments.add_observer(observer)
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 2025.0
  def add_observer(arg)
  end

  # The {#current} method is used to get the current environment in the
  # {Sketchup::Environments}.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   current = environments.current
  #
  # @return [Sketchup::Environment, nil] the current environment
  #
  # @version SketchUp 2025.0
  def current
  end

  # The {#current=} method is used to set the current environment in the
  # {Sketchup::Environments}.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('My Environment', path)
  #   environments.current = environment
  #
  # @param [Sketchup::Environment, nil] environment
  #   the new current environment
  #
  # @return [Sketchup::Environment, nil] the new current environment
  #
  # @version SketchUp 2025.0
  def current=(environment)
  end

  # The {#each} method is used to iterate over all the environments in the
  # {Sketchup::Environments}.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   environments.each { |environment| puts environment.name }
  #
  # @return [Sketchup::Environments]
  #
  # @version SketchUp 2025.0
  #
  # @yield [environment]
  #
  # @yieldparam [Sketchup::Environment] environment
  #   the environment
  def each
  end

  # The {#purge_unused} method is used to remove unused environments.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   environments.purge_unused
  #
  # @return [Sketchup::Environments]
  #
  # @version SketchUp 2025.0
  def purge_unused
  end

  # The {#remove} method removes an {Sketchup::Environment} from the {Sketchup::Environments}.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   path = 'path/to/environment.hdr'
  #   environment = environments.add('My Environment', path)
  #   environments.remove(environment)
  #
  # @param [Sketchup::Environment] environment
  #   the environment to remove
  #
  # @return [Boolean] true if the environment was removed, false if it was not found
  #
  # @version SketchUp 2025.0
  def remove(environment)
  end

  # The {#remove_observer} method is used to remove an observer from the current
  # object.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   status = environments.remove_observer(observer)
  #
  # @return [Boolean] true if successful, false if unsuccessful.
  #
  # @version SketchUp 2025.0
  def remove_observer(arg)
  end

  # The {#size} method retrieves the number of environments in the
  # {Sketchup::Environments}.
  #
  # @example
  #   environments = Sketchup.active_model.environments
  #   number = environments.size
  #
  # @return [Integer] the number of environments
  #
  # @version SketchUp 2025.0
  def size
  end
  alias_method :length, :size

end

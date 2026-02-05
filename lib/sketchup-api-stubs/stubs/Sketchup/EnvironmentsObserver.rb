# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to {Sketchup::Environment} events.
#
# @abstract To implement this observer, create a Ruby class of this type,
#   override the desired methods, and add an instance of the observer to the
#   {Sketchup::Environment} object.
#
# @example
#   class MyEnvironmentsObserver < Sketchup::EnvironmentsObserver
#     def onEnvironmentChange(environments, environment)
#        puts "onEnvironmentChange: #{environment}"
#     end
#   end
#
#   Sketchup.active_model.environments.add_observer(MyEnvironmentsObserver.new)
#
# @see Sketchup::Environments#add_observer
#
# @version SketchUp 2025.0
class Sketchup::EnvironmentsObserver

  # Instance Methods

  # The {#onEnvironmentAdd} method is called whenever an environment is added to the
  # {Sketchup::Environments}.
  #
  # @example
  #   class MyEnvironmentsObserver < Sketchup::EnvironmentsObserver
  #     def onEnvironmentAdd(environments, environment)
  #       puts "onEnvironmentAdd: #{environment}"
  #     end
  #   end
  #
  #   Sketchup.active_model.environments.add_observer(MyEnvironmentsObserver.new)
  #
  # @param [Sketchup::Environments] environments
  #
  # @param [Sketchup::Environment] environment
  #
  # @return [nil]
  #
  # @version SketchUp 2025.0
  def onEnvironmentAdd(environments, environment)
  end

  # The {#onEnvironmentChange} method is called whenever the environment properties
  # are changed.
  #
  # @example
  #   class MyEnvironmentsObserver < Sketchup::EnvironmentsObserver
  #     def onEnvironmentChange(environments, environment)
  #       puts "onEnvironmentChange: #{environment}"
  #     end
  #   end
  #
  #   Sketchup.active_model.environments.add_observer(MyEnvironmentsObserver.new)
  #
  # @param [Sketchup::Environments] environments
  #
  # @param [Sketchup::Environment] environment
  #
  # @return [nil]
  #
  # @version SketchUp 2025.0
  def onEnvironmentChange(environments, environment)
  end

  # The {#onEnvironmentRemove} method is called whenever an environment is removed from the
  # {Sketchup::Environments}.
  #
  # @example
  #   class MyEnvironmentsObserver < Sketchup::EnvironmentsObserver
  #     def onEnvironmentRemove(environments, environment)
  #       puts "onEnvironmentRemove: #{environment}"
  #     end
  #   end
  #
  #   Sketchup.active_model.environments.add_observer(MyEnvironmentsObserver.new)
  #
  # @param [Sketchup::Environments] environments
  #
  # @param [Sketchup::Environment] environment
  #
  # @return [nil]
  #
  # @version SketchUp 2025.0
  def onEnvironmentRemove(environments, environment)
  end

  # The {#onEnvironmentSetCurrent} method is called whenever the current environment is changed.
  #
  # @example
  #   class MyEnvironmentsObserver < Sketchup::EnvironmentsObserver
  #     def onEnvironmentSetCurrent(environments, environment)
  #       puts "onEnvironmentSetCurrent: #{environment}"
  #     end
  #   end
  #
  #   Sketchup.active_model.environments.add_observer(MyEnvironmentsObserver.new)
  #
  # @param [Sketchup::Environments] environments
  #
  # @param [Sketchup::Environment] environment
  #
  # @return [nil]
  #
  # @version SketchUp 2025.0
  def onEnvironmentSetCurrent(environments, environment)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to operations provider
# events. What this means is that you can watch as the user changes SketchUp
# options and react to them. The following {Sketchup::OptionsProviders} are
# defined in the API:
#
# - <code>"UnitsOptions"</code>
# - <code>"PrintOptions"</code>
# - <code>"PageOptions"</code>
# - <code>"SlideshowOptions"</code>
# - <code>"NamedOptions"</code>
#
# Each of these has a list of specific options that the user can set. See the
# {Sketchup::OptionsManager} and {Sketchup::OptionsProvider} classes for more
# details.
#
# To implement this observer, create a Ruby class of this type,
# override the desired methods, and add an instance of the observer to the
# objects of interests.
#
# @example
#   class MyOptionsProviderObserver < Sketchup::OptionsProviderObserver
#     def onOptionsProviderChanged(provider, name)
#       puts "onOptionsProviderChanged: #{name}"
#     end
#   end
#
#   # Detect when the end user changes their units settings.
#   options_provider = Sketchup.active_model.options["UnitsOptions"]
#   options_provider.add_observer(MyOptionsProviderObserver.new)
#
# @version SketchUp 6.0
class Sketchup::OptionsProviderObserver

  # Instance Methods

  # The {#onOptionsProviderChanged} method is invoked when a property of an
  # {Sketchup::OptionsProvider} changes.
  #
  # @example
  #   def onOptionsProviderChanged(provider, name)
  #     puts "onOptionsProviderChanged: #{name}"
  #   end
  #
  # @param [Sketchup::OptionsProvider] provider
  #
  # @param [String] name
  #   The name of the specific option that was changed.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onOptionsProviderChanged(provider, name)
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

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

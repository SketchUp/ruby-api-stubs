# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# An overlay added to a model is invalidated once it's removed from the model.
# It cannot be re-added or added to another model. Create another unique
# instance for that.
#
# Contains the registered overlays for a model along with methods to manage
# them.
#
# A model can not have multiple overlays with the same id.
#
# @api Overlays
#
# @example
#   Sketchup.active_model.overlays.each { |overlay|
#     puts "#{overlay.name} (#{overlay.overlay_id}) Enabled: #{overlay.enabled?}"
#   }
#
# @see Sketchup::Overlay
#   Documentation for overlays for more details.
#
# @version SketchUp 2023.0
class Sketchup::OverlaysManager

  # Includes

  include Enumerable

  # Instance Methods

  #
  # @api Overlays
  #
  # @example
  #   overlay = Sketchup.active_model.overlays[0]
  #
  # @return [Sketchup::Overlay]
  #
  # @version SketchUp 2023.0
  def [](index)
  end
  alias_method :at, :[]

  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #   end
  #
  #   overlay = ExampleOverlay.new
  #   Sketchup.active_model.overlays.add(overlay)
  #
  # @raise [ArgumentError] If the overlay is already added to a model.
  #
  # @return [Boolean] +false+ if an overlay with the same id already exists.
  #
  # @version SketchUp 2023.0
  def add(service)
  end

  #
  # @api Overlays
  #
  # @example
  #   Sketchup.active_model.overlays.each { |overlay|
  #     puts "#{overlay.name} (#{overlay.overlay_id}) Enabled: #{overlay.enabled?}"
  #   }
  #
  # @return [nil]
  #
  # @version SketchUp 2023.0
  #
  # @yieldparam [Sketchup::Overlay] overlay
  def each
  end

  #
  # @api Overlays
  #
  # @example
  #   class ExampleOverlay < Sketchup::Overlay
  #     def initialize
  #       super('example_inc.my_overlay', 'Example Overlay')
  #     end
  #   end
  #
  #   overlay = ExampleOverlay.new
  #   Sketchup.active_model.overlays.add(overlay)
  #
  #   Sketchup.active_model.overlays.remove(overlay)
  #
  # @return [Boolean]
  #
  # @version SketchUp 2023.0
  def remove(service)
  end

  #
  # @api Overlays
  #
  # @example
  #   num_overlays = Sketchup.active_model.overlays.size
  #
  # @return [Integer]
  #
  # @version SketchUp 2023.0
  def size
  end
  alias_method :length, :size

end

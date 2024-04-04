# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# This provides a way for SketchUp to customize a line style and be set on a
# layer.
#
# @version SketchUp 2019
class Sketchup::LineStyle < Sketchup::Entity

  # Instance Methods

  # The {#name} method retrieves the name of the line style object.
  #
  # @example
  #   line_style = Sketchup.active_model.line_styles["Solid Basic"]
  #   line_style.name # returns "Solid Basic"
  #
  # @return [String] The name of the line style.
  #
  # @version SketchUp 2019
  def name
  end

end

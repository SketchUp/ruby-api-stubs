# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

#
# @api InputBox
#
# @todo Complete documentation.
#
# @version SketchUp 2027.0
class UI::InputBox

  # Instance Methods

  #
  # @api InputBox
  #
  # @param [Symbol] id
  #   Unique identified for the input field.
  #
  # @param [String] label
  #
  # @param [Boolean] default
  #
  # @return [nil]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def add_checkbox(id:, label:, default: false)
  end

  #
  # @api InputBox
  #
  # @param [String] description
  #
  # @return [nil]
  #
  # @version SketchUp 2027.0
  def add_description(description)
  end

  #
  # @api InputBox
  #
  # @param [Symbol] id
  #   Unique identified for the input field.
  #
  # @param [String] label
  #
  # @param [Array<String>] list
  #   List of values to select from.
  #
  # @param [Integer] type
  #   TODO(thomthom): Needed?
  #
  # @param [String] default
  #
  # @return [nil]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def add_dropdown(id:, label:, list: [], type: UI::InputBox::ValueType::STRING, default: "")
  end

  #
  # @api InputBox
  #
  # @param [Sketchup::ImageRep] image_rep
  #
  # @return [nil]
  #
  # @version SketchUp 2027.0
  def add_image(image_rep)
  end

  #
  # @api InputBox
  #
  # @param [Symbol] id
  #   Unique identified for the input field.
  #
  # @param [String] label
  #
  # @param [Array<String>] list
  #   List of values to select from.
  #
  # @param [Integer] type
  #   TODO(thomthom): Relevant?
  #
  # @param [String] default
  #
  # @return [nil]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def add_listbox(id:, label:, list: [], type: UI::InputBox::ValueType::STRING, default: "")
  end

  #
  # @api InputBox
  #
  # @param [String] label
  #
  # @return [nil]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def add_separator(label: "")
  end

  #
  # @api InputBox
  #
  # @param [Symbol] id
  #   Unique identified for the input field.
  #
  # @param [String] label
  #
  # @param [Integer] type
  #   One of {UI::InputBox::ValueType::INTEGER} or
  #   {UI::InputBox::ValueType::FLOAT}.
  #
  # @param [Range] range
  #   Valid numeric ranges for the input field.
  #
  # @param [Integer, Float] step
  #
  # @param [Integer, Float] default
  #
  # @return [nil]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def add_slider(id:, label:, range:, step: nil, type: ValueType::INTEGER, default: 0)
  end

  #
  # @api InputBox
  #
  # @param [Symbol] id
  #   Unique identified for the input field.
  #
  # @param [String] label
  #
  # @param [Integer] type
  #   One of {UI::InputBox::ValueType}.
  #
  # @param [Range] range
  #   Valid numeric ranges for the input field. Only valid
  #   if the +type+ is {ValueType::INTEGER} or {ValueType::FLOAT}.
  #
  # @param [String, Integer, Float, Length] default
  #
  # @return [nil]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def add_textbox(id:, label:, range: nil, type: ValueType::STRING, default: "")
  end

  #
  # @api InputBox
  #
  # @param [String] title
  #
  # @param [String] accept_label
  #   Default value is localization of +"&Accept"+.
  #
  # @param [String] cancel_label
  #   Default value is localization of +"&Cancel"+.
  #
  # @version SketchUp 2027.0
  def initialize(title:, accept_label: "&Accept", cancel_label: "&Cancel")
  end

  #
  # @api InputBox
  #
  # @return [Hash{Symbol => String, Integer, Float, Length, Boolean}]
  #
  # @todo Complete documentation.
  #
  # @version SketchUp 2027.0
  def prompt
  end

end

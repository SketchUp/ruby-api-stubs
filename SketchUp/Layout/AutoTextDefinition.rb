# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# References an auto text definition. Some auto text definitions are mandatory.
# Mandatory auto text definitions may not be removed, added, or modified.
#
# A mandatory {Layout::AutoTextDefinition} is one of the following types:
# [+Layout::AutoTextDefinition::TYPE_MODEL_GROUP_NAME+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_INSTANCE_NAME+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_DEFINITION_NAME+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_DESCRIPTION+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_VOLUME+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_FACE_AREA+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_EDGE_LENGTH+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_COORDINATES+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_DYNAMIC_COMPONENT_ATTRIBUTE+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_CLASSIFIER_ATTRIBUTE+]
#
# @example
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   definitions = doc.auto_text_definitions
#   definitions.each { |auto_text|
#     definitions.remove(auto_text) unless auto_text.mandatory?
#   }
#
# @version LayOut 2018
class Layout::AutoTextDefinition

  # Constants

  NUMBER_STYLE_ARABIC = nil # Stub value.
  NUMBER_STYLE_ARABIC_PADDED = nil # Stub value.
  NUMBER_STYLE_LC_ALPHA = nil # Stub value.
  NUMBER_STYLE_LC_ROMAN = nil # Stub value.
  NUMBER_STYLE_UC_ALPHA = nil # Stub value.
  NUMBER_STYLE_UC_ROMAN = nil # Stub value.

  TYPE_CUSTOM_TEXT = nil # Stub value.
  TYPE_DATE_CREATED = nil # Stub value.
  TYPE_DATE_CURRENT = nil # Stub value.
  TYPE_DATE_MODIFIED = nil # Stub value.
  TYPE_DATE_PUBLISHED = nil # Stub value.
  TYPE_FILE = nil # Stub value.
  TYPE_MODEL_CLASSIFIER_ATTRIBUTE = nil # Stub value.
  TYPE_MODEL_COMPONENT_DEFINITION_ATTRIBUTE = nil # Stub value.
  TYPE_MODEL_COMPONENT_DEFINITION_NAME = nil # Stub value.
  TYPE_MODEL_COMPONENT_DESCRIPTION = nil # Stub value.
  TYPE_MODEL_COMPONENT_INSTANCE_ATTRIBUTE = nil # Stub value.
  TYPE_MODEL_COMPONENT_INSTANCE_NAME = nil # Stub value.
  TYPE_MODEL_COORDINATES = nil # Stub value.
  TYPE_MODEL_DYNAMIC_COMPONENT_ATTRIBUTE = nil # Stub value.
  TYPE_MODEL_EDGE_LENGTH = nil # Stub value.
  TYPE_MODEL_FACE_AREA = nil # Stub value.
  TYPE_MODEL_GROUP_NAME = nil # Stub value.
  TYPE_MODEL_VOLUME = nil # Stub value.
  TYPE_PAGE_NAME = nil # Stub value.
  TYPE_PAGE_NUMBER = nil # Stub value.

  # Instance Methods

  # The {#==} method checks to see if the two {Layout::AutoTextDefinition}s are
  # equal. This checks whether the Ruby Objects are pointing to the same internal
  # object.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.first == defs.last
  #
  # @param [Layout::AutoTextDefinition] other
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def ==(other)
  end

  # The {#custom_text} method returns the custom text of the
  # +Layout::AutoTextDefinition::TYPE_CUSTOM_TEXT+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   text = definitions.last.custom_text
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_CUSTOM_TEXT+
  #
  # @return [String]
  #
  # @version LayOut 2018
  def custom_text
  end

  # The {#custom_text} method sets the custom text of the
  # +Layout::AutoTextDefinition::TYPE_CUSTOM_TEXT+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.last.custom_text = "Boop"
  #
  # @param [String] custom_text
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_CUSTOM_TEXT+
  #
  # @version LayOut 2018
  def custom_text=(custom_text)
  end

  # The {#date_format} method returns the date format of a
  # +Layout::AutoTextDefinition::TYPE_DATE_*+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   date_format = definitions.last.date_format
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_DATE_*+.
  #
  # @return [String]
  #
  # @version LayOut 2018
  def date_format
  end

  # The {#date_format} method sets the date format of a
  # +Layout::AutoTextDefinition::TYPE_DATE_*+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.last.date_format = "mmddyyyy"
  #
  # @param [String] date_format
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_DATE_*+.
  #
  # @version LayOut 2018
  def date_format=(date_format)
  end

  # The {#display_file_extension=} method sets whether the
  # +Layout::AutoTextDefinition::TYPE_FILE+ {Layout::AutoTextDefinition} displays
  # the file extension.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.last.display_file_extension = false
  #
  # @param [Boolean] display_file_extension
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_FILE+.
  #
  # @version LayOut 2018
  def display_file_extension=(display_file_extension)
  end

  # The {#display_file_extension?} method returns whether the
  # +Layout::AutoTextDefinition::TYPE_FILE+ {Layout::AutoTextDefinition} displays
  # the file extension.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   show_file_extension = definitions.last.display_file_extension?
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_FILE+.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def display_file_extension?
  end

  # The {#display_full_path=} method sets whether the
  # +Layout::AutoTextDefinition::TYPE_FILE+ {Layout::AutoTextDefinition} displays
  # the full path.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.last.display_full_path = true
  #
  # @param [Boolean] display_full_path
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_FILE+.
  #
  # @version LayOut 2018
  def display_full_path=(display_full_path)
  end

  # The {#display_full_path?} method returns whether the
  # +Layout::AutoTextDefinition::TYPE_FILE+ {Layout::AutoTextDefinition} displays
  # the full path.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   is_full_path = definitions.last.display_full_path?
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_FILE+.
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def display_full_path?
  end

  # The {#mandatory?} method returns whether the {Layout::AutoTextDefinition} is
  # mandatory or not.
  #
  # A mandatory {Layout::AutoTextDefinition} is one of the following types:
  # [+Layout::AutoTextDefinition::TYPE_MODEL_GROUP_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_INSTANCE_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_DEFINITION_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_DESCRIPTION+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_VOLUME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_FACE_AREA+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_EDGE_LENGTH+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COORDINATES+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_DYNAMIC_COMPONENT_ATTRIBUTE+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_CLASSIFIER_ATTRIBUTE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.each { |auto_text|
  #     definitions.remove(auto_text) unless auto_text.mandatory?
  #   }
  #
  # @return [Boolean]
  #
  # @return [Boolean]
  #
  # @version LayOut 2018
  def mandatory?
  end

  # The {#name} method returns the name of the {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   name = definitions.first.name
  #
  # @return [String]
  #
  # @version LayOut 2018
  def name
  end

  # The {#name=} method sets the name of the {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.last.name = "New Name"
  #
  # @param [String] name
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition} is a mandatory type
  #
  # @raise [ArgumentError] if name is an empty string
  #
  # @raise [ArgumentError] if name matches an existing
  #   {Layout::AutoTextDefinition}
  #
  # @version LayOut 2018
  def name=(name)
  end

  # The {#page_number_style} method returns the numbering style for the
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ {Layout::AutoTextDefinition}.
  #
  # The page numbering style can be one of the following values:
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC_PADDED+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ROMAN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   number_style = definitions.last.page_number_style
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+.
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def page_number_style
  end

  # The {#page_number_style=} method sets the numbering style for the
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ {Layout::AutoTextDefinition}.
  #
  # The page numbering style can be one of the following values:
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC_PADDED+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ROMAN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.last.page_number_style = Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN
  #
  # @param [Integer] number_style
  #
  # @raise [ArgumentError] if number_style is not a valid page numbering style
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+.
  #
  # @version LayOut 2018
  def page_number_style=(number_style)
  end

  # The {#start_index} method returns the start index for the
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   start_index = definitions.first.start_index
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+.
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def start_index
  end

  # The {#start_index} method returns the start index for the
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   definitions.first.start_index = 3
  #
  # @param [Integer] index
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+.
  #
  # @version LayOut 2018
  def start_index=(index)
  end

  # The {#tag} method returns the tag string of the {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   tag = definitions.first.tag
  #
  # @return [String]
  #
  # @version LayOut 2018
  def tag
  end

  # The {#type} method returns the type of the {Layout::AutoTextDefinition}.
  #
  # The type can be one of the following values:
  # [+Layout::AutoTextDefinition::TYPE_FILE+]
  # [+Layout::AutoTextDefinition::TYPE_PAGE_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+]
  # [+Layout::AutoTextDefinition::TYPE_CUSTOM_TEXT+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_CURRENT+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_CREATED+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_MODIFIED+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_PUBLISHED+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_GROUP_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_INSTANCE_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_DEFINITION_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COMPONENT_DESCRIPTION+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_VOLUME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_FACE_AREA+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_EDGE_LENGTH+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_COORDINATES+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_DYNAMIC_COMPONENT_ATTRIBUTE+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_CLASSIFIER_ATTRIBUTE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   type = definitions.first.type
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def type
  end

end

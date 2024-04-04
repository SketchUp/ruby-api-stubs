# Copyright:: Copyright 2024 Trimble Inc.
# License:: The MIT License (MIT)

# References an auto-text definition. Some auto-text definitions are mandatory.
# Mandatory auto-text definitions may not be removed, added, or modified.
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
# [+Layout::AutoTextDefinition::TYPE_MODEL_SCENE_NAME+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_SCENE_DESCRIPTION+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_SCALE+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_SECTION_NAME+]
# [+Layout::AutoTextDefinition::TYPE_MODEL_SECTION_SYMBOL+]
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

  SEQUENCE_TYPE_PER_DOCUMENT = nil # Stub value.
  SEQUENCE_TYPE_PER_PAGE = nil # Stub value.

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
  TYPE_MODEL_RATIO = nil # Stub value.
  TYPE_MODEL_SCALE = nil # Stub value.
  TYPE_MODEL_SCENE_DESCRIPTION = nil # Stub value.
  TYPE_MODEL_SCENE_NAME = nil # Stub value.
  TYPE_MODEL_SECTION_NAME = nil # Stub value.
  TYPE_MODEL_SECTION_SYMBOL = nil # Stub value.
  TYPE_MODEL_VOLUME = nil # Stub value.
  TYPE_PAGE_COUNT = nil # Stub value.
  TYPE_PAGE_NAME = nil # Stub value.
  TYPE_PAGE_NUMBER = nil # Stub value.
  TYPE_SEQUENCE = nil # Stub value.

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
  # @raise [TypeError] if +custom_text+ is not a String or convertable to a String.
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
  # @raise [TypeError] if date_format is not a String or convertable to a String.
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
  # @version LayOut 2018
  def display_full_path?
  end

  # The {#end_page} method returns the end page for the
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_count_def =
  #       doc.auto_text_definitions.add("PageCount", Layout::AutoTextDefinition::TYPE_PAGE_COUNT)
  #   # Default end_page value is nil, meaning count to the end of the document
  #   page = page_count_def.end_page
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+.
  #
  # @return [Layout::Page, nil]
  #
  # @version LayOut 2022.0
  def end_page
  end

  # The {#end_page=} method sets the end page for the
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   definitions = doc.auto_text_definitions
  #   page_count_def =
  #       doc.auto_text_definitions.add("PageCount", Layout::AutoTextDefinition::TYPE_PAGE_COUNT)
  #   # Stop the PageCount auto-text at this newly created page instead of at the end of the document
  #   page_count_def.end_page = doc.pages.add("new page")
  #
  # @param [Layout::Page, nil] page
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+.
  #
  # @version LayOut 2022.0
  def end_page=(page)
  end

  # The {#increment} method returns the increment value for
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   # Default sequence increment value is 1
  #   increment = sequence_def.increment
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @return [Integer]
  #
  # @version LayOut 2022.0
  def increment
  end

  # The {#increment=} method sets the increment value for
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   sequence_def.increment = 10
  #
  # @param [Integer] increment
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @version LayOut 2022.0
  def increment=(increment)
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
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SCENE_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SCENE_DESCRIPTION+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SCALE+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SECTION_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SECTION_SYMBOL+]
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
  # @raise [ArgumentError] if name matches an existing
  #   {Layout::AutoTextDefinition}
  #
  # @raise [ArgumentError] if name is an empty string
  #
  # @raise [TypeError] if name is not a String or convertable to a String.
  #
  # @version LayOut 2018
  def name=(name)
  end

  # The {#number_style} method returns the numbering style for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, and
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # The numbering style can be one of the following values:
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC_PADDED+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ROMAN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def = doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   number_style = sequence_def.number_style
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, or
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @return [Integer]
  #
  # @version LayOut 2022.0
  def number_style
  end

  # The {#number_style=} method sets the numbering style for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, and
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # The numbering style can be one of the following values:
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC_PADDED+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ROMAN+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def = doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   sequence_def.number_style = Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN
  #
  # @param [Integer] number_style
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, or
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @raise [ArgumentError] if number_style is not a valid page numbering style
  #
  # @version LayOut 2022.0
  def number_style=(number_style)
  end

  # The {#page_number_style} method returns the numbering style for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ {Layout::AutoTextDefinition}s.
  #
  # The numbering style can be one of the following values:
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC_PADDED+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ROMAN+]
  #
  # @deprecated LayOut 2022.0 This method is deprecated in favor of the more generic {#number_style}
  #   method that also works on +Layout::AutoTextDefintion::TYPE_PAGE_COUNT+ and
  #   +Layout::AutoTextDefintion::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_number_def = doc.auto_text_definitions.add("RomanPageNumbers",
  #     Layout::AutoTextDefinition::TYPE_PAGE_NUMBER) number_style = page_number_def.number_style
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+.
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def page_number_style
  end

  # The {#page_number_style=} method sets the numbering style for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ {Layout::AutoTextDefinition}s.
  #
  # The numbering style can be one of the following values:
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_ARABIC_PADDED+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ALPHA+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN+]
  # [+Layout::AutoTextDefinition::NUMBER_STYLE_LC_ROMAN+]
  #
  # @deprecated LayOut 2022.0 This method is deprecated in favor of the more generic {#number_style=}
  #   method that also works on +Layout::AutoTextDefintion::TYPE_PAGE_COUNT+ and
  #   +Layout::AutoTextDefintion::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_number_def = doc.auto_text_definitions.add("RomanPageNumbers",
  #     Layout::AutoTextDefinition::TYPE_PAGE_NUMBER)
  #   page_number_def.page_number_style = Layout::AutoTextDefinition::NUMBER_STYLE_UC_ROMAN
  #
  # @param [Integer] number_style
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+.
  #
  # @raise [ArgumentError] if +number_style+ is not a valid page numbering style
  #
  # @version LayOut 2018
  def page_number_style=(number_style)
  end

  # The {#renumber} method iterates through all uses of the
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition} and eliminates gaps and
  # duplicates in the sequence.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   sequence_def.renumber
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @version LayOut 2022.0
  def renumber
  end

  # The {#sequence_format} method returns the sequence format of a
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   # Default sequence format is ###, meaning entirely replace the string with the sequence number
  #   sequence = sequence_def.sequence
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @return [String]
  #
  # @version LayOut 2022.0
  def sequence_format
  end

  # The {#sequence_format=} method sets the sequence format of a
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   sequence_def.sequence = "Figure ###"
  #
  # @param [String] sequence_format
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @raise [TypeError] if +sequence_format+ is not a String or convertable to a String.
  #
  # @version LayOut 2022.0
  def sequence_format=(sequence_format)
  end

  # The {#sequence_type} method returns how the +Layout::AutoTextDefinition::TYPE_SEQUENCE+
  # {Layout::AutoTextDefinition} operates over multiple pages in a document.
  #
  # The sequence type can be one of the following values:
  # [+Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_DOCUMENT+]
  # [+Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_PAGE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   type = sequence_def.sequence_type
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @return [Integer]
  #
  # @version LayOut 2023.0
  def sequence_type
  end

  # The {#sequence_type=} method sets how the +Layout::AutoTextDefinition::TYPE_SEQUENCE+
  # {Layout::AutoTextDefinition} operates over multiple pages in a document.
  #
  # The sequence type can be one of the following values:
  # [+Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_DOCUMENT+]
  # [+Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_PAGE+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def =
  #       doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   sequence_def.sequence_type = Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_PAGE
  #
  # @param [Integer] sequence_type
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @raise [ArgumentError] if sequence_type is not a valid sequence type
  #
  # @version LayOut 2023.0
  def sequence_type=(sequence_type)
  end

  # The {#start_index} method returns the start index for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, and
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def = doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   start_index = sequence_def.start_index
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, or
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def start_index
  end

  # The {#start_index=} method sets the start index for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, and
  # +Layout::AutoTextDefinition::TYPE_SEQUENCE+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   sequence_def = doc.auto_text_definitions.add("Seq1", Layout::AutoTextDefinition::TYPE_SEQUENCE)
  #   sequence_def.start_index = 10
  #
  # @param [Integer] index
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+,
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+, or
  #   +Layout::AutoTextDefinition::TYPE_SEQUENCE+.
  #
  # @version LayOut 2018
  def start_index=(index)
  end

  # The {#start_page} method returns the start page for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ and
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_number_def =
  #       doc.auto_text_definitions.add("PageNumber", Layout::AutoTextDefinition::TYPE_PAGE_NUMBER)
  #   # Default start page is the first page of the document. However we continue to start at that
  #   # page even if that page is moved.
  #   page = page_number_def.start_page
  #   p page == doc.pages[0]
  #   doc.pages.add('new page')
  #   doc.pages.reorder(doc.pages[0], 1)
  #   p page == doc.pages[1]
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ or
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+.
  #
  # @return [Layout::Page]
  #
  # @version LayOut 2022.0
  def start_page
  end

  # The {#start_page=} method sets the start page for
  # +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ and
  # +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+ {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   page_number_def =
  #       doc.auto_text_definitions.add("PageNumber", Layout::AutoTextDefinition::TYPE_PAGE_NUMBER)
  #   # Start the PageCount auto-text on the new page
  #   page_number_def.start_page = doc.pages.add('new page')
  #
  # @param [Layout::Page] page
  #
  # @raise [ArgumentError] if the {Layout::AutoTextDefinition}'s type is not
  #   +Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+ or
  #   +Layout::AutoTextDefinition::TYPE_PAGE_COUNT+.
  #
  # @version LayOut 2022.0
  def start_page=(page)
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
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SCENE_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SCENE_DESCRIPTION+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SCALE+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SECTION_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_MODEL_SECTION_SYMBOL+]
  # [+Layout::AutoTextDefinition::TYPE_PAGE_COUNT+]
  # [+Layout::AutoTextDefinition::TYPE_SEQUENCE+]
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

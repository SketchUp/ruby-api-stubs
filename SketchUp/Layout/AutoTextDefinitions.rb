# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The AutoTextDefinitions class is a container class for all
# {Layout::AutoTextDefinition}s in a {Layout::Document}.
#
# @example
#   # Grab a handle to an existing LayOut document's auto text definitions.
#   doc = Layout::Document.open("C:/path/to/document.layout")
#   auto_texts = doc.auto_text_definitions
#
#   # From here, we can add auto text definitions to or remove them from the
#   # document.
#   auto_texts.add("PageNum", Layout::AutoTextDefinition::TYPE_PAGE_NUM)
#   auto_texts.remove("PageNum")
#
# @version LayOut 2018
class Layout::AutoTextDefinitions

  # Includes

  include Enumerable

  # Instance Methods

  # The {#[]} method returns a value from the array of
  # {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   auto_texts = doc.auto_text_definitions
  #   auto_text = auto_texts[2]
  #
  # @overload [](index)
  #
  #   @param [Integer] index The index of the {Layout::AutoTextDefinition} to
  #     return
  #   @return [Layout::AutoTextDefinition]
  #
  # @overload [](name)
  #
  #   @param [String] name The name of the {Layout::AutoTextDefinition} to
  #     return
  #   @return [Layout::AutoTextDefinition]
  #
  # @raise [IndexError] if index is out of range
  #
  # @version LayOut 2018
  def [](index)
  end

  # The {#add} method adds an {Layout::AutoTextDefinition} to the
  # {Layout::Document}.
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
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   doc.auto_text_definitions.add("current date",
  #      Layout::AutoTextDefinition::TYPE_DATE_CURRENT);
  #
  # @param [String] name
  #
  # @param [Integer] type
  #
  # @raise [ArgumentError] if type is not a valid auto text type, or is mandatory.
  #
  # @return [Layout::AutoTextDefinition]
  #
  # @version LayOut 2018
  def add(name, type)
  end

  # The {#each} method iterates through all of the {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   auto_texts = doc.auto_text_definitions
  #   auto_texts.each { |auto_text|
  #     puts auto_text.name
  #   }
  #
  # @version LayOut 2018
  #
  # @yieldparam [Layout::AutoTextDefinition] auto_text
  def each
  end

  # The {#index} method returns the index of the {Layout::AutoTextDefinition},
  # or +nil+ if it doesn't exist in the {Layout::Document}.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   auto_texts = doc.auto_text_definitions
  #   index = auto_texts.index(definitions.first) # Returns 0
  #
  # @overload index(auto_text)
  #
  #   @param [Layout::AutoTextDefinition] auto_text
  #   @return [Integer, nil]
  #
  # @overload index(name)
  #
  #   @param [String] name The name of the {Layout::AutoTextDefinition} to get
  #     the index of
  #   @return [Integer, nil]
  #
  # @version LayOut 2018
  def index(auto_text)
  end

  # The {#length} method returns the number of {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   auto_texts = doc.auto_text_definitions
  #   num_auto_texts = auto_texts.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def length
  end

  # The {#remove} method removes an {Layout::AutoTextDefinition} from the
  # {Layout::Document}.
  #
  # The {Layout::AutoTextDefinition} must be one of the following types:
  # [+Layout::AutoTextDefinition::TYPE_FILE+]
  # [+Layout::AutoTextDefinition::TYPE_PAGE_NAME+]
  # [+Layout::AutoTextDefinition::TYPE_PAGE_NUMBER+]
  # [+Layout::AutoTextDefinition::TYPE_CUSTOM_TEXT+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_CURRENT+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_CREATED+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_MODIFIED+]
  # [+Layout::AutoTextDefinition::TYPE_DATE_PUBLISHED+]
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   auto_texts = doc.auto_text_definitions
  #   auto_texts.remove(auto_texts[10], true)
  #
  # @overload remove(definition, convert_tags_to_text = true)
  #
  #   @param [Layout::AutoTextDefinition] definition
  #   @param [Boolean] convert_tags_to_text
  #
  # @overload remove(name, convert_tags_to_text = true)
  #
  #   @param [String] name The name of the {Layout::AutoTextDefinition} to remove
  #   @param [Boolean] convert_tags_to_text
  #
  # @overload remove(index, convert_tags_to_text = true)
  #
  #   @param [Integer] index The index of the {Layout::AutoTextDefinition} to
  #     remove
  #   @param [Boolean] convert_tags_to_text
  #
  # @raise [ArgumentError] if the definition that is being removed is mandatory
  #
  # @version LayOut 2018
  def remove(*args)
  end

  # The {#length} method returns the number of {Layout::AutoTextDefinition}s.
  #
  # @example
  #   doc = Layout::Document.open("C:/path/to/document.layout")
  #   auto_texts = doc.auto_text_definitions
  #   num_auto_texts = auto_texts.length
  #
  # @return [Integer]
  #
  # @version LayOut 2018
  def size
  end

end

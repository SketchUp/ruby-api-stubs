# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The LayOut module is the root of the LayOut Ruby API. Many of the classes in
# the API are implemented beneath this module.
#
# @example
#   # Open an existing LayOut document.
#   doc = Layout::Document.open("C:/path/to/document.layout")
#
#   # Grab other handles to commonly used collections inside the model.
#   layers = doc.layers
#   pages = doc.pages
#   entities = doc.shared_entities
#
#   # Now that we have our handles, we can start pulling objects and making
#   # method calls that are useful.
#   first_entity = entities.first
#
#   number_pages = pages.length
#
# @version LayOut 2018
module Layout

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The +Sketchup::Licensing+ module contains methods for
# extensions purchased from Extension Warehouse to check their licensing status.
#
# It is advised to place these calls inside encrypted Ruby (.rbe) files. This
# API is also exposed via the SketchUp C API. Extensions that already use
# native code should prefer using the native API, which should be more secure
# than their Ruby API counterparts.
#
# For more details, see:
# {Developer Center Licensing Tutorial}[https://extensions.sketchup.com/en/developer_center/tutorial_licensing]
#
# @version SketchUp 2015
module Sketchup::Licensing

  # Constants

  EXPIRED = nil # Stub value.
  LICENSED = nil # Stub value.
  NOT_LICENSED = nil # Stub value.
  TRIAL = nil # Stub value.
  TRIAL_EXPIRED = nil # Stub value.

  # Class Methods

  # Acquires a license for a given extension.
  #
  # @example
  #   ext_id = "4e215280-dd23-40c4-babb-b8a8dd29d5ee"
  #   ext_lic = Sketchup::Licensing.get_extension_license(ext_id)
  #   if ext_lic.licensed?
  #      puts "Extension is licensed."
  #   end
  #
  # @param [String] extension_id
  #   The Extension Warehouse UUID for the desired extension.
  #
  # @return [ExtensionLicense] An object representing
  #   licensing state for the extension. Do not store this object, retrieve
  #   it again when needed since licensing state may have changed.
  #
  # @version SketchUp 2015
  def self.get_extension_license(extension_id)
  end

end

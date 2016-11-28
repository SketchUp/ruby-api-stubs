# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)

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
  # @param extension_id
  #   String - The Extension Warehouse UUID for the extension.
  #
  # @return ExtensionLicense - an object representing licensing
  #   state for the extension. Do not store this object,
  #   retrieve it again when needed since licensing state may
  #   have changed.
  #
  # @version SketchUp 2015
  def self.get_extension_license(extension_id)
  end

end

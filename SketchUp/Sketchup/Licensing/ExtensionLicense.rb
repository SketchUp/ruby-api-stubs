# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Sketchup::Licensing::ExtensionLicense class is used to store extension
# license information. An instance of this class is returned by
# Sketchup::Licensing.get_extension_license. Note that this is a temporary
# object representing the extension licensing state for the moment it was
# returned. It will not reflect any licensing state changes that may occur.
#
# @version SketchUp 2015
class Sketchup::Licensing::ExtensionLicense

  # Instance Methods

  # The days_remaining method is used to get the number of days remaining until
  # license expiration.
  #
  # @example
  #   ext_id = "4e215280-dd23-40c4-babb-b8a8dd29d5ee"
  #   ext_lic = Sketchup::Licensing.get_extension_license(ext_id)
  #   if ext_lic.days_remaining != 0
  #      puts "The license will expire in #{ext_lic.days_remaining} days."
  #   end
  #
  # @return Integer - Number of days until license expiration. Zero
  #   if a permanent license or not licensed.
  #
  # @version SketchUp 2015
  def days_remaining
  end

  # The error_description method is used to obtain error information in case of
  # failure to acquire a license. This is meant to aid in debugging only.
  # Extensions should not rely on any exact error description.
  #
  # @example
  #   ext_id = "4e215280-dd23-40c4-babb-b8a8dd29d5ee"
  #   ext_lic = Sketchup::Licensing.get_extension_license(ext_id)
  #   if !ext_lic.licensed?
  #      puts ext_lic.error_description
  #   end
  #
  # @return String - error description.
  #
  # @version SketchUp 2015
  def error_description
  end

  # The licensed? method is used to decide whether the extension is licensed to
  # run or not.
  #
  # @example
  #   ext_id = "4e215280-dd23-40c4-babb-b8a8dd29d5ee"
  #   ext_lic = Sketchup::Licensing.get_extension_license(ext_id)
  #   if ext_lic.licensed?
  #      puts "Extension is licensed."
  #   end
  #
  # @return Boolean - true if the extension is allowed to run, false
  #   if it is not licensed and should quit.
  #
  # @return [Boolean]
  #
  # @version SketchUp 2015
  def licensed?
  end

  # The state method returns a constant indicating the specific licensing state.
  # These should be used for informational purposes only and not to decide if
  # the extension is licensed to run. For that, please use the licensed? method.
  #
  # @example
  #   ext_id = "4e215280-dd23-40c4-babb-b8a8dd29d5ee"
  #   ext_lic = Sketchup::Licensing.get_extension_license(ext_id)
  #   if ext_lic.state == Sketchup::Licensing::TRIAL_EXPIRED
  #      puts "Trial period has expired."
  #   end
  #
  # @return Integer - One of Sketchup::Licensing::LICENSED,
  #   Sketchup::Licensing::EXPIRED, Sketchup::Licensing::TRIAL,
  #   Sketchup::Licensing::TRIAL_EXPIRED,
  #   Sketchup::Licensing::NOT_LICENSED
  #
  # @version SketchUp 2015
  def state
  end

end

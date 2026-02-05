# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# The main purpose of the +LoadHandler+ interface is to be used as an optional second parameter of
# the {Sketchup::DefinitionList#load_from_url} method.
#
# Its methods that require implementation handle the process of downloading and managing the
# state of the load operation, including progress updates and error handling.
#
# @abstract Implement the methods described in this class to create a tool.
#   You can not sub-class this class because it is not defined by the API.
#
# @version SketchUp 6.0
class Sketchup::LoadHandler

  # Instance Methods

  # This method is called when the download is canceled by the user.
  #
  # @example
  #   def cancelled?
  #     # You could, for example, show a messagebox after X seconds asking if the
  #     # user wants to cancel the download. If this method returns true, then
  #     # the download cancels.
  #     return false
  #   end
  #
  # @return [Boolean]
  def cancelled?
  end

  # This method is called when the download unsuccessfully completes
  #
  # @example
  #   def onFailure(message)
  #     self.error = message
  #     Sketchup::set_status_text('')
  #   end
  #
  # @param [String] message
  #
  # @return [Boolean]
  def onFailure(message)
  end

  # This method is triggered whenever the percent value updates.
  #
  # @example
  #   def onPercentChange(percent)
  #     Sketchup::set_status_text("loading: #{percent.round}%")
  #   end
  #
  # @param [Float] percent
  #
  # @return [nil]
  def onPercentChange(percent)
  end

  # This method is called when the download successfully completes
  #
  # @example
  #   def onSuccess
  #     Sketchup::set_status_text('')
  #   end
  #
  # @return [nil]
  def onSuccess
  end

end

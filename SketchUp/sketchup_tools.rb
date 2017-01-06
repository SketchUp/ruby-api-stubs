# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# The Tools class contains methods to manipulate a collection of SketchUp
# tools. You access this collection by calling the Model.tools method.
#
# @example
#   tools = Sketchup.active_model.tools
#
# @version SketchUp 6.0
class Sketchup::Tools

  # Instance Methods

  # The active_tool_id method is used to retrieve the active tool's id.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   id = tools.active_tool_id
  #
  # @return id - the active tool's id.
  #
  # @version SketchUp 6.0
  def active_tool_id
  end

  # The active_tool_name method is used to retrieve the active tool's name.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   if tools.active_tool_id.equal? 0
  #     puts "Tools collection is empty"
  #   else
  #     name = tools.active_tool_name
  #   end
  #
  # @return name = the active tool's name.
  #
  # @version SketchUp 6.0
  def active_tool_name
  end

  # The add_observer method is used to add an observer to the current object.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   observer = Sketchup::ToolsObserver.new
  #   status = tools.add_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return status - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def add_observer(observer)
  end

  # The model method is used to get the model associated with this tools object.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   model = tools.model
  #
  # @return model - the Model object associated with this tools
  #   collection.
  #
  # @version SketchUp 6.0
  def model
  end

  # The pop_tool method is used to pop the last pushed tool on the tool stack.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   tool = tools.pop_tool
  #
  # @return the last pushed Tool object, if it is a Ruby tool. If a
  #   native tool is active, selects the default native tool
  #   and returns nil.
  #
  # @version SketchUp 6.0
  def pop_tool
  end

  # The push_tool method is used to push (aka activate) a user-defined tool.
  # See the Tool interface for details on creating your own SketchUp tool.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   status = tools.push_tool tool
  #
  # @param tool
  #   A user.
  #
  # @return status - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def push_tool(tool)
  end

  # The remove_observer method is used to remove an observer from the current
  # object.
  #
  # @example
  #   tools = Sketchup.active_model.tools
  #   observer = Sketchup::ToolsObserver.new
  #   tools.add_observer observer
  #   status = tools.remove_observer observer
  #
  # @param observer
  #   An observer.
  #
  # @return true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def remove_observer(observer)
  end

end

# Copyright:: Copyright 2017 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to tool events. To implement
# this observer, create a Ruby class of this type, override the desired
# methods, and add an instance of the observer to the {Sketchup::Tools} object.
#
# Some of the code below mentions +tool_names+ and +tool_ids+. Here is a list
# of the common tool IDs and names:
#
# - +21013+ = 3DTextTool
# - +21065+ = ArcTool
# - +10523+ = CameraDollyTool
# - +10508+ = CameraOrbitTool
# - +10525+ = CameraPanTool
# - +21169+ = PositionCameraTool
# - +10520+ = CameraWalkTool
# - +10509+ = CameraZoomTool
# - +10526+ = CameraZoomWindowTool
# - +21096+ = CircleTool
# - +21013+ = ComponentTool
# - +21126+ = ComponentCSTool
# - +21410+ = DimensionTool
# - +21019+ = EraseTool
# - +21031+ = FreehandTool
# - +21525+ = ExtrudeTool
# - +21126+ = SketchCSTool
# - +21048+ = MoveTool
# - +21024+ = MeasureTool
# - +21100+ = OffsetTool
# - +21074+ = PaintTool
# - +21013+ = PasteTool
# - +21095+ = PolyTool
# - +21515+ = PositionTextureTool
# - +21041+ = PushPullTool
# - +21057+ = ProtractorTool
# - +21094+ = RectangleTool
# - +21129+ = RotateTool
# - +21236+ = ScaleTool
# - +21022+ = SelectionTool
# - +21337+ = SectionPlaneTool
# - +21020+ = SketchTool
# - +21405+ = TextTool
#
# @example
#   # This is an example of an observer that watches tool interactions.
#   class MyToolsObserver < Sketchup::ToolsObserver
#     def onActiveToolChanged(tools, tool_name, tool_id)
#       puts "onActiveToolChanged: #{tool_name}"
#     end
#   end
#
#   # Attach the observer.
#   Sketchup.active_model.tools.add_observer(MyToolsObserver.new)
#
# @version SketchUp 6.0
class Sketchup::ToolsObserver

  # Instance Methods

  # Once you subclass {Sketchup::ToolsObserver} with your unique class, you can
  # override the {#onActiveToolChanged} method to receive tool change
  # notifications.
  #
  # @example
  #   def onActiveToolChanged(tools, tool_name, tool_id)
  #     tool_name = fix_mac_tool_name(tool_name)
  #     puts "onActiveToolChanged: #{tool_name}"
  #   end
  #
  #   # Returns the "correct" tool name to account for mac API differences.
  #   #
  #   #   Args:
  #   #     tool_name     The tool name to fix
  #   #
  #   #   Returns
  #   #     string   corrected tool name
  #   def fix_mac_tool_name(tool_name)
  #     if tool_name == "eTool"
  #       tool_name = "ScaleTool"
  #     elsif tool_name == "ool"
  #       tool_name = "MoveTool"
  #     elsif tool_name == "onentCSTool"
  #       tool_name = "ComponentCSTool"
  #     elsif tool_name == "PullTool"
  #       tool_name = "PushPullTool"
  #     end
  #     return tool_name
  #   end
  #
  # @note In SketchUp 6 and SketchUp 7.0, tool names on the Mac have some of
  #   their first characters truncated. For instance, on Windows, a tool is
  #   +"CameraOrbit"+. On the Mac, is comes across as +"raOrbit"+.  Therefore,
  #   use the +tool_id+ to keep track of which tool you need to watch for, or use
  #   logic that corrects for the error. There is an example method of one way to
  #   do this shown below. (This example is not a comprehensive list of the tool
  #   names.)
  #
  # @param [Integer] tool_id
  #   The ID of the tool. This is a predefined number
  #   unique to a given tool. For example, the Materials Browser is tool_id
  #   21074.
  #
  # @param [String] tool_name
  #   The name of the tool.
  #
  # @param [Sketchup::Tools] tools
  #   A Tools object.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onActiveToolChanged(tools, tool_name, tool_id)
  end

  # The {#onToolStateChanged} method is called each time the user performs an
  # action with a tool. The actual state that is returned is an internal number
  # that varies tool to tool. If you want to watch existing tools for every
  # interaction, you will need to experiment with the tool state to determine
  # which states you care about. There is little consistency tool to tool.
  #
  # @example
  #   def onToolStateChanged(tools, tool_name, tool_id, tool_state)
  #     puts "onToolStateChanged: #{tool_name}:#{tool_state}"
  #   end
  #
  # @note In SketchUp 6 and SketchUp 7, tool names on the Mac have their first
  #   few characters truncated. For instance, on Windows, a tool is
  #   +"CameraOrbit".+ On the Mac, is comes across as +"raOrbit"+.  Therefore,
  #   use the tool_id to keep track of which tool you need to watch for, or use
  #   logic that corrects for the error. This bug was fixed in SketchUp 8.0.
  #
  # @param [Integer] tool_state
  #   A number identifying the state the tool just
  #   entered.
  #
  # @param [Sketchup::Tools] tools
  #   A Tools object.
  #
  # @param [Integer] tool_id
  #   The ID of the tool. This is a predefined number
  #   unique to a given tool. For example, the Materials Browser is tool_id
  #   21074.
  #
  # @param [String] tool_name
  #   The name of the tool.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onToolStateChanged(tools, tool_name, tool_id, tool_state)
  end

end

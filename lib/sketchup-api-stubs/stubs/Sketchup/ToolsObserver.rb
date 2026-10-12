# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# This observer interface is implemented to react to tool events.
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
# @abstract To implement this observer, create a Ruby class of this type,
#   override the desired methods, and add an instance of the observer to the
#   {Sketchup::Tools} object.
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
  # @bug Prior to SketchUp 2026.2 the tool name was incorrect for the following tools:
  #   - CommentTool (Was 'ommentTool')
  #   - FlipTool (Was 'lipTool' on Windows and '8FlipTool' on Mac)
  #   - IglooTool (Was 'glooTool' on Windows and '9IglooTool' on Mac)
  #   - LassoSelectionTool (Was 'assoSelectionTool' on Windows and '18LassoSelectionTool' on Mac)
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
  #     elsif tool_name == "ommentTool"
  #       tool_name = "CommentTool"
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
  # @param [Sketchup::Tools] tools
  #   A Tools object.
  #
  # @param [String] tool_name
  #   The name of the tool.
  #
  # @param [Integer] tool_id
  #   The ID of the tool. This is a predefined number
  #   unique to a given tool. For example, the Materials Browser is tool_id
  #   21074.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onActiveToolChanged(tools, tool_name, tool_id)
  end

  # The {#onToolStateChanged} method is invoked when a tool reports a state
  # transition.
  #
  # @example
  #   def onToolStateChanged(tools, tool_name, tool_id, tool_state)
  #     puts "onToolStateChanged: #{tool_name}:#{tool_state}"
  #   end
  #
  # @note Behavior changed in SketchUp 2016. Tool state changes are queued and
  #   may be delivered after the tool operation has completed. Multiple state
  #   changes can be coalesced and some tools may never trigger this callback.
  #   The +tool_state+ value is an internal integer that is not standardized
  #   across tools and often remains 0. Do not rely on specific numeric values.
  #   Prefer {#onActiveToolChanged} for reliable notifications of active tool
  #   changes, or tool-specific observers when available.
  #
  # @note In SketchUp 6 and SketchUp 7, tool names on the Mac had their first
  #   few characters truncated. For instance, on Windows a tool name was
  #   +"CameraOrbit"+, while on the Mac it came across as +"raOrbit"+.
  #   This bug was fixed in SketchUp 8.0. Use +tool_id+ if you need a stable
  #   identifier.
  #
  # @param [Sketchup::Tools] tools
  #   A Tools object.
  #
  # @param [String] tool_name
  #   The name of the tool.
  #
  # @param [Integer] tool_id
  #   The ID of the tool. This is a predefined number
  #   unique to a given tool. For example, the Materials Browser is tool_id
  #   21074.
  #
  # @param [Integer] tool_state
  #   A tool-specific state code. Not standardized
  #   and often 0 in modern releases.
  #
  # @return [nil]
  #
  # @version SketchUp 6.0
  def onToolStateChanged(tools, tool_name, tool_id, tool_state)
  end

end

# Copyright:: Copyright 2016 Trimble Inc.
# License:: The MIT License (MIT)
# Generated:: 2016-11-25 18:30

class Sketchup::Text < Sketchup::Drawingelement

  # Instance Methods

  # The arrow_type method retrieves the current arrow type used for the leader
  # text.
  # 
  # Valid arrow types are 0 for none, 2 for dot, 3 for closed arrow, 4 for open
  # arrow.
  #
  # @example 
  #   type = text.arrow_type=0
  #
  # @return arrow - a numerical representation for the type of
  #   arrow.
  #
  # @version SketchUp 6.0
  def arrow_type
  end

  # The arrow_type= method sets the arrow type used for leader text.
  # 
  # Valid arrow types are 0 for none, 2 for dot, 3 for closed arrow, 4 for open
  # arrow.
  #
  # @example 
  #   arrow = text.arrow_type=type
  #
  # @param type
  #   A numerical representation of the type of arrow to be
  #   set.
  #
  # @return arrow - a numerical representation for the type of
  #   arrow.
  #
  # @version SketchUp 6.0
  def arrow_type=(type)
  end

  # The display_leader= method accepts true or false for whether to display the
  # leader.
  # 
  # Leader text that is not displayed is set to Hidden type.
  #
  # @example 
  #   leader = text.display_leader=true
  #
  # @param status
  #   true if you want to display the leader text, false if
  #   you do not want to display the leader text.
  #
  # @return status - the status that you set.
  #
  # @version SketchUp 6.0
  def display_leader=(status)
  end

  # The display_leader? method returns the status of the leader.
  #
  # @example 
  #   status = text.display_leader
  #
  # @return status - true if the leader is being displayed, false
  #   if it is not displayed.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def display_leader?
  end

  # The has_leader method is used to determine if the Text object has a leader.
  #
  # @example 
  #   status = text.has_leader
  #
  # @return status - true if the Text object has a leader. False if
  #   the Text object does not have a leader.
  #
  # @return [Boolean] 
  #
  # @version SketchUp 6.0
  def has_leader?
  end

  # The leader_type method retrieves the currently set leader type.
  #
  # @example 
  #   leader = text.leader_type
  #
  # @return leader - a numerical value representing the currently
  #   set leader type.
  #
  # @version SketchUp 6.0
  def leader_type
  end

  # The leader_type = method sets the leader type.
  # 
  # Valid leader types are 0 for none, 1 for View-based, and 2 for Pushpin
  #
  # @example 
  #   leader = text.leader_type=1
  #
  # @param type
  #   A numerical value representing the leader type to be
  #   set.
  #
  # @return leader - a numerical value representing the leader type
  #   you just set.
  #
  # @version SketchUp 6.0
  def leader_type=(type)
  end

  # The line_weight method returns a line weight in number of pixels.
  # 
  # Defalt line weight is 1.
  #
  # @example 
  #   weight = text.line_weight
  #
  # @return lineweight - the line weight in pixels
  #
  # @version SketchUp 6.0
  def line_weight
  end

  # The line_weight= method sets the line weight in pixels.
  # 
  # Default line weight is 1.
  #
  # @example 
  #   newweight = text.line_weight = 4
  #
  # @param weight
  #   The line weight to be set (in pixels).
  #
  # @return The line weight that has been set.
  #
  # @version SketchUp 6.0
  def line_weight=(weight)
  end

  # The point method is used to get the point associated with the text.
  #
  # @example 
  #   point3d = text.point
  #
  # @return point - a Point3d object.
  #
  # @version SketchUp 6.0
  def point
  end

  # The point= method is used to set the point associated with the text.
  #
  # @example 
  #   status = text.point = point3d
  #
  # @param point3d
  #   A Point3d object.
  #
  # @return status - true if successful, false if unsuccessful.
  #
  # @version SketchUp 6.0
  def point=(point3d)
  end

  # The set_text method is used to set the text within a Text object without
  # recording an Undo operation.
  #
  # @example 
  #   text = text.set_text "This is another text"
  #
  # @param textstring
  #   The string to be set within the Text object.
  #
  # @return text - the Text object
  #
  # @version SketchUp 6.0
  def set_text(textstring)
  end

  # The text method is used to retrieve the string version of a Text object.
  #
  # @example 
  #   textstring = text.text
  #
  # @return textstring - the string representation of the Text
  #   object
  #
  # @version SketchUp 6.0
  def text
  end

  # The text= method is used to set the string version of a Text object.
  #
  # @example 
  #   textstring = text.text= "text"
  #
  # @param textstring
  #
  # @return textstring - the newly set text
  #
  # @version SketchUp 6.0
  def text=(textstring)
  end

  # The vector method is used to get the vector associated with the text.
  #
  # @example 
  #   vector = text.vector
  #
  # @return vector - a Vector3d object.
  #
  # @version SketchUp 6.0
  def vector
  end

  # The vector= method is used to set the vector associated with the text.
  #
  # @example 
  #   vector = text.vector
  #
  # @param vector
  #   A Vector3d object.
  #
  # @return success - true if successful.
  #
  # @version SketchUp 6.0
  def vector=(vector)
  end

end

# Copyright:: Copyright 2026 Trimble Inc.
# License:: The MIT License (MIT)

# To create a new procedure in Ruby, you must define a new class that implements
# its methods.
#
# Register the instance of your procedure class via {Sketchup::register_procedure}.
#
# Example:
#
#   class MyProcedure < Sketchup::Procedure
#     ID = 'my_company.my_extension.my_proc_id'
#     DESC = 'My procedure description.'
#     VERSION = 1
#
#     def initialize
#       super(id: ID, description: DESC, version: VERSION)
#     end
#
#     def validate(args)
#       # Return true if valid, or an array of error hashes.
#       true
#     end
#
#     def run(args)
#       # Return true on success, or an array of error hashes.
#     end
#
#     def get_widget_states(args)
#       # Return a hash mapping widget IDs to their desired enabled/visible states.
#       {}
#     end
#
#   end
#
#   my_proc = MyProcedure.new
#   Sketchup.register_procedure(my_proc)
#
# @abstract Implement the methods described in this class to create a procedure. Your subclass
#   must call +super+ from its +#initialize+, passing in the necessary arguments.
#
# @api Procedures
#
# @version SketchUp 2027.0
class Sketchup::Procedure

  # Instance Methods

  #
  # @abstract Called by SketchUp to get the parameter and UI declaration for this procedure.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     def declare_params_and_ui(args)
  #       count_label = 'Array count' # to be localized
  #       {
  #         "count" => {
  #           "widget_type" => "text",
  #           "value_type" => "int",
  #           "label" => count_label,
  #           "min_value" => 2
  #         }
  #       }.to_json
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @param [Hash{Symbol => Object}] args
  #   Reserved for future use. Currently always empty. Accept
  #   the parameter so the method keeps working if fields are added later.
  #
  # @return [String] A JSON string describing the parameters and UI. The keys in the
  #   JSON object are parameter identifiers (e.g., "count", "spacing") that match the
  #   parameter keys used when calling {Sketchup::ComponentDefinition#attach_procedure}.
  #   Each parameter identifier maps to an object containing UI widget specifications.
  #   See the {file:pages/declarative_ui_schema.md Declarative UI Schema} file for the
  #   full widget schema.
  #
  # @see Sketchup::ComponentDefinition#attach_procedure
  #
  # @version SketchUp 2027.0
  def declare_params_and_ui(args)
  end

  #
  # @abstract (Optional) Called once per view refresh while the procedural component is
  #   open for editing, allowing the procedure to draw custom feedback into the view.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     def draw(args)
  #       view = args[:view]
  #       points = args[:control_entities].grep(Sketchup::Edge).flat_map do |edge|
  #         [edge.start.position, edge.end.position]
  #       end
  #       view.drawing_color = 'red'
  #       view.line_width = 2
  #       view.draw(GL_LINES, points) unless points.empty?
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @note Since this method is called during drawing, it should run as fast as possible. Avoid slow
  #   computations and prefer simplified representations of the final geometry when possible.
  #
  # @option args [Sketchup::View] :view The view to draw into.
  #
  # @option args [Sketchup::Entities] :control_entities The input entities of the component being
  #   edited.
  #
  # @option args [Hash{Symbol => Integer, Float, String, Boolean}] :parameters A hash of parameter
  #   identifiers (symbols) to values.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [nil]
  #
  # @version SketchUp 2027.0
  def draw(args)
  end

  #
  # @abstract (Optional) Called while the procedural component is open for editing to get the bounds
  #   of what {#draw} renders. Implement this if the preview can extend beyond the bounds of the
  #   component, which could otherwise leave it clipped out of the view.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     def get_extents(args)
  #       bounds = Geom::BoundingBox.new
  #       offset = [0, 0, args[:parameters][:height]]
  #       args[:control_entities].grep(Sketchup::Edge).each do |edge|
  #         bounds.add(edge.start.position, edge.end.position.offset(offset))
  #       end
  #       bounds
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @note Since this method is called during drawing, it should run as fast as possible. It is
  #   strictly observational and it must not draw or modify the model.
  #
  # @option args [Sketchup::Entities] :control_entities The input entities of the component being
  #   edited.
  #
  # @option args [Hash{Symbol => Integer, Float, String, Boolean}] :parameters A hash of parameter
  #   identifiers (symbols) to values.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [Geom::BoundingBox] The bounds of the preview drawn by {#draw}. An empty bounding box
  #   means the preview needs no extra room.
  #
  # @version SketchUp 2027.0
  def get_extents(args)
  end

  #
  # @abstract Called by SketchUp after the procedure UI is populated and after every parameter
  #   change to determine the enabled/visible state of each widget. A procedure does not need to
  #   implement this method if the widget states do not change.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     def get_widget_states(args)
  #       parameters = args[:parameters]
  #       {
  #         "scale" => { enabled: parameters[:count] > 2 },
  #         "offset" => { visible: parameters[:count] > 3 }
  #       }
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @option args [Hash{Symbol => Integer, Float, String, Boolean}] :parameters The current
  #   parameter values.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [Hash{String => Hash}] A hash mapping widget IDs to their desired states. Each
  #   state hash may contain +:enabled+ and/or +:visible+ boolean keys. Widget IDs not
  #   present in the returned hash keep their current state.
  #   See the {file:pages/declarative_ui_schema.md Declarative UI Schema} file for details
  #   on dynamic widget states.
  #
  # @version SketchUp 2027.0
  def get_widget_states(args)
  end

  # All arguments are required.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     ID = 'my_company.my_extension.my_proc_id'
  #     DESC = 'My procedure description.'
  #     VERSION = 1
  #
  #     def initialize
  #       super(id: ID, description: DESC, version: VERSION)
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @param [String] id
  #   Unique identifier for this procedure.
  #   A good pattern would be something like: +"company_name.extension_name.procedure_name"+.
  #
  # @param [String] description
  #   User-facing display name of the procedure.
  #
  # @param [Integer] version
  #   Current version number of the procedure.
  #
  # @raise [TypeError] if +id+ or +description+ is not a String, or +version+ is not an Integer.
  #
  # @raise [ArgumentError] if +id+ or +description+ is an empty string, or a keyword argument is
  #   missing.
  #
  # @version SketchUp 2027.0
  def initialize(id:, description:, version:)
  end

  #
  # @abstract (Optional) Called when the user clicks a button widget declared in this procedure's UI
  #   (a widget with +"widgetType": "button"+). The procedure may perform arbitrary work against the
  #   model in response. A procedure does not need to implement this method if it does not declare
  #   any buttons.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     def on_button_clicked(args)
  #       case args[:button_id]
  #       when "swap_type"
  #         current_type = args[:parameters][:curve_type].to_s
  #         new_type     = current_type == 'bezier' ? 'bspline' : 'bezier'
  #         model = args[:model]
  #         model.start_operation('Set parameters')
  #         definition.set_procedure_parameters(args[:parameters].merge(curve_type: new_type))
  #         model.commit_operation
  #         :reload_ui # Rebuild the UI to reflect the changed parameter values.
  #       end
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @note If the handler modifies the model it should wrap the changes in its own operation using
  #   {Sketchup::Model#start_operation} and {Sketchup::Model#commit_operation}.
  #
  # @option args [Sketchup::Model] :model The model containing the procedural component.
  #
  # @option args [Sketchup::ComponentDefinition] :definition The definition of the procedural
  #   component.
  #
  # @option args [String] :button_id The id of the clicked button widget.
  #
  # @option args [Hash{Symbol => Integer, Float, String, Boolean}] :parameters The current
  #   parameter values.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [Symbol, nil] Return +:reload_ui+ to request a full rebuild of the procedure's UI (for
  #   example when the handler changed parameter values that the widgets need to reflect). Return
  #   +nil+ or any other value to leave the existing widgets in place.
  #
  # @version SketchUp 2027.0
  def on_button_clicked(args)
  end

  #
  # @abstract (Optional) Called when this procedure's component is opened or closed for editing.
  #   The +:action+ argument distinguishes the two. This can be useful if the procedure needs to
  #   activate a custom tool when its component is opened, for instance.
  #
  # @api Procedures
  #
  # @example
  #   class MyProcedure < Sketchup::Procedure
  #     def on_open_close(args)
  #       return if args[:from_undo_redo] # Only react to direct user actions.
  #       case args[:action]
  #       when :open
  #         puts "Opened #{args[:definition].name}"
  #       when :close
  #         puts "Closed #{args[:definition].name}"
  #       end
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @note This method is strictly observational. Do not modify the model from within it and do not
  #   call {Sketchup::Model#start_operation} / {Sketchup::Model#commit_operation}. It can be called
  #   while undoing or redoing an open/close and always runs inside the open/close operation.
  #
  # @option args [Symbol] :action +:open+ when the component was opened, +:close+ when it was
  #   closed.
  #
  # @option args [Boolean] :from_undo_redo +true+ when the open or close is the result of an undo
  #   or redo, +false+ when it is a direct user action.
  #
  # @option args [Sketchup::Model] :model The model containing the procedural component.
  #
  # @option args [Sketchup::ComponentDefinition] :definition The definition of the procedural
  #   component that was opened or closed.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [nil]
  #
  # @version SketchUp 2027.0
  def on_open_close(args)
  end

  # You should first clear the output entities. Then validate the control geometry and parameters
  # (you can call your own +#validate+ method for this). If the input is invalid, return errors as
  # appropriate. And finally generate the output geometry.
  #
  # This method will be called with an operation already started by the framework. Do not explicitly
  # call {Sketchup::Model#start_operation} and {Sketchup::Model#commit_operation} from within this
  # code.
  #
  # @abstract Called by SketchUp to execute the procedure.
  #
  # @api Procedures
  #
  # @example Returning success
  #   class MyProcedure < Sketchup::Procedure
  #     def run(args)
  #       definition = args[:definition]
  #       parameters = args[:parameters]
  #       # Clear the output geometry.
  #       output_entities = definition.entities
  #       output_entities.clear!
  #
  #       # Validate definition.control_entities and parameters. Return errors if invalid.
  #
  #       # Implement the procedure logic.
  #       true
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @example Returning errors
  #   class MyProcedure < Sketchup::Procedure
  #     def run(args)
  #       [
  #         {
  #           title: "Generation Failed",
  #           description: "Could not generate geometry from the given input."
  #         }
  #       ]
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @option args [Sketchup::Model] :model The model containing the procedural component.
  #
  # @option args [Sketchup::ComponentDefinition] :definition The definition of the procedural
  #   component.
  #
  # @option args [Hash{Symbol => Integer, Float, String, Boolean}] :parameters A hash of parameter
  #   identifiers (symbols) to values.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [Boolean, Array<Hash>] +true+ on success, +false+ on failure.
  #   Optionally, return an +Array+ of error hashes to report specific errors.
  #   Each error hash may contain:
  #   - +:title+ [+String+] A short title for the error.
  #   - +:description+ [+String+] Description of the error.
  #   - +:involved_entities+ [+Array<Integer>+] (optional) Persistent IDs
  #     ({Sketchup::Entity#persistent_id}) of the entities to be highlighted.
  #
  # @version SketchUp 2027.0
  def run(args)
  end

  #
  # @abstract Called by SketchUp to check if the given input entities can form a valid procedural
  #   component.
  #
  # @api Procedures
  #
  # @example Returning success
  #   class MyProcedure < Sketchup::Procedure
  #     def validate(args)
  #       # Implement input validation.
  #       true
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @example Returning validation errors
  #   class MyProcedure < Sketchup::Procedure
  #     def validate(args)
  #       control_entities = args[:control_entities]
  #       errors = []
  #       if control_entities.grep(Sketchup::Face).size > 1
  #         pids = control_entities.grep(Sketchup::Face).map(&:persistent_id)
  #         errors << {
  #           title: "Multiple Faces",
  #           description: "Only a single face is allowed.",
  #           involved_entities: pids
  #         }
  #       end
  #       errors.empty? ? true : errors
  #     end
  #
  #     # Other required methods
  #   end
  #
  # @note Do not make model modifications within this method. Also do not call
  #   {Sketchup::Model#start_operation} and {Sketchup::Model#commit_operation}.
  #
  # @option args [Sketchup::Entities] :control_entities The input entities to validate.
  #
  # @option args [Hash{Symbol => Integer, Float, String, Boolean}] :parameters A hash of parameter
  #   identifiers (symbols) to values.
  #
  # @param [Hash{Symbol => Object}] args
  #   Hash containing the method parameters.
  #
  # @return [Boolean, Array<Hash>] +true+ if valid, +false+ if invalid.
  #   Optionally, return an +Array+ of error hashes to report specific validation
  #   errors. Each error hash may contain:
  #   - +:title+ [+String+] A short title for the error.
  #   - +:description+ [+String+] Description of the error.
  #   - +:involved_entities+ [+Array<Integer>+] (optional) Persistent IDs
  #     ({Sketchup::Entity#persistent_id}) of the entities to be highlighted.
  #
  # @version SketchUp 2027.0
  def validate(args)
  end

end

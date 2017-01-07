#puts "Loading SketchUp API YARD Plugin..."
#puts caller


module SketchUpYardPlugin

  class GlobalConstantHandler < YARD::Handlers::C::Base
    MATCH = %r{\bDEFINE_RUBY_(?:(?:NAMED_)?CONSTANT|ENUM)\s*\((?:[^)]+,\s*)?(\w+)\)\s*;}xm
    handles MATCH
    statement_class BodyStatement

    process do
      statement.source.scan(MATCH) do |captures|
        const_name = captures.first
        type = "global_const"
        var_name = nil
        value = "nil"
        handle_constants(type, var_name, const_name, value)
      end
    end
  end


  class ClassConstantHandler < YARD::Handlers::C::Base
    MATCH = %r{\bDEFINE_RUBY_CLASS_CONSTANT\s*\(([^,]+)\s*,\s*([^,]+)\s*,\s*(\w+)\s*\)\s*;}xm
    handles MATCH
    statement_class BodyStatement

    process do
      statement.source.scan(MATCH) do |klass_name, value, const_name|
        type = "const"
        value = "nil"
        handle_constants(type, klass_name, const_name, value)
      end
    end
  end


  class ClassEnumConstantHandler < YARD::Handlers::C::Base
    MATCH = %r{\bDEFINE_RUBY_CLASS_ENUM\s*\(([^,]+)\s*,\s*(\w+)\s*\)\s*;}xm
    handles MATCH
    statement_class BodyStatement

    process do
      statement.source.scan(MATCH) do |klass_name, const_name|
        type = "const"
        value = "nil"
        handle_constants(type, klass_name, const_name, value)
      end
    end
  end

end unless defined?(SketchUpYardPlugin)

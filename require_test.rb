# frozen_string_literal: true

# best run with ruby --disable-gems <path>/require_test.rb

module RequireTest

  WID = 40

  def self.run
    @errors = ''.dup
    Dir.chdir("#{__dir__}/SketchUp") do |d|
      ary = Dir.glob '**/*.rb'
      st_len = ary.length
      begin
        last_len = ary.length
        ary = run_ary(ary)
      end until ary.empty? || last_len == ary.length
      # If there are items left, they must be unresolved naming errors
      unless ary.empty?
        ary.each { |fn|
          begin
            require_relative "SketchUp/#{fn}"
          rescue=> e
            @errors << "Name   #{fn.ljust(WID)}#{e.message}\n"
          end
        }
      end

      if @errors.empty?
        puts "\nAll #{st_len} files can be loaded!"
      else
        puts @errors
      end
    end
  end

  # Runs array, returns array of file names with NameError, and adds other
  # errors to @errors string
  def self.run_ary(ary)
    ret_ary = []
    ary.each { |fn|
      if (t = check_require fn)
        if t.start_with? 'Name'          # Add NameErrors to return array
          ret_ary << fn
        else
          @errors << t
        end  
      end
    }
    ret_ary
  end

  def self.check_require(fn)
    require_relative "SketchUp/#{fn}"
    nil
  rescue LoadError => e
    "Load   #{fn.ljust(WID)}#{e.message}\n"
  rescue SyntaxError => e
    "Syntax #{fn.ljust(WID)}#{e.message}\n"
  rescue NameError => e
    "Name   #{fn.ljust(WID)}#{e.message}\n"
  end
end

RequireTest.run

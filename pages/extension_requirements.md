# @title Extension Requirements

# Extension Requirements

SketchUp extensions are distributed as RBZ files. These are the specifications for creating a valid RBZ file that can be used by SketchUp or shared on the Extension Warehouse.

## The Basics

### File Structure

An RBZ file is a normal ZIP archive with the .rbz file extension. To create one, you can use the ZIP archive tool of your choice, including right clicking the target files and sending them to a ZIP archive, and then rename the file. You may need to change a system setting to display the file extension to be able to change it.

The RBZ archive must contain exactly two items, a root RB file and a support folder by the same name (excluding the .rb extension). The root RB file contains the extension metadata. The support folder contains the main code.

*Root RB file*

```ruby
# nn_cuber_maker.rb

module NameyNamesson
  module CubeMaker
    EXTENSION = SketchupExtension.new("NN Cube Maker", "nn_cube_maker/main.rb")
    EXTENSION.creator     = "Namey Namesson"
    EXTENSION.description = "Make cubes in just a few clicks."
    EXTENSION.version     = "1.0.0"
    EXTENSION.copyright   = "2023 Name Namesson"
    Sketchup.register_extension(EXTENSION, true)
  end
end
```

*Main code in support folder*

```ruby
# nn_cuber_maker/main.rb

module NameyNamesson
  module CubeMaker
    # Code goes here...
  end
end
```

The root RB file should only register the extension, not contain the extension's logic or load additional files.

### Wrapping Module

SketchUp extensions all run in a shared environment. To avoid clashes between similarly named methods and classes, all your extension's Ruby code must be wrapped in a single uniquely named module. Typically you can use the name of your company or your name, followed by the name of your extension.

```ruby
module NameyNamesson
  module CubeMaker
    # Code goes here…
  end
end
```

### Undo Stack

When your extension makes several low level draw calls, join them together as one entry to the undo stack using the `start_operation` and `commit_operation` methods. If the user activates it as a single high level action, let them also undo it in a single step.

```ruby
# bad - creates multiple undo steps
def draw_cube
  model = Sketchup.active_model
  face = model.entities.add_face([0, 0, 0], [10, 0, 0], [10, 10, 0], [0, 10, 0])
  face.pushpull(10)
end

# good - creates one undo step
def draw_cube
  model = Sketchup.active_model
  model.start_operation("Draw Cube", true)
  face = model.entities.add_face([0, 0, 0], [10, 0, 0], [10, 10, 0], [0, 10, 0])
  face.pushpull(10)
  model.commit_operation
end
```

### Global Variables

Since SketchUp extensions run in a shared environment, global variables risk clashing between extensions and are not permitted. Instead use instance variables or class variables.

### Dependency to Another Extension

Ideally, avoid your extension depending on another extension. Prefer duplicating any shared logic between your extensions over publishing a "library extension", to make installation easier for end users. If your extension does require another extension to work, make sure to clearly state this in its documentation and also show an error message if the dependency is missing.

## The Nitty Gritty Stuff

### Monkey Patching the SketchUp Ruby API

Since SketchUp extensions run in a shared environment, changing the modules and classes of the Ruby API from one extension can clash with another extension. Don't change these modules and classes.

### Gems

Installing Gems does not work well in SketchUp. It freezes up the program during installation and some Gems need special build tools to be made functional. Also different extensions may want to use different versions of the same gem. Instead copy the code of the Gem into your own extension support folder and wrap it under your unique namespace.

### $LOAD_PATH

Don't modify the '$LOAD_PATH'. Doing so may cause other extensions to load the wrong files. Instead include your extension support folder in the path whenever you load a file.

### Exit

'exit' and 'exit!' should not be used to stop the Ruby execution, as all Ruby extensions run in a shared interpreter. Instead use 'return', 'next', break' or 'raise' to stop the execution of your own code.

### Unsafe License Checks

Ruby is a very dynamic language where any method can be overridden at runtime. If you extract your licensing checks for a paid extension to a separate method, this method can be overridden and the extension used without a license. For better protection, prefer checking the license inside of the same method containing some of your main logic. Don't use a constant for your extension identifier as it too can be overridden. Prefer hardcoding the identifier directly where you make the license check

These recommendations make it harder but not impossible to crack the extension. For better security, you can compile your logic and use a Ruby C Extension to integrate it with SketchUp, or run it on a server using HTTP requests.

### And More…

This is not a complete list of everything an extension can be denied for. See the below links for more details and use your good judgment when developing.

## Further Reading

[Extension Code Examples](https://github.com/SketchUp/sketchup-ruby-api-tutorials)

[Extension Development Best Practices](https://help.sketchup.com/en/extension-warehouse/extension-development-best-practices)

[Robocop cops](https://rubocop-sketchup.readthedocs.io/en/latest/cops_requirements/) - Technical list of everything checked by the sketchup-rubocop static code analysis tool.

[Sketchup Extension UX Guidelines](https://sketchup.github.io/sketchup-extension-ux-guidelines/)
Recommendations to make the extension easier to use and fit better into SketchUp.



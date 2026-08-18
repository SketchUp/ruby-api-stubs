# @title Extension Requirements

# Extension Requirements

These are the requirements for publishing an extension to Extension Warehouse, but we recommend you follow these wherever you may publish your extension. Ignoring these requirements comes with the risk of your extension malfunctioning or causing other extensions to malfunction.

## The Basics

### File Structure

SketchUp extensions are distributed as RBZ files. An RBZ file is a normal ZIP archive with the .rbz file extension. To create one, you can use the ZIP archive tool of your choice, including right clicking the target files and sending them to a ZIP archive, and then rename the file. You may need to change a system setting to display the file extension to be able to change it.

The RBZ archive must contain exactly two items, a root RB file and a support folder by the same name (excluding the .rb extension). The root RB file contains the extension metadata, such as name and author. The support folder contains the rest of the extension.

*File Structure*

```
nn_cuber_maker.rbz
├── nn_cuber_maker.rb (root RB file)
└── nn_cuber_maker    (support folder containing everything else)
    ├── main.rb
    └── some_other_support_file.rb
```

*Root RB file*

```ruby
# nn_cuber_maker.rb

module NameyNamesson
  module CubeMaker
    EXTENSION = SketchupExtension.new("NN Cube Maker", "nn_cube_maker/main")
    EXTENSION.creator     = "Namey Namesson"
    EXTENSION.description = "Make cubes in just a few clicks."
    EXTENSION.version     = "1.0.0"
    EXTENSION.copyright   = "2025 Name Namesson"
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

### Requiring Files

When requiring Ruby files within your extension, prefer the `Sketchup.require` method over Ruby's own `require` or `require_relative`.
By default Extension Warehouse encrypts extensions, converting `.rb` files into `.rbe` files.
By omitting the file extension, `Sketchup.require` will look for both `.rb`, `.rbe` and `.rbs` files.

Hardcoding the `.rb` extension while also encrypting the extension leads to a load error.

```ruby
# Bad
require "nn_cube_maker/some_other_file.rb"
require_relative "some_other_file.rb"

# Good
Sketchup.require "nn_cube_maker/some_other_file"
```

The same applies to the path when creating the extension object.

```ruby
# Bad
SketchupExtension.new("NN Cube Maker", "nn_cube_maker/main.rb")

# Good
SketchupExtension.new("NN Cube Maker", "nn_cube_maker/main")
```

### Undo Stack

When your extension makes several low level draw calls, join them together as one entry to the undo stack using the `start_operation` and `commit_operation` methods. If the user activates it as a single high level action, let them also undo it in a single step.

```ruby
# Bad - creates multiple undo steps
def draw_cube
  model = Sketchup.active_model
  face = model.entities.add_face([0, 0, 0], [10, 0, 0], [10, 10, 0], [0, 10, 0])
  face.pushpull(10)
end

# Good - creates one undo step
def draw_cube
  model = Sketchup.active_model
  model.start_operation("Draw Cube", true)
  face = model.entities.add_face([0, 0, 0], [10, 0, 0], [10, 10, 0], [0, 10, 0])
  face.pushpull(10)
  model.commit_operation
end
```

Also wrap changes to attributes to give the model change a meaningful name in the undo stack, even if you just change a single attribute.

```ruby
# Bad - displays with generic name "Properties" in the undo stack
color = Sketchup::Color.new("white")
Sketchup.active_model.set_attribute("renderer_extension", "sun_color", color)

# Good - tells the user what changed
color = Sketchup::Color.new("white")
Sketchup.active_model.start_operation("Set Sun Color", true)
Sketchup.active_model.set_attribute("renderer_extension", "sun_color", color)
Sketchup.active_model.commit_operation
```

### Functioning as Advertised

Extensions will be rejected from Extension Warehouse if they malfunction or cannot be used.

### Safe

Extensions must be safe to install and use. For a starting point in SketchUp extension safety, see [this article](https://developer.sketchup.com/article-security-best-practises).

### Global Variables

Since SketchUp extensions run in a shared environment, global variables risk clashing between extensions and are not permitted. Instead use instance variables or class variables.

### Printing to the Console

Printing to the Ruby console can be useful for debugging. But if everyone does it, the console gets cluttered and you can't easily see what information comes from your extension and what comes from some other extension.

Remove or disable `puts`, `print` and `p` before publishing your extension.

```ruby
# Bad
puts "testing testing"

# Good
# (Not using puts)

# Also good
DEBUG_MODE = false
puts "testing testing" if DEBUG_MODE
```

### Dependency to Another Extension

Ideally, avoid your extension depending on another extension. Prefer duplicating any shared logic between your extensions over publishing a "library extension", to make installation easier for end users. If your extension does require another extension to work, make sure to clearly state this in its documentation and also show an error message if the dependency is missing.

### Matching Title and Version Number

When submitting to Extension Warehouse, please make sure the title and version of the submission form matches that of the `SketchupExtension` in the RBZ.

## The Nitty Gritty Stuff

### Data Loss

Extensions are not allowed to cause data loss. This includes silently removing or overwriting the user's data.

For instance, do not silently save over the open model as the user may have made destructive changes they don't intend to save.
Always ask before saving. Also don't purge unused components or other model assets without asking.

### Eval

`eval` is vulnerable to code injection attacks and should not be used.

### Third Party Updates

SketchUp and Extension Warehouse has infrastructure for extension updates.
Adding functionality that downloads and installs updates is not allowed as it bypasses the review.

### Encryption

Do not use the SketchUp Extension Signature Portal to encrypt an extension before submitting it to Extension Warehouse.
Extension Warehouse by default applies this encryption after your extension is submitted.

### Monkey Patching the SketchUp Ruby API

Since SketchUp extensions run in a shared environment, changing the modules and classes of the Ruby API from one extension can clash with another extension. Don't change these modules and classes.

### Gems

Installing Gems does not work well in SketchUp. It freezes up the program during installation and some Gems need special build tools to be made functional. Also different extensions may want to use different versions of the same gem. Instead copy the code of the Gem into your own extension support folder and wrap it under your unique namespace.

### $LOAD_PATH

Don't modify the `$LOAD_PATH`. Doing so may cause other extensions to load the wrong files. Instead include your extension support folder in the path whenever you load a file.

### Environment Variables 

Don't modify `ENV`. Doing so can cause other extensions to malfunction.

### Exit

`exit` and `exit!` should not be used to stop the Ruby execution, as all Ruby extensions run in a shared interpreter. Instead use `return`, `next`, `break` or `raise` to stop the execution of your own code.

### Unsafe License Checks

Ruby is a very dynamic language where any method can be overridden at runtime. If you extract your licensing checks for a paid extension to a separate method, this method can be overridden and the extension used without a license. For better protection, prefer checking the license inside of the same method containing some of your main logic. Don't use a constant for your extension identifier as it too can be overridden. Prefer hardcoding the identifier directly where you make the license check

These recommendations make it harder but not impossible to crack the extension. For better security, you can compile your logic and use a Ruby C Extension to integrate it with SketchUp, or run it on a server using HTTP requests.

### WebDialog

`WebDialog` was deprecated in 2017. Use `HtmlDialog` instead, which has better security, works consistently across platforms, and is actively maintained.

## And More…

This is not a complete list of everything an extension can be denied for. See the below links for more details and use your good judgment when developing.

## RuboCop

[RuboCop-SketchUp](https://github.com/SketchUp/rubocop-sketchup) is a static code analyser helping you find issues with your code and conform to these requirements.

RuboCop-SketchUp is used by the Extension Warehouse review team but you can use it yourself before submitting, to find issues earlier and save time.

## Further Reading

[Extension Code Examples](https://github.com/SketchUp/sketchup-ruby-api-tutorials)

[Extension Development Best Practices](https://help.sketchup.com/en/extension-warehouse/extension-development-best-practices)

[Robocop cops](https://rubocop-sketchup.readthedocs.io/en/latest/cops_requirements/) - Technical list of everything checked by the sketchup-rubocop static code analysis tool.

[Sketchup Extension UX Guidelines](https://sketchup.github.io/sketchup-extension-ux-guidelines/)
Recommendations to make the extension easier to use and fit better into SketchUp.



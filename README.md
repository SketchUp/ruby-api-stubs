# @title SketchUp Ruby API

# SketchUp Ruby API

The SketchUp Ruby API allows you to interact with SketchUp models and the SketchUp application. It is available from within SketchUp, it cannot be used by itself.

<p>
  Get started with the <a href="_index.html">Ruby API Overview</a>.
</p>

Visit our [SketchUp Developer Center](https://developer.sketchup.com) for more information and resources on SketchUp's APIs.

## LayOut API

As of SketchUp 2018 you can also create and manipulate LayOut documents. For more information refer to the {file:LayOut.md LayOut API Overview}.

Currently the LayOut Ruby API is only available from SketchUp.

## Examples and Tutorials

### Getting Started

To get you started we have a collection of examples of tutorials. These will take you through various common scenarios and concepts of the SketchUp API.

https://github.com/SketchUp/sketchup-ruby-api-tutorials

### Ruby C Extensions within SketchUp

Ruby itself allows you to work with Ruby code via C (and C++). This allows for more complex functionality and possible performance improvements. We provide examples on how to create Ruby C Extensions that work with various SketchUp versions and platforms:

https://github.com/SketchUp/ruby-c-extension-examples

## Debugging

To make debugging SketchUp Ruby extensions easier we have a Ruby debugger interface that can be added to your SketchUp installation. This will let you use the debugging functionality of IDEs/editors that support the Ruby Debug protocol:

https://github.com/SketchUp/sketchup-ruby-debugger

We also have a guide on setting up RubyMine as an example of how you can set up your debugger:

https://github.com/SketchUp/sketchup-ruby-api-tutorials/wiki/RubyMine-Debugger-Setup

## Testing

The standard testing frameworks for Ruby usually assume your tests are run from Ruby's console interpreter. This pose a problem when you want to set up unit tests for your code that needs to run within SketchUp.

To address this we created TestUp, a wrapper on top of {https://github.com/seattlerb/minitest Minitest} that works within SketchUp along with a GUI interface to manage your tests.

https://github.com/SketchUp/testup-2

## Tools

Give your IDE insight to the SketchUp Ruby API by feeding it stubs:

https://github.com/SketchUp/ruby-api-stubs

As an example of how to set up your IDE we created an example that describe the process for RubyMine:

https://github.com/SketchUp/sketchup-ruby-api-tutorials/wiki/RubyMine-Project-Setup#making-the-ide-sketchup-api-aware

VSCode example:

https://github.com/SketchUp/sketchup-extension-vscode-project

## Documentation

If you find a typo, unclear description etc in the documentation, please log a new issue in the issue tracker for our APIs: https://github.com/SketchUp/api-issue-tracker/issues

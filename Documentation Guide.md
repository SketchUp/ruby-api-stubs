# Documentation Guide

The Ruby API docs was originally generated using a custom proprietary tool which loosely used RDoc syntax.

In 2016 they got migrated to use YARD as documentation engine, still using RDoc syntax.

The documentation is generated from our internal C++ source code. These stubs are generated automatically using a [custom YARD template](https://github.com/SketchUp/sketchup-yard-template).

## Syntax Style

This document will act as a guide for how we want the documentation to be formatted. We will expand upon it as we go along and questions arise. Feel free to contribute with suggestions.

One recent class to refer to for examples is `UI::HtmlDialog`.

## References

- YARD tags: http://www.rubydoc.info/gems/yard/file/docs/Tags.md
- YARD types parser: http://yardoc.org/types.html

- RDoc syntax: http://docs.seattlerb.org/rdoc/RDoc/Markup.html


## Tag Descriptions

Tag descriptions should be full sentence (capitalized with proper punctuation.)

Examples:

**Not so good**

` - the entities search context, or {Model#entities} if none.`

**Better**

`The entities context in which to search. (Defaults to the current model's entities.)`


## `@param` tags

`@param` tags should follow this format:

`@param [types] name Full sentence (capitalized with proper punctuation.)`

Example (imagine a search or find method):

**Not so good**

`@param [Sketchup::Entities] entities - the {Sketchup::Entities} search context, or Model{Model#entities} if none.`
- The dash separating the param name and description is frivolous. This is syntax formatting inherited from the previous documentation engine. We will try to eliminate it as we work out way through the docs.
- The second class link is unneeded because the class in the TypeList will be automatically linked by YARD.

**Better**

`# @param [Sketchup::Entities] entities The entities context in which to search. Defaults to the current model's entities.`
- No dash need even be considered as the Typelist separates the parameter name from the description.
- The descriptions are proper grammatical sentences, that can be more easily translated using online translators.


## `@return` tags

Often the `@return` tag doesn't need much more than the type returned as the method name and description is enough information:

    # <method description>
    #
    # @return [Geom::Transformation]
    def transformation
    end

In the existing docs there will often be methods that return `true` or `false` to indicate success. In these cases there is no need to express that in the documentation comments. When a method return a boolean the convention is so common that there is no need to repeat it.

    # @return [Boolean]
    def add_observer
    end

_Ref:_
* [**YARD**: Tag List - @return](http://www.rubydoc.info/gems/yard/file/docs/Tags.md#return)
* [**YARD**: Type List Conventions - Literals](http://www.rubydoc.info/gems/yard/file/docs/Tags.md#Literals)

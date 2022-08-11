# Ruby Type Definitions (RBS)

Use `rbs` to generate RBS skeleton from source, no types inferred. (`gem update rbs`).

Use `sord` to generate RBS from YARD. (`gem install sord`).

```
sord sig/sketchup.rbs --trace
```

Patch the generated RBS with missing information.

```
ruby tools\patch_rbs.rb
```

Use `steep` to validate and check source against RBS. (`gem install steep`).

```
steep validate
```

```
steep check
```

## Issues

Current Ruby API docs are often missing type into. Some times it's not valid YARD formatting, but YARD won't complain in many cases. Using these new tools flush out these issues (which is a good thing).

- Use of ellipsis to indicate variable arguments `...`. These must be reworked as they will cause errors.

- Old style of marking arguments as optional will break: `@param arg1 [optional] hello`. `[optional]` Will be treated as a type annotation.

- The `Enumerable` mixin require more annotation than `sord` provides. `include Enumerable` will cause errors, instead a type param must be provided: `include Enumerable[Sketchup::Entity]`. And the `each` method must be annotation to yield the correct type. The latter can be fixed in YARD, the former currently means manual patching of the generated RBS.

- Our modification of `Array` require that it's defined as the standard `Array` is defined: `class Array[unchecked out Elem] < Object`. This might require patching the generated output from `sord`.

- We cannot run `steep check` on the stubs, because the method bodies are analyzed and will infer `nil` from all the empty stubs, which will fail the return value checks.

- Unclear on how to make `sord` and `steep` use RBS definitions from different sources. If you run `steep` on an extension it needs to know the SketchUp definitions. How can this be loaded by `steep` (and `sord`) such that the definitions doesn't have to be copied and pasted around?
  - https://github.com/ruby/rbs/issues/1066
  - https://github.com/pocke/rbs_rails

- The SketchUp's API numerous overloads is a challenge:
  - Points and vectors can be represented by plain arrays.
  - Lines can be in a number of mutations:
    - Point + Vector
    - Point + Point
    ```
    @param [Array(Geom::Point3d, Geom::Vector3d)] line
    @param [Array(Geom::Point3d, Geom::Point3d)] line
    ```
    And both point and vector can be substituted by array.
    The RBS format let us define an interface for this, but how to mix this with
    automatic generation from YARD?
    https://github.com/ruby/rbs/issues/1076

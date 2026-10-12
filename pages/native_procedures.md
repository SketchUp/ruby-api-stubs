# @title Native Procedures

# Native Procedure Parameters

SketchUp ships several built-in procedures that can be attached to a component definition
via {Sketchup::ComponentDefinition#attach_procedure}. This page documents the control entity
requirements and parameters that each native procedure accepts.

Use the `Sketchup::PROCEDURE_ID_*` constants as the first argument to `attach_procedure` when
targeting a native procedure.

---

## Follow Me (`Sketchup::PROCEDURE_ID_FOLLOW_ME`)

Extrudes a profile along a path.

### Control entities

Requires at least one profile and exactly one path source.

**Profile** (one or more, combined in any mix):
- A standalone face.
- A component instance containing exactly one face (multi-face profile components are not valid).

**Path** (exactly one source — use either form, not both):
- A component instance whose contents are exclusively standalone edges forming a single
  continuous, non-looping chain.
- One or more raw standalone edges (not boundary edges of any face) that together form a single
  continuous, non-looping chain.

### Parameters

This procedure has no parameters. Pass an empty hash.

```ruby
definition.attach_procedure(Sketchup::PROCEDURE_ID_FOLLOW_ME, {})
```

---

## Solid Tools (`Sketchup::PROCEDURE_ID_SOLID_TOOLS`)

Performs a boolean solid operation on two or more solid component instances.

### Control entities

Two or more solid component instances, or components containing only solid component instances.
`"intersect"` and `"subtract"` require exactly 2 inputs; `"union"` requires 2 or more.

### Parameters

| Key | Type | Description |
|---|---|---|
| <code>"operation"</code> | String | The boolean operation to perform. **Required.** |
| <code>"reverse"</code> | Boolean | Reverse the operation order of the two solids. Only applies to <code>"subtract"</code>. |
| <code>"preserve_target_structure"</code> | Boolean | Cut each solid in the target individually rather than merging first. Only applies to <code>"subtract"</code>. |

**`"operation"` values**

| Value | Description |
|---|---|
| <code>"intersect"</code> | Keep only the geometry common to both solids. Requires exactly 2 inputs. |
| <code>"union"</code> | Merge all solids into one. Requires 2 or more inputs. |
| <code>"subtract"</code> | Subtract the first solid from the second. Requires exactly 2 inputs. |

```ruby
definition.attach_procedure(Sketchup::PROCEDURE_ID_SOLID_TOOLS, {
  "operation" => "subtract",
  "reverse" => false,
  "preserve_target_structure" => true
})
```

---

## Copy Along (`Sketchup::PROCEDURE_ID_COPY_ALONG`)

Copies one or more component instances repeatedly along a path.

### Control entities

One or more component instances to copy, plus a path source. The path can be provided as either:
- Standalone edges in the same component context, or
- A dedicated component instance whose contents are exclusively standalone edges.

### Parameters

| Key | Type | Description |
|---|---|---|
| <code>"placement_mode"</code> | String | How the path is interpreted across segments and corners. |
| <code>"distribution"</code> | String | Whether copies are distributed by count, distance, or gap. |
| <code>"count"</code> | Integer | Number of copies. Used when <code>distribution</code> is <code>"count"</code>. Minimum: <code>2</code>. |
| <code>"distance"</code> | Float (inches) | Origin-to-origin spacing between copies. Used when <code>distribution</code> is <code>"distance"</code>. Must be greater than <code>0</code>. |
| <code>"gap"</code> | Float (inches) | Empty space between adjacent copies. Used when <code>distribution</code> is <code>"gap"</code>. Must be <code>0</code> or greater. |
| <code>"exact_spacing"</code> | Boolean | When <code>true</code>, copies use the literal spacing value. When <code>false</code>, copies are redistributed evenly across the available path length. Applies to both <code>"distance"</code> and <code>"gap"</code> distributions. |
| <code>"orientation"</code> | String | How copies are rotated to follow the path. |
| <code>"margin_mode"</code> | String | How the margin at the path endpoints is measured. |
| <code>"smooth_corners"</code> | Boolean | Smooth the orientation transition at path corners. |

**`"placement_mode"` values**

| Value | Description |
|---|---|
| <code>"entire_curve"</code> | Distribute copies across the full path as a single unit. |
| <code>"segments"</code> | Distribute copies independently within each path segment. |
| <code>"corners"</code> | Place exactly one copy at each path corner, ignoring count and distance. |

**`"distribution"` values**

| Value | Description |
|---|---|
| <code>"count"</code> | Place exactly <code>count</code> copies, evenly spaced along the path. |
| <code>"distance"</code> | Place as many copies as fit, spaced <code>distance</code> inches apart (origin-to-origin). |
| <code>"gap"</code> | Place as many copies as fit, with <code>gap</code> inches of empty space between adjacent copies. |

**`"orientation"` values**

| Value | Description |
|---|---|
| <code>"none"</code> | Copies keep the original orientation of the control component. |
| <code>"stairlike"</code> | Copies rotate to follow the path's horizontal turns (yaw only). |
| <code>"roadlike"</code> | Copies rotate to follow the path in full 3D (yaw and pitch). |

**`"margin_mode"` values**

| Value | Description |
|---|---|
| <code>"absolute"</code> | Margin is an absolute distance (inches) from each path endpoint. |
| <code>"relative"</code> | Margin is a fraction of the total path length. |

```ruby
definition.attach_procedure(Sketchup::PROCEDURE_ID_COPY_ALONG, {
  "placement_mode" => "entire_curve",
  "distribution" => "count",
  "count" => 8,
  "orientation" => "stairlike",
  "margin_mode" => "absolute",
  "smooth_corners" => false
})
```

# @title Native Procedures
# @api Procedures

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

| Key | Type | Default | Description |
|---|---|---|---|
| `"operation"` | String | — | The boolean operation to perform. **Required.** |
| `"reverse"` | Boolean | `false` | Reverse the operation order of the two solids. Only applies to `"subtract"`. |
| `"preserve_target_structure"` | Boolean | `true` | Cut each solid in the target individually rather than merging first. Only applies to `"subtract"`. |

**`"operation"` values**

| Value | Description |
|---|---|
| `"intersect"` | Keep only the geometry common to both solids. Requires exactly 2 inputs. |
| `"union"` | Merge all solids into one. Requires 2 or more inputs. |
| `"subtract"` | Subtract the first solid from the second. Requires exactly 2 inputs. |

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

| Key | Type | Default | Description |
|---|---|---|---|
| `"placement_mode"` | String | `"entire_curve"` | How the path is interpreted across segments and corners. |
| `"distribution"` | String | `"count"` | Whether copies are distributed by count, distance, or gap. |
| `"count"` | Integer | `8` | Number of copies. Used when `distribution` is `"count"`. Minimum: `2`. |
| `"distance"` | Float (inches) | `10.0` | Origin-to-origin spacing between copies. Used when `distribution` is `"distance"`. Must be greater than `0`. |
| `"gap"` | Float (inches) | `5.0` | Empty space between adjacent copies. Used when `distribution` is `"gap"`. Must be greater than `0`. |
| `"exact_spacing"` | Boolean | `true` | When `true`, copies use the literal spacing value. When `false`, copies are redistributed evenly across the available path length. Applies to both `"distance"` and `"gap"` distributions. |
| `"orientation"` | String | `"stairlike"` | How copies are rotated to follow the path. |
| `"margin_mode"` | String | `"absolute"` | How the margin at the path endpoints is measured. |
| `"smooth_corners"` | Boolean | `false` | Smooth the orientation transition at path corners. |

**`"placement_mode"` values**

| Value | Description |
|---|---|
| `"entire_curve"` | Distribute copies across the full path as a single unit. |
| `"segments"` | Distribute copies independently within each path segment. |
| `"corners"` | Place exactly one copy at each path corner, ignoring count and distance. |

**`"distribution"` values**

| Value | Description |
|---|---|
| `"count"` | Place exactly `count` copies, evenly spaced along the path. |
| `"distance"` | Place as many copies as fit, spaced `distance` inches apart (origin-to-origin). |
| `"gap"` | Place as many copies as fit, with `gap` inches of empty space between adjacent copies. |

**`"orientation"` values**

| Value | Description |
|---|---|
| `"none"` | Copies keep the original orientation of the control component. |
| `"stairlike"` | Copies rotate to follow the path's horizontal turns (yaw only). |
| `"roadlike"` | Copies rotate to follow the path in full 3D (yaw and pitch). |

**`"margin_mode"` values**

| Value | Description |
|---|---|
| `"absolute"` | Margin is an absolute distance (inches) from each path endpoint. |
| `"relative"` | Margin is a fraction of the total path length. |

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

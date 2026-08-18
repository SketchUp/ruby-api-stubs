# @title Declarative UI Schema

# Declarative UI Schema Reference

This document describes the JSON schema returned by `Sketchup::Procedure#declare_params_and_ui`.
It declares the UI widgets that SketchUp will display for a procedure and lets the user edit the
procedure's parameter values.

---

## Top-level structure

The JSON document is an object whose keys are **parameter IDs** (or widget IDs) and whose values
are **widget declarations**. Key order determines the top-to-bottom order of items in the generated
layout.

```json
{
  "count":      { ... },
  "dimensions": { "widgetType": "group", ... },
  "offsets":    { "widgetType": "table", ... }
}
```

Each leaf-widget key becomes a key in the `parameters` hash that SketchUp passes (as
`args[:parameters]`) to `Sketchup::Procedure#validate`, `Sketchup::Procedure#run`, and
`Sketchup::Procedure#get_widget_states`. Parameter keys arrive in the hash as symbols. Container
types (`group`, `table`) are layout wrappers; their child parameter IDs are flat (not prefixed)
and appear at the top level of the same parameters hash.

---

## Common properties

| Property      | Type   | Required                        | Description |
|---|---|---|---|
| `widgetType` | string | yes                             | One of `"text"`, `"select"`, `"checkbox"`, `"slider"`, `"button"`, `"group"`, `"table"` |
| `valueType`  | string | yes (leaf widgets except button, select, and checkbox) | Depends on widget — see per-widget tables below. |
| `label`       | string | yes (all except `"table"`)      | User-facing localized text. For most widgets this is the form-row label. For `"button"` it becomes the button face text. For `"group"` it becomes the group-box title. For `"table"` it is optional and shown as a title above the grid. |
| `description` | string | no                              | User-visible description which may be shown as a tooltip |

### Dynamic widget states (`enabled` / `visible`)

Widget enabled and visible states are **not** declared in the JSON. Instead, they are controlled
dynamically by implementing `Sketchup::Procedure#get_widget_states(args)` on your procedure
class. SketchUp calls this method after the UI is first populated and after every parameter
change, so widget states can react to the current parameter values. The current parameter values
are available as `args[:parameters]`.

The method should return a hash mapping widget IDs (as strings) to a state hash containing the
keys `:enabled` and/or `:visible` (both booleans). All widgets default to enabled and visible.
Only widget IDs present in the returned hash are updated; absent IDs keep their current state.
Within a state hash, either key may be omitted to leave that aspect unchanged.

```ruby
def get_widget_states(args)
  parameters = args[:parameters]
  {
    "scale"  => { enabled: parameters[:count] > 2 },
    "offset" => { visible: parameters[:count] > 3 }
  }
end
```

Implementing `get_widget_states` is optional — omit it entirely if your procedure's widget states
never change.

---

## Widget specifications

### `text` + `int`

Integer input box (with an optional spin button). The parameter is reported as an `Integer`.

| Property    | Type   | Required | Notes |
|---|---|---|---|
| `minValue` | number | no       | Minimum allowed value |
| `maxValue` | number | no       | Maximum allowed value |

```json
"count": {
  "widgetType": "text",
  "valueType": "int",
  "label": "Array count",
  "description": "Number of copies in the array",
  "minValue": 2,
  "maxValue": 100
}
```

---

### `text` + `float`

Floating point input box (with an optional spin button). The parameter is reported as a `Float`.

| Property    | Type   | Required | Notes |
|---|---|---|---|
| `minValue` | number | no       | Minimum allowed value |
| `maxValue` | number | no       | Maximum allowed value |
| `step`      | number | no       | Single-step increment |

```json
"scale": {
  "widgetType": "text",
  "valueType": "float",
  "label": "Scale factor",
  "minValue": 0.01,
  "maxValue": 100.0,
  "step": 0.1
}
```

---

### `text` + `length`

Unit-aware length input. The parameter is reported as a `Float` in **inches** (SketchUp's internal
length unit). Display is formatted according to the model's units settings.

| Property   | Type   | Required | Notes |
|---|---|---|---|
| `minValue` | number | no       | Inclusive lower bound (in inches). When omitted, no lower bound is enforced and zero or negative values are accepted. |
| `maxValue` | number | no       | Inclusive upper bound (in inches). When omitted, no upper bound is enforced. |

```json
"offset": {
  "widgetType": "text",
  "valueType": "length",
  "label": "Offset"
}
```

---

### `text` + `area`

Unit-aware area input. The parameter is reported as a `Float` in **square inches**. Display is
formatted according to the model's units settings.

```json
"surface": {
  "widgetType": "text",
  "valueType": "area",
  "label": "Surface area"
}
```

---

### `text` + `volume`

Same as `area` but for volumetric values. The parameter is reported as a `Float` in **cubic
inches**.

```json
"capacity": {
  "widgetType": "text",
  "valueType": "volume",
  "label": "Volume"
}
```

---

### `text` + `angle`

Unit-aware angle input. The parameter is reported as a `Float` in **radians** (SketchUp's internal
angle unit). Display is formatted according to the model's angle precision settings (typically
degrees, e.g. `"45.0°"`). Accepts degree strings and slope notation (e.g. `"1:2"`). Negative
values are valid.

```json
"rotation": {
  "widgetType": "text",
  "valueType": "angle",
  "label": "Rotation angle"
}
```

---

### `text` + `string`

Single-line text input. The parameter is reported as a `String`. The value updates when the user
finishes editing (focus leaves the field).

```json
"name": {
  "widgetType": "text",
  "valueType": "string",
  "label": "Name"
}
```

---

### `select` + `string`

Drop-down or list box selector control. By default it renders as a drop-down. Set `"listbox": true`
to render as a single-selection list box that shows all options at once.
The parameter is reported as a `String` (the selected key, not the display text).
`valueType` defaults to `"string"` and may be omitted.

| Property        | Type           | Required | Default  | Notes |
|---|---|---|---|---|
| `options`       | array of pairs | yes      | —        | Each element is `[key, display_text]`, both strings |
| `listbox`       | bool           | no       | `false`  | When `true`, renders as a list box instead of a drop-down |

```json
"operation": {
  "widgetType": "select",
  "label": "Operation",
  "options": [
    ["intersect", "Intersect"],
    ["union",     "Union"],
    ["subtract",  "Subtract"]
  ]
}
```

```json
"operation_list": {
  "widgetType": "select",
  "label": "Operation",
  "listbox": true,
  "options": [
    ["intersect", "Intersect"],
    ["union",     "Union"],
    ["subtract",  "Subtract"]
  ]
}
```

---

### `checkbox` + `bool`

Check box. The parameter is reported as a `Boolean` (`true` or `false`).
`valueType` defaults to `"bool"` and may be omitted.

```json
"mirror": {
  "widgetType": "checkbox",
  "label": "Mirror result",
  "description": "Reflect the geometry across the center axis"
}
```

---

### `slider` + `int`

Horizontal slider with an adjacent live-update label. The parameter is reported as an `Integer`.

Tick count = `(maxValue - minValue) / step`. Reported value = `minValue + tick * step`.

| Property    | Type   | Required | Default    | Notes |
|---|---|---|---|---|
| `minValue` | number | yes      | —          | Integer minimum |
| `maxValue` | number | yes      | —          | Integer maximum |
| `step`      | number | no       | `1`        | Increment between values |

```json
"segments": {
  "widgetType": "slider",
  "valueType": "int",
  "label": "Segments",
  "minValue": 4,
  "maxValue": 64,
  "step": 4
}
```

---

### `slider` + `float`

Same widget as `slider` + `int` but internally scaled to integer ticks. The parameter is reported
as a `Float`.

| Property    | Type   | Required | Default  | Notes |
|---|---|---|---|---|
| `minValue` | number | yes      | —        | |
| `maxValue` | number | yes      | —        | |
| `step`      | number | no       | `0.01`   | Tick resolution |

Tick count = `round((maxValue - minValue) / step)`. Reported value = `minValue + tick * step`.

```json
"blend": {
  "widgetType": "slider",
  "valueType": "float",
  "label": "Blend",
  "minValue": 0.0,
  "maxValue": 1.0,
  "step": 0.05
}
```

---

### `button`

Push button. `valueType` is ignored (may be omitted). The button does **not** appear as an entry
in the `parameters` hash and has no stored value. The form row has an empty label — the button
text comes from `label`.

```json
"reset": {
  "widgetType": "button",
  "label": "Reset to defaults"
}
```

---

### `group`

A labeled group that wraps a sub-form of child widgets. Children can be any widget type,
including nested `group` and `table` containers.

| Property   | Type   | Required | Notes |
|---|---|---|---|
| `label`    | string | yes      | Becomes the group title |
| `children` | object | yes      | Nested widget declarations; keys are parameter IDs, same rules as top-level |

```json
"dimensions": {
  "widgetType": "group",
  "label": "Dimensions",
  "children": {
    "width":  { "widgetType": "text", "valueType": "length", "label": "Width" },
    "height": { "widgetType": "text", "valueType": "length", "label": "Height" }
  }
}
```

---

### `table`

A fixed-column grid of label-widget cell pairs, optionally preceded by a title. Each cell
contains a label to the left and the widget to the right. Children fill in row-wise order (i.e. left-to-right,
top-to-bottom). Only leaf widget types are allowed as children (`group` and `table` are rejected).

| Property   | Type    | Required | Notes |
|---|---|---|---|
| `label`    | string  | no       | If present, shown as a title above the grid |
| `columnCount` | integer | yes   | Number of grid columns (≥ 1) |
| `children` | object  | yes      | Leaf widget declarations only; keys are parameter IDs |

```json
"offsets": {
  "widgetType": "table",
  "label": "Offsets",
  "columnCount": 3,
  "children": {
    "x": { "widgetType": "text", "valueType": "length", "label": "X" },
    "y": { "widgetType": "text", "valueType": "length", "label": "Y" },
    "z": { "widgetType": "text", "valueType": "length", "label": "Z" },
    "w": { "widgetType": "text", "valueType": "length", "label": "W" }
  }
}
```

Visual layout for the example above (3 columns, 4 items → 2 rows):

```
Offsets
[X] [length widget]   [Y] [length widget]   [Z] [length widget]
[W] [length widget]
```

---

## Full example — one of each widget type

```json
{
  "count": {
    "widgetType": "text",
    "valueType": "int",
    "label": "Count",
    "minValue": 1,
    "maxValue": 50
  },
  "scale": {
    "widgetType": "text",
    "valueType": "float",
    "label": "Scale",
    "minValue": 0.1,
    "maxValue": 10.0,
    "step": 0.1
  },
  "dimensions": {
    "widgetType": "group",
    "label": "Dimensions",
    "children": {
      "width":  { "widgetType": "text", "valueType": "length", "label": "Width" },
      "height": { "widgetType": "text", "valueType": "length", "label": "Height" }
    }
  },
  "offsets": {
    "widgetType": "table",
    "label": "Offsets",
    "columnCount": 3,
    "children": {
      "x": { "widgetType": "text", "valueType": "length", "label": "X" },
      "y": { "widgetType": "text", "valueType": "length", "label": "Y" },
      "z": { "widgetType": "text", "valueType": "length", "label": "Z" }
    }
  },
  "rotation": {
    "widgetType": "text",
    "valueType": "angle",
    "label": "Rotation angle"
  },
  "name": {
    "widgetType": "text",
    "valueType": "string",
    "label": "Name"
  },
  "operation": {
    "widgetType": "select",
    "label": "Operation",
    "options": [["add", "Add"], ["subtract", "Subtract"]]
  },
  "operation_list": {
    "widgetType": "select",
    "label": "Operation",
    "listbox": true,
    "options": [
      ["intersect", "Intersect"],
      ["union",     "Union"],
      ["subtract",  "Subtract"]
    ]
  },
  "mirror": {
    "widgetType": "checkbox",
    "label": "Mirror result"
  },
  "blend": {
    "widgetType": "slider",
    "valueType": "float",
    "label": "Blend",
    "minValue": 0.0,
    "maxValue": 1.0,
    "step": 0.05
  },
  "segments": {
    "widgetType": "slider",
    "valueType": "int",
    "label": "Segments",
    "minValue": 4,
    "maxValue": 64,
    "step": 4
  },
  "reset": {
    "widgetType": "button",
    "label": "Reset to defaults"
  }
}
```

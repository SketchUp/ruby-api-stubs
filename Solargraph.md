# Solargraph for VSCode

https://marketplace.visualstudio.com/items?itemName=castwide.solargraph
https://github.com/castwide/vscode-solargraph

## Using the API stubs for auto-complete

Generate YARD docs:

```
yard gems sketchup-api-stubs
```

Add `sketchup-api-stubs` to the `require` config of your
project's `.solargraph.yml` file.

```
require_paths:
- "C:/Program Files/SketchUp/SketchUp 2019/Tools"
- src

require:
- sketchup-api-stubs
```

Restart VSCode for config to take effect.

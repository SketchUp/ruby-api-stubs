# @title Importer Options

# Importer Options

The SketchUp Ruby API provides access to several importers that are shipped with SketchUp. Lists of valid options supported by each importer are given below.

# Note
The option `merge_coplaner_faces` was a typo in SketchUp 2018. This option will still work in the current SketchUp, but has been changed to `merge_coplanar_faces`.

## All Importers
- `show_summary` - Boolean to indicate whether to show the summary dialog.

## 3ds Max (3DS)
- `units` - Specifies the import units.
	- values: `"model"`, `"inch"`, `"foot"`, `"yard"`, `"mile"`, `"mm"`, `"cm"`, `"m"`, or `"km"`
- `merge_coplanar_faces` - Boolean to indicate whether to merge coplanar faces.

## Collada (DAE)
- `validate_dae` - Boolean to indicate whether to validate the input file.
- `merge_coplanar_faces` - Boolean to indicate whether to merge coplanar faces.

## Digital Elevation Model (DEM/DDF)
- `max_points` - Integer to specify the number of TIN points.
- `generate_texture` - Boolean to indicate whether to generate gradient textures.

## 3D Autocad (DWG/DXF)
- `import_materials` - Boolean to indicate whether to import materials. Added in SU2019.
- `merge_coplanar_faces` - Boolean to indicate whether to merge coplanar faces.
- `orient_faces` - Boolean to indicate whether to orient faces consistently.
- `preserve_origin` - Boolean to indicate whether to preserve drawing origin.

## Industry Foundation Classes (IFC)
### Options for SketchUp 2027+
- `preserve_origin` - Boolean to indicate whether to preserve drawing origin.
- `tags_handling` - Specifies how tags are handled.
	- values: `"use_ifc_classes"`, `"use_ifc_layers"`, `"do_not_create_tags"`
- `ifc_types_filter` - Array of IFC types to import. Case-insensitive.
- `entity_names_filter` - Array of substrings to match against entity names. Case-sensitive.
- `guids_filter` - Array of GUIDs to import.
- `filter_mode` - Determines how multiple filters are combined. Case-insensitive.
	- values: `"and"`, `"or"`. Default: `"and"`.
### Options for older SketchUp versions
- No options are supported for this type on import.

## Google Earth (KMZ)
- `validate_kmz` - Boolean to indicate whether to validate the input file.
- `merge_coplanar_faces` - Boolean to indicate whether to merge coplanar faces.

## STereoLithography (STL)
- `units` - Specifies the import units.
	- values: `"inch"`, `"feet"`, `"mm"`, `"cm"`, `"m"`
- `merge_coplanar_faces` - Boolean to indicate whether to merge coplanar faces.
- `preserve_origin` - Boolean to indicate whether to preserve drawing origin.
- `swap_yz` - Boolean to indicate whether to swap Y and Z coordinates (Y is up).
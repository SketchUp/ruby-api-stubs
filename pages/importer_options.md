# @title Importer Options

# Importer Options

The SketchUp Ruby API provides access to several importers that are shipped with SketchUp. Lists of valid options supported by each importer are given below.

## All Importers
- `show_summary` - Boolean to indicate whether to show the summary dialog.

## 3ds Max (3DS)
- `units` - Specifies the import units.
	- values: `"model"`, `"inch"`, `"foot"`, `"yard"`, `"mile"`, `"mm"`, `"cm"`, `"m"`, or `"km"`
- `merge_coplaner_faces` - Boolean to indicate whether to merge coplaner faces.

## Collada (DAE)
- `validate_dae` - Boolean to indicate whether to validate the input file.
- `merge_coplaner_faces` - Boolean to indicate whether to merge coplaner faces.

## Digital Elevation Model (DEM/DDF)
- `max_points` - Integer to specify the number of TIN points.
- `generate_texture` - Boolean to indicate whether to generate gradient textures.

## 3D Autocad (DWG/DXF)
- `merge_coplaner_faces` - Boolean to indicate whether to merge coplaner faces.
- `orient_faces` - Boolean to indicate whether to orient faces consistently.
- `preserve_origin` - Boolean to indicate whether to preserve drawing origin.

## Industry Foundation Classes (IFC)
- No options are supported for this type on import.

## Google Earth (KMZ)
- `validate_kmz` - Boolean to indicate whether to validate the input file.
- `merge_coplaner_faces` - Boolean to indicate whether to merge coplaner faces.

## STereoLithography (STL)
- `units` - Specifies the import units.
	- values: `"inch"`, `"feet"`, `"mm"`, `"cm"`, `"m"`
- `merge_coplaner_faces` - Boolean to indicate whether to merge coplaner faces.
- `preserve_origin` - Boolean to indicate whether to preserve drawing origin.
- `swap_yz` - Boolean to indicate whether to swap Y and Z coordinates (Y is up).
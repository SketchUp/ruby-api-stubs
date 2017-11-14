# @title Exporter Options

# Exporter Options

The SketchUp Ruby API has different exporter plugins that are shipped with the
product. Below is a list of the **valid** options that each exporter will accept.
If an **invalid** option is provided, it will be silently ignored.

## All Exporters
- `:show_summary` - Boolean to indicate whether to show the summary dialog.

## 3ds Max (3DS)
- `:units` - Specifies the export units.
	- values: `"model"`, `"inch"`, `"foot"`, `"yard"`, `"mile"`, `"mm"`, `"cm"`, `"m"`, or `"km"`
- `:geometry` - Specifies what geometry to export.
	- values: `"full_hierarchy"`, `"by_layer"`, `"by_material"`, or `"single_object"`
- `:doublesided_faces` - Boolean to indicate whether to export 2-sided faces.
- `:faces` - Specifies how to export faces.
	- values: `"not_two_sided"`, `"two_sided_as_material"`, `"two_sided_as_geometry"`
- `:edges` - Boolean to indicate whether to export edges.
- `:texture_maps` - Boolean to indicate whether to export texture maps.
- `:preserve_texture_coords` - Boolean to indicate whether texture coordinates are to be preserved.
- `:cameras` - Boolean to indicate whether to export cameras from Scenes.
- `:selectionset_only` - Boolean to indicate whether to export the selected entities.

## Collada (DAE)
- `:triangulated_faces` - Boolean to indicate whether to export triangulated faces.
- `:doublesided_faces` - Boolean to indicate whether to export 2-sided faces.
- `:edges` - Boolean to indicate whether to export edges.
- `:author_attribution` - Boolean to indicate whether to export model credits.
- `:hidden_geometry` - Boolean to indicate whether to export hidden geometry.
- `:preserve_instancing` - Boolean to indicate whether to preserve component hierarchies.
- `:texture_maps` - Boolean to indicate whether to export texture maps.
- `:selectionset_only` - Boolean to indicate whether to export the selected entities.
- `:camera_lookat` - Boolean to indicate whether to export the camera looking at the target.

## 3D Autocad (DWG/DXF)
- `:acad_version` - Specifies the autocad_version to export.
	- values: `"acad_12"`, `"acad_13"`, `"acad_14"`, `"acad_2000"`, `"acad_2004"`, `"acad_2007"`, `"acad_2010"`, `"acad_2013"`
- `:faces_flag` - Boolean to indcate whether to export faces.
- `:construction_geometry` - Boolean to indicate whether to export construction geometry.
- `:dimensions` - Boolean to indicate whether to export dimensions.
- `:text` - Boolean to indicate whether to export text objects.
- `:edges` - Boolean to indicate whether to export edges.

## Filmbox Autodesk (FBX)
- `:units` - Specifies the export units.
	- values: `"model"`, `"inch"`, `"foot"`, `"yard"`, `"mile"`, `"mm"`, `"cm"`, `"m"` or `"km"`
- `:triangulated_faces` - Boolean to indicate whether to export triangulated faces.
- `:doublesided_faces` - Boolean to indicated whether to export 2-sided faces.
- `:texture_maps` - Boolean to indicate whether to export texture maps.
- `:seperate_disconnected_faces` - Boolean to indicate whether to export separate disconnected faces.
- `:swap_yz` - Boolean to indicate whether to swap Y and Z coordinates (Y is up).
- `:selectionset_only` - Boolean to indicate whether to export the selected entities.

## Industry Foundation Classes (IFC)
- `:hidden_geometry` - Boolean to indicate whether to export hidden geometry.
- `:doublesided_faces` - Boolean to indicate whether to export 2-sided faces.
- `:ifc_mapped_items` - Boolean to indicate whether to export IFC mapped items.
- `:ifc types` - An Array of strings indicating IFC elements to export. One or more of the following values can be in the array.
	- values: `"IfcNonDefined"`, `"IfcBeam"`, `"IfcBuilding"`, `"IfcBuildingElementProxy"`, `"IfcBuildingStorey"`, `"IfcColumn"`, `"IfcCurtainWall"`, `"IfcDoor"`, `"IfcFooting"`, `"IfcFurnishingElement"`, `"IfcMember"`, `"IfcPile"`, `"IfcPlate"`, `"IfcProject"`, `"IfcRailing"`, `"IfcRamp"`, `"IfcRampFlight"`, `"IfcRoof"`, `"IfcSite"`, `"IfcSlab"`, `"IfcSpace"`, `"IfcStair"`, `"IfcStairFlight"`, `"IfcWall"`, `"IfcWallStandardCase"`, `"IfcWindow"`

## Google Earth (KMZ)
- `:author_attribution` - Boolean to indicate whether to export model credits.
- `:hidden_geometry` - Boolean to indicate whether to export hidden geometry

## OBJ
- `:units` - Specifies the export units.
	- values: `"model"`, `"inch"`, `"foot"`, `"yard"`, `"mile"`, `"mm"`, `"cm"`, `"m"`, or `"km"`
- `:triangulated_faces` - Boolean to indicate whether to export triangulated faces.
- `:doublesided_faces` - Boolean to indicate whether to export 2-sided faces.
- `:edges` - Boolean to indicate whether to export edges.
- `:texture_maps` - Boolean to indicate whether to export texture maps.
- `:swap_yz` - Boolean to indicate whether to swap Y and Z coordinates (Y is up).
- `:selectionset_only` - Boolean to indicate whether to export the selected entities.

## Softimage XSI 3D Image (XSI)
- `:units` - Specifies the export units.
	- values: `"model"`, `"inch"`, `"foot"`, `"yard"`, `"mile"`, `"mm"`, `"cm"`, `"m"`, or `"km"`
- `:triangulated_faces` - Boolean to indicate whether to export triangulated faces.
- `:doublesided_faces` - Boolean to indicate whether to export 2-sided faces.
- `:edges` - Boolean to indicate whether to export edges.
- `:texture_maps` - Boolean to indicate whether to export texture maps.
- `:swap_yz` - Boolean to indicate whether to swap Y and Z coordinates (Y is up).
- `:selectionset_only` - Boolean to indicate whether to export the selected entities.

## Virtual Reality Modeling Language (WRL)
- `:doublesided_faces` - Boolean to indicate whether to export 2-sided faces.
- `:cameras` - Boolean to indicate whether to export cameras.
- `:use_vrml_orientation` - Boolean to indicate whether to use VRML standard orientation.
- `:edges` - Boolean to indicate whether to export edges.
- `:texture_maps` - Boolean to indicate whether to export texture maps.
- `:allow_mirrored_components` - Boolean to indicate whether to allow mirrored components.
- `:material_override` - Boolean to indicate whether to check for material overrides.

## PDF (Windows)
- `:output_profile_lines` (default = `true`)
- `:output_section_lines` (default = `true`)
- `:edge_extensions` (default = `true`)
- `:match_screen_profiles` (default = `true`)
- `:match_screen_section` (default = `true`)
- `:match_screen_extensions` (default = `true`)
- `:full_scale` (default = `true`)
- `:map_fonts` (default = `true`)
- `:drawing_units` (default = `Length::Inches`)
- `:extension_units` (default = `Length::Feet`)
- `:height_units` (default = `Length::Feet`)
- `:model_units` (default = `Length::Feet`)
- `:width_units` (default = `Length::Feet`)
- `:extension_length` (default = `0.0`)
- `:line_width` (default = `0.0`)
- `:line_width_section` (default = `0.0`)
- `:length_in_drawing` (default = `1.0`)
- `:length_in_model` (default = `1.0`)
- `:window_height` (default = `1.0`)

## PDF (Mac)
- `:line_weight` (default = `0.5`)
- `:imageWidth` (default = `50`)
- `:imageHeight` (default = `50`)

## STereoLithography (STL)
- `:units` - Specifies the export units.
	- values: `"model"`, `"inch"`, `"feet"`, `"mm"`, `"cm"`, `"m"`
- `:format` - Specifies how the data is represented in the file.
	- values: `"ascii"`, `"binary"`
- `:selectionset_only` - Boolean to indicate whether to export the selected entities.
- `:swap_yz` - Boolean to indicate whether to swap Y and Z coordinates (Y is up).
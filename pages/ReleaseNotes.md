# @title Release Notes

# Release Notes

The SketchUp API has been around in some fashion since the early days of SketchUp, and with every release we have extended its capabilities. Read below for what's been changed.

Though our adoption rate to the latest version is quite high, it can take time after a release before everyone upgrades. If you are building scripts that rely on functionality from the most recent version, be sure to check the {Sketchup.version} to make sure your users are able to run your script:

    # You do something like this in the initialization routine of your extension.
    version_required = 16
    if (Sketchup.version.to_f < version_required)
      UI.messagebox("You must have Sketchup 20#{version_required} to run this "\
                    "extension. Visit sketchup.com to upgrade.")
    else
      # Your stuff...
    end

## Build Numbers

Here are the build numbers for recent SketchUp releases. Note that build numbers in languages besides English are larger for each release, so it is best to check for builds that are greater than or equal to the numbers here.

- **SU2024.0** = 24.0.484 on Windows 64-bit, 24.0.483 on Mac 64-bit.
- **SU2023.1.3** = 23.1.340 on Windows 64-bit, 23.1.341 on Mac 64-bit.
- **SU2023.1.2** = 23.1.315 on Windows 64-bit, 23.1.314 on Mac 64-bit.
- **SU2023.1.1** = 23.1.313 on Windows 64-bit, 23.1.312 on Mac 64-bit.
- **SU2023.0.2** = 23.0.419 on Windows 64-bit, 23.0.418 on Mac 64-bit.
- **SU2023.0.1** = 23.0.397 on Windows 64-bit, 23.0.398 on Mac 64-bit.
- **SU2023.0** = 23.0.367 on Windows 64-bit, 23.0.366 on Mac 64-bit.
- **SU2022.0.1** = 22.0.354 on Windows 64-bit, 22.0.353 on Mac 64-bit.
- **SU2022.0** = 22.0.316 on Windows 64-bit, 22.0.315 on Mac 64-bit.
- **SU2021.1.2** = 21.1.332 on Windows 64-bit, 21.1.331 on Mac 64-bit. (Contained no Ruby API changes)
- **SU2021.1.1** = 21.1.299 on Windows 64-bit, 21.1.298 on Mac 64-bit.
- **SU2021.1** = 21.1.279 on Windows 64-bit, 21.1.278 on Mac 64-bit.
- **SU2021.0.1** = 21.0.391 on Windows 64-bit, 21.0.392 on Mac 64-bit. (Contained no Ruby API changes)
- **SU2021.0** = 21.0.339 on Windows 64-bit, 21.0.338 on Mac 64-bit.
- **SU2021.0** = 21.0.114 on Windows 64-bit, 21.0.113 on Mac 64-bit.

- **SU2020.2** = 20.2.172 on Windows 64-bit, 20.2.171 on Mac 64-bit.
- **SU2020.1.1** = 20.1.235 on Windows 64-bit. (Contained no Ruby API changes)
- **SU2020.1** = 20.1.229 on Windows 64-bit, 20.1.228 on Mac 64-bit.
- **SU2020.0** = 20.0.133 on Windows 64-bit, 20.0.134 on Mac 64-bit.

- **SU2019.3** = 19.3.253 on Windows 64-bit, 19.3.252 on Mac 64-bit.
- **SU2019.2** = 19.2.222 on Windows 64-bit, 19.2.221 on Mac 64-bit.
- **SU2019.1** = 19.1.174 on Windows 64-bit, 19.1.173 on Mac 64-bit.
- **SU2019** = 19.0.685 on Windows 64-bit, 19.0.684 on Mac 64-bit.

- **SU2018 M1** = 18.1.1180 on Mac 64-bit. (Contained no Ruby API changes)
- **SU2018** = 18.0.16975 on Windows 64-bit, 18.0.16976 on Mac 64-bit.

- **SU2017** = 17.0.18899 on Windows 64-bit, 17.0.18898 on Mac 64-bit.

- **SU2016** = 16.0.19912 on Windows 64-bit, 16.0.19911 on Windows 32-bit, 16.0.19913 on Mac 64-bit.

- **SU2015 M2** = 15.2.685 on Windows 64-bit, 15.2.687 on Windows 32-bit, 15.2.686 on Mac 64-bit.
- **SU2015 M1** = 15.1.106 on Windows 64-bit, 15.1.105 on Windows 32-bit, 15.1.104 on Mac 64-bit.
- **SU2015** = 15.0.9350 on Windows 64-bit, 15.0.9351 on Windows 32-bit, 15.0.9349 on Mac 64-bit.

- **SU2014 M1** = 14.1.1282 on Windows, 14.1.1283 on Mac.
- **SU2014** = 14.0.4900 on Windows, 14.0.4899 on Mac.

- **SU2013 M2** = 13.0.4812 on Windows, 13.0.4811 on Mac.
- **SU2013 M1** = 13.0.4124 on Windows, 13.0.4123 on Mac.
- **SU2013** = 13.0.3689 on Windows, 13.0.3688 on Mac.

- **SU8.0 M2** = 8.0.11752 on Windows, 8.0.11751 on Mac.
- **SU8.0 M1** = 8.0.4811 on Windows, 8.0.4810 on Mac.
- **SU8.0** = 8.0.3117 on Windows, 8.0.3161 on Mac.

- **SU7.1 M2** = 7.1.6860 on Windows, 7.1.6859 on Mac.
- **SU7.0 M1** = 7.0.10247 on Windows, 7.0.10246 on Mac.
- **SU7.0** = 7.0.8657 on Windows, 7.0.8656 on Mac.

- **SU6 M6** = 6.4.265 on Windows, 6.4.263 on Mac.

# What's new in SketchUp 2024.0

## Ruby API Additions and Improvements

* Added support for export option `:page_range` for {Layout::Document#export}.
* Added {Sketchup::View#graphics_engine}.
* Added rendering options support for Ambient Occlusion:
    * {Sketchup::RenderingOptions} keys added:
        * `"AmbientOcclusion"`
        * `"AmbientOcclusionDistance"`
        * `"AmbientOcclusionIntensity"`
    * {Sketchup::RenderingOptionsObserver} constants:
        * `ROPSetAOEnabled`
        * `ROPSetAODistance`
        * `ROPSetAOIntensity`
* {Sketchup::RenderingOptions#[]=} will now raise an `ArgumentError` if the given value cannot be set
  for the given key. This is a breaking change since earlier versions of the API would not indicate any
  failures for such erroneous calls.

## Ruby API Bug Fixes

* Fixed issue on Mac where {UI.create_cursor} would provide an incorrect hotspot
* Fixed regression in {Sketchup.resize_viewport} introduced in SketchUp 2023.1 on Windows.
* Fixed {Layout::Entity#move_to_layer} when moving an entity from a nonshared layer.
* Changed {Sketchup::Model#close} to set focus to the next open model window on macOS.
* Fixed regression from SketchUp 2023.1 with the Ruby Console on Windows where new-line
  character was incorrectly added to the end of `print` calls.

# What's new in SketchUp 2023.1

## Ruby API Additions and Improvements
* Added method {Layout::Document#render_mode_override}
* Added method {Layout::Document#render_mode_override=}
* Added constant {Layout::SketchUpModel::NO_OVERRIDE}
* Added method {Layout::SketchUpModel#output_entities}
* Added method {Layout::PageInfo#image_display_resolution}
* Added method {Layout::PageInfo#image_display_resolution=}
* Added method {Layout::PageInfo#image_output_resolution}
* Added method {Layout::PageInfo#image_output_resolution=}
* `output_resolution:` is no longer a supported value in the export options dictionary. Instead, use {Layout::PageInfo#output_resolution=} and {Layout::PageInfo#image_output_resolution=}.
* Added method {Sketchup::ArcCurve#circular?}

# What's new in SketchUp 2023.0.2

## Ruby API Bug Fixes

* Fixed issues with {Sketchup::Entities.erase_entities} incorrectly throwing
  and `ArgumentError` claiming an instance was open for editing.

# What's new in SketchUp 2023.0.1

## Ruby API Bug Fixes

* Fixed issues with {UI.inputbox} and {UI.messagebox} not being modal.
* Fixed issue where new Ruby toolbars might not show up by default.

# What's new in SketchUp 2023.0

## Overlays

Overlays are a new SketchUp API capability which allows developers to persist extension behaviors while you are using other tools. Effectively, extensions can now continue to analyze, visualize, and create information in the modeling window as you continue evolving a SketchUp model using other native tools and extensions. Previously, extension developers were limited to drawing information to the modeling window only when their extension had a tool active .

## Update OpenSSL to 1.1.1o

The version of OpenSSL in Ruby was updated to 1.1.1o.

## Ruby API Additions and Improvements

* Added {Sketchup.resize_viewport}
* Made {Sketchup.require} skip `.rbs` files that aren't SketchUp scrambled Ruby
  files. This change is to avoid conflict with Ruby 3's introduction of `.rbs`
  file extension for type definitions. (https://github.com/ruby/rbs)
* Removed restrictions for {Sketchup::View#load_texture} that demanded it was
  only used when there was a Ruby tool on the tool stack.
* Added class {Sketchup::Overlay}
* Added class {Sketchup::OverlaysManager}
* Added method {Sketchup::Model#overlays}
* Added method {Layout::AutoTextDefinition#sequence_type}
* Added method {Layout::AutoTextDefinition#sequence_type=}
* Added constant {Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_DOCUMENT}
* Added constant {Layout::AutoTextDefinition::SEQUENCE_TYPE_PER_PAGE}
* Added method {Sketchup::ComponentDefinition#thumbnail_camera}
* Added method {Sketchup::ComponentDefinition#thumbnail_camera=}

## Ruby API Bug Fixes

* Fixed {Sketchup::DefinitionList#load} not loading component if the model already contained a
  different component associted with the same path.
* Fixed crashes that could occur from erasing instances that was part of the current {Sketchup::Model#active_path}. The following methods will now raise an `ArgumentError` when attempting to erase entities related to the active editing path:
    * {Sketchup::Entities#erase_entities}
    * {Sketchup::Drawingelement#erase!}
    * {Sketchup::DefinitionList#remove}
* Fixed return value of {Sketchup::EntitiesBuilder#valid?} to correctly return
  `true` instead of `0` for success.
* Fixed a bug where calling {Sketchup::LayerFolder#parent} on a top level tag folder returned an incorrect type.

# What's new in SketchUp 2022.0.1

## Ruby API Bug Fixes

* In SketchUp 2022.0 a bug might lead to an available component definition name being incorrectly renamed. Or a name that should be unavailable would be duplicated. This was fixed in SketchUp 2022.0.1.

# What's new in SketchUp 2022.0

## EntitiesBuilder

We added a new interface, {Sketchup::EntitiesBuilder}, with the purpose of being able to generate bulk geometry with similar speed to {Geom::PolygonMesh} + {Sketchup::Entities#fill_from_mesh} but with the simplicity and per-entity control that {Sketchup::Entities} offer. This is particularly useful for importers where you can expect to see major performance improvements by switching from {Sketchup::Entities#add_face} to {Sketchup::EntitiesBuilder#add_face}.

## Universal binary support on Mac

We now support universal binaries on macOS that run natively on both Apple silicon and Intel-based Mac computers.

## Update OpenSSL to 1.1.1l

The version of OpenSSL in Ruby was updated to 1.1.1l.

## Made Ruby Console output more consistent

Earlier versions of SketchUp printed the return values to Ruby Console commands
different depending on platform. This has been made consistent following the
pattern of Ruby's own IRB tool. A side effect of this is that the console now
uses `.inspect` instead of `.puts` when printing the returned value which makes
it less ambiguous in many cases. For example `nil` vs `""` that would otherwise
print a blank line in both cases.

## Ruby API Additions and Improvements

* Added method {Sketchup::ComponentDefinition#save_copy}
* Added method overload to {Sketchup::ComponentDefinition#save_as} allowing saving the definition with an older versions of the file format
* Added {Layout::AutoTextDefinition#number_style}, Deprecated {Layout::AutoTextDefinition#page_number_style}
* Added method {Layout::AutoTextDefinition#number_style=}, Deprecated {Layout::AutoTextDefinition#page_number_style=}
* Added method {Layout::AutoTextDefinition#end_page}
* Added method {Layout::AutoTextDefinition#end_page=}
* Added method {Layout::AutoTextDefinition#start_page}
* Added method {Layout::AutoTextDefinition#start_page=}
* Added method {Layout::AutoTextDefinition#increment}
* Added method {Layout::AutoTextDefinition#increment=}
* Added method {Layout::AutoTextDefinition#sequence_format}
* Added method {Layout::AutoTextDefinition#sequence_format=}
* Added method {Layout::AutoTextDefinition#renumber}
* Added {Layout::AutoTextDefinition::TYPE_MODEL_RATIO}
* Added {Layout::AutoTextDefinition::TYPE_MODEL_SCENE_NAME}
* Added {Layout::AutoTextDefinition::TYPE_MODEL_SCENE_DESCRIPTION}
* Added {Layout::AutoTextDefinition::TYPE_MODEL_SCALE}
* Added {Layout::AutoTextDefinition::TYPE_MODEL_SECTION_NAME}
* Added {Layout::AutoTextDefinition::TYPE_MODEL_SECTION_SYMBOL}
* Added {Layout::AutoTextDefinition::TYPE_PAGE_COUNT}
* Added {Layout::AutoTextDefinition::TYPE_SEQUENCE}
* Added method {Sketchup::Entities#build}
* Added class {Sketchup::EntitiesBuilder}
* Added method {UI::Command#proc}
* Added method {UI::Command#get_validation_proc}
* Added method {UI::Command#extension}
* Added method {UI::Command#extension=}
* Added method {Sketchup::AppObserver#onExtensionsLoaded}

## Ruby API Bug Fixes

* Fixed a bug in {UI::HtmlDialog#initialize} where `max_height` and `max_width` were swapped when `use_content_size` was set to `true`.
* Fixed a bug where {UI::HtmlDialog} position was set incorrectly when `use_content_size` was set to `true`.
* Fixed a bug in {UI::HtmlDialog} where `use_content_size` was not persisted (when `preference_key` is set). Due to this bug, in some instances, HtmlDialog changed size when it was re-created.
* Fixed a bug on Mac where the size and the position of the {UI::HtmlDialog} were not persisted when SketchUp was closed without first closing the {UI::HtmlDialog} window.
* Fixed a crash with {UI.savepanel} on Mac when using a filename with a `*` prefix; `response = UI.savepanel('Save Image', nil, '*.png')`.
* Fixed "EntityInfo" not being a supported parameter for {UI.show_inspector}
* Fixed "EntityInfo" not being being listed in {UI.inspector_names}
* Fixed {Sketchup::Face#uv_tile_at} could return incorrect values in some edge cases.

# What's new in SketchUp 2021.1.1

## Ruby API Bug Fixes

* Fixed [regression](https://github.com/SketchUp/api-issue-tracker/issues/646) in {UI::HtmlDialog} from SketchUp 21.1.0 where the methods on JavaScript's `sketchup` object for registered action callbacks were missing after navigating away from the initial page.

# What's new in SketchUp 2021.1

## Upgrade Ruby to 2.7.2

For SketchUp 2021.1 we have upgraded the version of Ruby that we ship with SketchUp from 2.7.1 to 2.7.2.

Notable [bug-fix in Ruby 2.7.2](https://bugs.ruby-lang.org/issues/17152) is correcting a bug that prevented profiling tools such as ruby-prof from reporting correct results.

## Update OpenSSL to 1.1.1k

The version of OpenSSL in Ruby was updated to 1.1.1k.

## Ruby Console Improvements

* The Ruby Console now remembers its visibility between sessions.
* The Ruby Console was moved from the Windows menu to the new Developer menu.

## Ruby API Additions and Improvements

* Upgraded CEF (used by {UI::HtmlDialog}) to version 88.
* Added key `use_content_size` to {UI::HtmlDialog#initialize}
* Added method {UI::HtmlDialog#get_position}
* Added method {UI::HtmlDialog#get_size}
* Added method {UI::HtmlDialog#get_content_size}
* Added method {UI::HtmlDialog#set_content_size}
* Added method {Sketchup.focus}
* Added constant {UI::HtmlDialog::CEF_VERSION}
* Added constant {UI::HtmlDialog::CHROME_VERSION}
* Added method {Sketchup::Face#clear_texture_projection}
* Added method {Sketchup::Face#texture_positioned?}
* Added method {Sketchup::Face#texture_projected?}
* Added method {Sketchup::Face#uv_tile_at}
* Added method overload to {Sketchup::Face#position_material} allowing projected materials to be applied.
* Added method {Sketchup::DefinitionList#import}
* Added method {Sketchup::Group#glued_to}
* Added method {Sketchup::Group#glued_to=}
* Added method {Sketchup::Image#glued_to}
* Added method {Sketchup::Image#glued_to=}
* Added method overload to {Sketchup::ComponentInstance#glued_to=} allowing to glue to groups images, and components.
* Increased display time for {UI::Notification} to 10 seconds.
* Add a separator when a menu is added for the first time to a top level menu. This creates a visual distinction between built-in menus and that of extensions.
* Added support for adding submenus to the Developer menu.
* {Geom::PolygonMesh} is now faster when looking up points in large meshes.
  This also improve performance when adding points to large meshes. Note that
  the mesh need to be created with an estimated total number of points for this
  performance improvement to kick in. The lookup of points for large meshes are
  now O(logN) instead of O(N^2).

## Ruby API Bug Fixes

* Fixed crash when passing invalid parameters to {Sketchup::Model#drawing_element_visible?}.
* Fixed {UI::HtmlDialog#bring_to_front} on Mac, such that calling the method sets focus on the HtmlDialog. This makes the behavior of the method consistent with that on Windows.
* Fixed {UI::HtmlDialog#set_size} and {UI::HtmlDialog#set_position} on Windows, such that calling the methods doesn't set the focus on the HtmlDialog. This makes the behavior of the method consistent with that on Mac.
* Fixed {UI::HtmlDialog#set_can_close} Mac implementation so that the callback provided can properly prevent the window from closing.
* Fixed crash in {Sketchup::Image#image_rep} when the Image lacks a texture.
* Fixed {UI.show_model_info} not showing the chosen page on Mac.
* Fixed {UI.show_model_info} not supporting English page names on localized build on Mac.

# What's new in SketchUp 2021.0

## Upgrade Ruby to 2.7.1

For SketchUp 2021.0 we have upgraded the version of Ruby that we ship with SketchUp from 2.5.5 to 2.7.1. Developers should verify that their extensions are working as expected in this new version of Ruby.

## Ruby API Additions and Improvements

* Added class {Sketchup::LayerFolder}
* Added method {Sketchup::Layer#folder}
* Added method {Sketchup::Layer#folder=}
* Added method {Sketchup::Layers#add_folder}
* Added method {Sketchup::Layers#count_folders}
* Added method {Sketchup::Layers#count_layers}
* Added method {Sketchup::Layers#each_folder}
* Added method {Sketchup::Layers#each_layer}
* Added method {Sketchup::Layers#folders}
* Added method {Sketchup::Layers#layers}
* Added method {Sketchup::Layers#purge_unused_folders}
* Added method {Sketchup::Layers#remove_folder}
* Added method {Sketchup::LayersObserver#onLayerFolderAdded}
* Added method {Sketchup::LayersObserver#onLayerFolderChanged}
* Added method {Sketchup::LayersObserver#onLayerFolderRemoved}
* Added method {Sketchup::LayersObserver#onParentFolderChanged}
* Added method {Sketchup::Page#layer_folders}
* Added method signature to {Sketchup::Page#set_visibility}: `Sketchup::Page#set_visibility(layer_group, visibility)`
* Added method {Sketchup.redo}
* Added method {Sketchup::ComponentDefinition#live_component?}
* Added new method signature to {Sketchup.open_file}: `Sketchup.open_file(filename, with_status: true)`
    This signature will open the new SketchUp file format if the format is newer.
* Deprecated old method signature: `Sketchup.open_file(filename)`
    Because opening a newer file format might lead to data missing, extension
    developers have to explicitly migrate to the new signature.
    This is to ensure that no extension inadvertently open and save a file
    without knowing of potential data loss.
* Added new method signature to {Sketchup::DefinitionList#load}: `Sketchup::DefinitionList#load(filename, allow_newer: true)`
* Added method {Sketchup::Skp.read_guid} for reading a model's guid without having to open it in SketchUp.
* Updated OpenSSL to 1.1.1g.

## Ruby API Bug Fixes

* Fixed {Sketchup::Texture#filename} such that it appends a file extension matching the data format it was loaded from when the internal texture filename is missing the extension.

# What's new in SketchUp 2020.2

## Ruby and C Exchange API

To allow better interoperability of the Ruby API and C API within the SketchUp application we introduced the ability to exchange entities and image reps between the APIs.

Entities because it's a key type and ImageRep because it can be an expensive object to copy.

* `SUEntityToRuby`
* `SUEntityFromRuby`
* `SUImageRepToRuby`
* `SUImageRepFromRuby`

For more details refer to the C API documentation.

## Ruby API Additions and Improvements

* Added scope filter to {Sketchup::Model#find_entity_by_persistent_id}.

## Ruby API Bug Fixes

* Fixed Unicode characters not displaying correctly in the Ruby Console.
* Fixed crash in {UI::HtmlDialog} when closing the dialog right after opening it.
* Fixed DWG import option, `:preserve_origin` is ignored.

# What's new in SketchUp 2020.1

## Ruby API Additions and Improvements

* Added {Sketchup::Entities#weld}
* Added {Sketchup::Page#use_hidden_geometry=}
* Added {Sketchup::Page#use_hidden_geometry?}
* Added {Sketchup::Page#use_hidden_objects=}
* Added {Sketchup::Page#use_hidden_objects?}
* Deprecated {Sketchup::Page#use_hidden?}
* Added {Layout::Grid#major_spacing=}
* Added {Layout::Grid#minor_divisions=}
* Added {Layout::Grid#major_color=}
* Added {Layout::Grid#minor_color=}
* Added {Layout::Grid#show=}
* Added {Layout::Grid#show_major=}
* Added {Layout::Grid#show_minor=}
* Added {Layout::Grid#print=}
* Added {Layout::Grid#in_front?}
* Added {Layout::Grid#in_front=}
* Added {Layout::Grid#clip_to_margins?}
* Added {Layout::Grid#clip_to_margins=}
* Added {Layout::SketchUpModel#camera_modified?}
* Added {Layout::SketchUpModel#reset_camera}
* Added {Layout::SketchUpModel#effects_modified?}
* Added {Layout::SketchUpModel#reset_effects}
* Added {Layout::SketchUpModel#style_modified?}
* Added {Layout::SketchUpModel#reset_style}
* Added {Layout::SketchUpModel#layers_modified?}
* Added {Layout::SketchUpModel#reset_layers}
* Fixed bug in {Layout::LinearDimension#text} where the display text of the copy returned the plain text instead
* Fixed bug in {Layout::AngularDimension#text} where the display text of the copy returned the plain text instead
* Fixed issues with {Layout::SketchUpModel#current_scene} and {Layout::SketchUpModel#current_scene_modified?} Unexpectedly raising an assert stating that "The most recently selected scene no longer exists"
* Fixed {Layout::Document#export} documentation
* Fixed {Layout::SketchUpModel#render} documentation

# What's new in SketchUp 2020.0

## Ruby API Additions and Improvements

* Added {Geom.tesselate} that takes a set of loop points and return triangle sets.
* Added optional `:normals` parameter to {Sketchup::View#draw} allowing polygons to be drawn with lighting.
* Added ability to draw textured polygons with {Sketchup::View#draw} and {Sketchup::View#draw2d}
    * Added optional `:uvs` and `:texture` parameters to {Sketchup::View#draw} and {Sketchup::View#draw2d}.
    * Added {Sketchup::View#load_texture}.
    * Added {Sketchup::View#release_texture}.
* Added ability to vertically align text drawn with {Sketchup::View#draw_text}. New option parameter `:vertical_align` can be set to one of the following values: {TextVerticalAlignBoundsTop}, {TextVerticalAlignBaseline}, {TextVerticalAlignCapHeight} or {TextVerticalAlignCenter}.
* Added {Sketchup::View#text_bounds}, returning the bounding box of the area SketchUp uses to draw text using {Sketchup::View#draw_text}.
* Added {Sketchup::Model#active_path=} to allow the API to open an instance path for editing by the user.
* Added new unit constants:
    * {Length::Yard}
    * {Length::SquareYard}
    * {Length::CubicYard}
    * {Length::Liter}
    * {Length::USGallon}
* Added `AreaPrecision` and `VolumePrecision` to `Sketchup.active_model.options["UnitsOptions"]`
* Added {Sketchup::Layer#display_name} - this will return `"Untagged"` for layer0 while the old {Sketchup::Layer#name} will continue to return `"Layer0"`.
* Additional entity types now return PIDs for {Sketchup::Entity#persistent_id}:
    * {Sketchup::Layer}
    * {Sketchup::LineStyle}
* Deprecated {Sketchup::ComponentDefinition#insertion_point} and {Sketchup::ComponentDefinition#insertion_point=} as this feature was removed in SketchUp. It now returns the origin of the definition and the setter is now a noop.

## Ruby API Bug Fixes

* Fixed potential crash in {UI::HtmlDialog}'s callbacks due to values not protected against Ruby's garbage collection.
* Fixed model validation where it incorrectly flagged some valid UV mapping as invalid and reset it.

# What's new in SketchUp 2019.3

## Ruby API Bug Fixes

* (Win) Updated libcrypto and libssl dlls to 1.1.1c.
* Fixed {UI.openURL} to not perform URL encoding on Mac for cross platform consistency.

# What's new in SketchUp 2019.2

## Ruby API Additions and Improvements

* Added {Sketchup::Selection#invert}
* Added `:scale_factor` option to {Sketchup::View#write_image} allowing control over the scale of viewport dependant elements such as text heights, arrow heads, line widths, stipple patterns, etc
* Documented `:source => :framebuffer` option in {Sketchup::View#write_image} that dumps the current frame as drawn in viewport. This has existed since SketchUp 7
* Added the new area and volume unit settings to {Sketchup::OptionsProvider}
* Added {Sketchup.format_volume}
* Added constants to the {Length} class for area and volume units to be used with the OptionsProvider
* Added checks to prevent Image materials from being assigned to normal drawing elements. Doing so will now throw an `ArgumentError`
* Increased performance of PNG image export for colorized materials. Previously, it used to use max compression.  Now we use a more balanced compression setting. This affects {Sketchup::Texture#write} as well as the texture writer. We also added some general optimizations for {Sketchup::Texture#write}. On a 4Kx4K texture we saw the processing time drop from ~50 seconds to ~6 seconds.
* Added {Sketchup::Tool#onMouseWheel} event to the {Sketchup::Tool} interface

## Ruby API Bug Fixes

* Updated Ruby from 2.5.1 to 2.5.5 to address a logic bug in Ruby
* Fixed possible crash in {Sketchup::Entities#clear!}
* Fixed a bug in .skm serialisation where arrays in material attributes were not written out to file

# What's new in SketchUp 2019.1

## Ruby API Bug Fixes

* Fixed the accepted types for the "point" in {Sketchup::Entities#add_text}
* Fixed {Sketchup::Model#save} for `VERSION_2019`
* Fixed crash when `rendering_options["RenderMode"] = 4`

# What's new in SketchUp 2019

## Upgrade to Ruby 2.5.1

We have upgraded from Ruby 2.2.4 to Ruby 2.5.1. These upgrades tend to introduce subtle changes to the Ruby language that sometimes are difficult for us to find in our internal testing. Our testing has not found any major compatibility issues between Ruby 2.2.4 and the new 2.5.1 and we expect the upgrade for most developers should be relatively straightforward. Please note that any compiled C extensions will need to be rebuilt. Ensure OpenSSL library calls are compatible.

## Dashes

Stipples and dots and dotted stipples, oh my! SketchUp has added a Dashes feature that allows for unique line styles to be applied and controlled at the Layer level. We have exposed this new feature in the Ruby and C APIs. See the Improvements and Fixes sections of each API for a list of classes and methods we’ve added. See the documentation for each API for complete documentation on how to use these features.

## InstancePath Support for Dimensions and Text

In SketchUp 2019 we have added {Sketchup::InstancePath} support to our existing {Sketchup::DimensionLinear} and {Sketchup::Text} classes. Now when creating a Linear Dimension, or an attached Text object, you can attach it to a nested entity by providing a valid `InstancePath` object, or an array version of an instance path. This will allow you to create a dimension in model space, but attach it to a valid nested entity. The linear dimension or text will then be attached to that entity, exactly how it is when linear dimensions and text are created via the UI.

## Ruby API Breaking Changes

* SketchUp changed how it presents units.
Now it adds a space between the number and the unit indicator. If your extension uses a method of your own creation to interpret strings formatted by SketchUp you might find it doesn't work anymore if you don't account for the extra space. For example:

  * Before 2019: `"2.5mm"`
  * Now in 2019: `"2.5 mm"`

* Ruby Version Upgrade - Ruby 2.5 removed the method: `Dir::Tmpname.make_tmpname`. If you were using that method, you will need to find an alternative
* {Sketchup::Entity#delete_attribute} no longer returns `true` when attempting to delete a non-existing dictionary key

## Ruby API Additions and Improvements

* Upgraded Ruby version from 2.2.4 to 2.5.1 for both Mac and Windows
* Upgraded CEF (used by {UI::HtmlDialog}) to version 64.
* Added {Sketchup::Tools#active_tool} that returns the active Ruby tool
* Added `import_materials` option to {Sketchup::Model#import} for dwg importer
* Added instance path support for {Sketchup::Entities#add_text}
* Added instance path support for {Sketchup::Entities#add_dimension_linear}
* Added {Sketchup::LineStyles} class
* Added {Sketchup::LineStyle} class
* Added {Sketchup::Layer#line_style=} class
* Added {Sketchup::Model#line_styles} class
* Improved {String#to_l} which parses a {String} into a {Length} is now able to parse strings that have a space between the number and unit. It can parse both `"2.5mm"` and `"2.5 mm"`
* Improved {Sketchup::InstancePath} now accepts a path that includes a {Sketchup::Image} object

## Ruby API Bug Fixes
* Fixed a crash upon exit on Mac when a {Sketchup::FrameChangeObserver} is active
* Fixed an issue where {Sketchup::Model} could become unusable after calling `.singleton_class`.
* Fixed Ruby-created dimensions don't highlight when non-associated
* Fixed Ruby-created dimensions don’t hide correctly when "Hide Foreshortened" is enabled
* Fixed SketchUp crash when constructing {Geom::PolygonMesh} with negative values
* Fixed Ruby DWG Importer units were not working correctly
* Fixed {Geom::PolygonMesh} will not accept negative numbers as parameter
* Fixed Extensions are loaded in a non-deterministic order on High Sierra
* Fixed SketchUp crashes when attempting to load component made in newer version
* Fixed typo concerning `merge_coplanar_faces` in the Importer Options documentation and code (old spelling remains for compatibility)
* Fixed regression in SU2018 when renaming a material with the same name. This used to throw an error when it should have been a no-op
* Fixed regression in SU2018 where `model.materials["MaterialName"]` might fail
* Fixed a crash when loading a component made in a newer version of SketchUp
* Fixed unicode characters in the Ruby Console on Windows
* Fixed {UI::HtmlDialog} such that non-resizable dialog doesn't use width and height from preferences.
* {Sketchup::View#write_image} should throw an error if there are more than 5 params passed in.
* Fixed {UI::HtmlDialog} content flashing when resizing.

## SketchUp C API Documentation
* Updated SDK docs on VC++ runtime versions

## LayOut Ruby API for SketchUp
* Added {Layout::Document#save} will now throw an error if the file is already open in LayOut
* Added {Layout::Path#winding} to get the current winding direction of the path. Returns one of the new constants {Layout::Path::PATH_WINDING_NONE}, {Layout::Path::PATH_WINDING_CLOCKWISE}, or {Layout::Path::PATH_WINDING_COUNTER_CLOCKWISE}.
* Added {Layout::SketchUpModel#dash_scale} to get the current scale value of stipples in a SketchUp Model Ref. A value of 0.0 indicates the dash scale is automatically determined based on the line weight.
* Added {Layout::SketchUpModel#dash_scale=} to set the scale value of stipples for the SketchUp Model Ref. A value at or below 0.0 will cause the scale to automatically be determined by the line weight.
* Fix documentation of {Layout::Path#append_point}. When appending a bezier path segment, the params should have been (`control_1, control_2, point`) and not (`point, control_1, control_2`).

# What's new in SketchUp 2018 M0

## LayOut Ruby API for SketchUp

This is a new Ruby based API for SketchUp that allows developers to read and write LayOut files using the regular SketchUp Ruby API. We’ve taken the existing LayOut C API and wrapped it with a Ruby layer and then included that inside SketchUp. This is proving to be a great working model for how to expose API functionality to our base C API and then expose that exact functionality to a Ruby layer without duplicating code.

## {Sketchup.send_to_layout}

Along with the LayOut Ruby API for SketchUp we added the ability to open LayOut files with the LayOut application. This gives developers the ability to write a SketchUp extension purely in Ruby that parses the SketchUp model, writes a LayOut file and opens the LayOut file in LayOut in one smooth motion. This helps create a stronger connection between SketchUp and LayOut and can improve user workflows through the use of developer created extensions.

## ImageRep

Hello Ruby API developers, meet {Sketchup::ImageRep}. This new class exposes a data structure internal to SketchUp called an `ImageRep`. `ImageRep` is an in-memory representation of an image (as opposed to a reference to an image inside the SketchUp model). This class exposes a number of image reading and manipulation tools to the Ruby API. Now you can get the color of a pixel at a specified uv coordinate from an `ImageRep`, get an array of all pixel data from an `ImageRep`, set pixel data in an `ImageRep`, save an `ImageRep` out to disk, and more. Of course we’ve also included utilities to convert an in-model texture to an `ImageRep`, and assign an `ImageRep` object directly to a material as the material’s texture. This new class opens up a lot of opportunities to read and manipulate images in the model. Check out the `ImageRep` class in Ruby API docs for more information.

## Exposed Importer/Exporter Options to Ruby API

We have exposed all the options for our native importers and exporters to Ruby. See the Ruby API documentation on {Sketchup::Model#import} and {Sketchup::Model#export}.

## New SketchUp Features in the API

A big round of applause for the SketchUp Core team for the improvements they have added to the SketchUp application. Well, we also wanted to make sure that these new features were accessible to our developer community. We have introduced new API features for Named Section Planes and Filled Section Cuts. Awesome!

## Ruby Handling of Advanced Attributes

SketchUp core added a feature called Advanced Attributes. This adds some new attribute dictionaries and attributes to Component Instances and Definitions by default on every model. It should be noted that we have blocked the ability to delete the dictionaries via Ruby. This should not be possible, please let us know if you find a scenario where you are able to do so. You can however delete the key/value pairs. The UI will recreate those key value pairs if they do not exist.

## Ruby Improvements and Fixes

* Upgraded CEF (used by {UI::HtmlDialog}) to version 56.
* Added method: {UI.refresh_toolbars}
* Added constants to {Geom::PolygonMesh}:
    * {Geom::PolygonMesh::MESH_NORMALS}
    * {Geom::PolygonMesh::MESH_POINTS}
    * {Geom::PolygonMesh::MESH_UVQ_BACK}
    * {Geom::PolygonMesh::MESH_UVQ_FRONT}
* Added method: {Sketchup::DefinitionList#remove}
* Added {Sketchup::Page} methods:
    * {Sketchup::Page#include_in_animation?}
    * {Sketchup::Page#include_in_animation=}
* Added {Sketchup::SectionPlane} methods:
    * {Sketchup::SectionPlane#name}
    * {Sketchup::SectionPlane#name=}
    * {Sketchup::SectionPlane#symbol}
    * {Sketchup::SectionPlane#symbol=}
* Added {Sketchup::ImageRep} class:
    * {Sketchup::ImageRep#load_file}
    * {Sketchup::ImageRep#save_file}
    * {Sketchup::ImageRep#initialize}
    * {Sketchup::ImageRep#bits_per_pixel}
    * {Sketchup::ImageRep#size}
    * {Sketchup::ImageRep#data}
    * {Sketchup::ImageRep#width}
    * {Sketchup::ImageRep#height}
    * {Sketchup::ImageRep#row_padding}
    * {Sketchup::ImageRep#colors}
    * {Sketchup::ImageRep#color_at_uv}
    * {Sketchup::ImageRep#set_data}
* Added {Sketchup::Materials#unique_name}
* Added {Sketchup::Texture#image_rep}
* Added {Sketchup::Image#image_rep}
* Added {Sketchup::Material#texture=} to accept {Sketchup::ImageRep} object as one of the data types it uses.
* Added rendering options support for filled section cuts:
    * {Sketchup::RenderingOptions} keys added:
        * `"SectionCutFilled"`
        * `"SectionDefaultFillColor"`
    * {Sketchup::RenderingOptionsObserver} constants:
        * `ROPSetSectionCutFilled`
        * `ROPSetSectionDefaultFillColor`
* Added {Sketchup.send_to_layout}
* Added options for all 3D exporters and imports

### Bug Fixes

* **Breaking Change** - Fixed a bug in {Sketchup::Material.name=} which allowed the API to create materials with duplicate names. Now it will raise `ArgumentError` if it's not unique to the model.
* **Breaking Change** - Changed {Sketchup::Color} class to be common between LayOut and SketchUp. The potentially breaking change is that {Sketchup::Color} changed to now compare RGBA values instead of the Ruby objects.
* **Breaking Change** - Changed {Geom::Transformation#identity?} So that it now properly returns `true` in all cases where the transformation matrix match the values for the identity transformation.
* Fixed `Geom::Transformation.scaling(float)` and `Geom::Transformation#initialize(float)` to not set the 15th component of the matrix, but instead adjust the other fields.
* Fixed a crash when trying to call {Sketchup::View#animation=} from {Sketchup::Animation#stop}
* Fixed a crash when calling {UI.menu} with empty string.
* {Sketchup::Pages#erase} will now correctly delete the Scene tab, like the UI does.
* Fixed a bug in {Sketchup::ArcCurve#end_angle} where it sometimes added 360 degrees to the returned value.
* Fixed an issue where a Ruby Importer could cause the Import file dialog to render the drop-down items incorrectly under Windows due to pipe characters in the description.
* Fixed a crash when using `-RubyStartup` command line argument with a file that raises errors while loading.
* Fixed a crash in {UI.create_cursor} that would happen if the length was less than 4 characters.
* Fixed a rare crash in {Sketchup::MaterialsObserver}.

# What's new in SketchUp 2017 M0

## Ruby 2.2

Yes, its that time again - time to update our Ruby Interpreter. We have upgraded
to Ruby version 2.2.4. We're hopeful that extensions that use pure Ruby will be
able to upgrade to Ruby 2.2 with little difficulty. Please note that any
compiled C extensions will need to be rebuilt.

## Embedded Web Framework

One of the developer features we are most excited about for SketchUp 2017 is a
new Web Dialog framework. For SketchUp 2017 we are bundling the Chromium Web
Browser with the SketchUp installer. What?! Yes, now SketchUp comes pre-packaged
with a single web browser for both Mac and Windows clients. No more trauma from
banging your head against the wall while trying to make your web pages
compatible with Internet Explorer 8-11 and Safari.

In order to maintain backwards compatibility, we have implemented a new
HtmlDialog class in the Ruby API and we have not altered the existing WebDialog
class. Extensions that use WebDialogs should continue to work with no changes
required.

## New Ruby API Documentation

We have been working to improve our Ruby API documents and the publication
process. We switched from an internally tweaked and maintained version of RDoc
to YARD for our documentation generation. In the process we had to make many
alterations to our documentation in the source code, we made a specialized YARD
template to suit our needs. What we have now is a simple way to regenerate the
documents in a matter of seconds, and we can push them to a git repo, where they
are immediately available publicly. A process that used to take hours of manual
html editing and special access to our Sketchup.com webserver, has been reduced
to about a 10 minute process to generate and publish the documentation.

## SketchUp C API Parity - continued

We have focused on adding features to the SketchUp C API in 2017 to provide
greater benefit to our developers and as part of our continued effort to fully
deprecate and remove the old C++ API in the future. We are continuing to add more
until we gain enough coverage to consider the C API at feature parity with the
deprecated C++ API.

## Updated Compilers

We updated our compilers for Windows and macOS. On Windows we are now using
Visual Studio 2015 SP1 (targeting Windows 7). On MacOs we are using XCode 7.2.1
(with deployment target 10.10).

## New Ruby API Features

* Added class {Sketchup::InstancePath}
* Added class {Sketchup::Http::Request}
* Added class {Sketchup::Http::Response}
* Added class {UI::Notification}
* Added method {Sketchup::Entity#persistent_id}
* Added method {Sketchup::InputPoint#instance_path}
* Added method {Sketchup::Model#find_entity_by_persistent_id}
* Added method {Sketchup::Model#instance_path_from_pid_path}
* Added method {Sketchup::Materials#load}
* Added method {Sketchup::Material#save_as}
* Added method {UI.scale_factor}

## Bug Fixes/Small Improvements

### Ruby API

* Fixed {Sketchup::Entities#transform_by_vectors} so that it performs a bounds
  check on the second array. An `ArgumentError` is raised if the second array
  has less items than the first.
* Added ability to {UI::HtmlDialog}s to receive JavaScript arrays and objects
  using callbacks.
* Removed a limitation with {UI::HtmlDialog} where callbacks were required to
  have at least one argument. Now no arguments are required.
* {UI.show_model_info} no longer opens a Model Info page for `"Extensions"` as
  that page is now replaced by the Extension Manager dialog.

# What's new in SketchUp 2016 M0

## A new LayOut API

We’re proud to announce our first step towards an extension ecosystem for LayOut. Using this new API developers can now open, create, modify, save, and export .layout files. Practically, this means that other applications can import or export the .layout file format using the C API. (This includes creating a .layout file from SketchUp). We have several sample scripts for developers to try out at release. Check out the API documentation in the [Developer Center](http://extensions.sketchup.com/developer_center/layout_c_api/layout/index.html) for more information.

## Digitally Signing Extensions - Extensions Loading Policy

With SketchUp 2016 we introduced the ability for users to select which Extension Loading Policy they want to use. The options are "Identified Extensions Only", "Approve Unidentified Extensions", and "Unrestricted.

The developer side of this feature is known as a Digital Signature. All SketchUp extensions for 2016 or later will now require a Digital Signature to run in the highest security mode - "Identified Extensions Only". If the user has chosen "Approve Unidentified Extensions" then all signed extensions will load automatically and any unsigned extension will have to be approved by the user. All extensions signed and unsigned, will load in "Unrestricted" mode.

SketchUp 2016 M0 installs in "Unrestricted" mode by default.

To digitally sign your extension, simply upload your .rbz package to our new Digital Signature and Encryption page and we will sign it and return it to you. Visit the new [Extension Digital Signature page](https://extensions.sketchup.com/en/developer_center/extension_signature).

You will need to sign your extension each time you make code changes and want to re-release it. You will need to be a registered Developer on the Extension Warehouse to be able to sign or encrypt extensions. [Apply here!](http://http://extensions.sketchup.com/en/developer)

## Ruby Encryption 2.0

Goodbye .rbs and Hello .rbe! We have added a new encryption that you can use to help protect your extension Intellectual Property (IP). SketchUp 2016 can read both .rbe and .rbs filetypes. This should help make sure that we maintain backwards compatibility for authors who need some time to re-encrypt their extensions. To use our new encryption, simply upload an unencrypted version of your .rbz package to our new Digital Signature and Encryption page and we will encrypt it and return it to you. Visit the new [Extension Digital Signature page](https://extensions.sketchup.com/en/developer_center/extension_signature) page here for more information.

You will need to be a registered Developer on the Extension Warehouse to be able to sign or encrypt extensions. [Apply here!](http://extensions.sketchup.com/en/developer)

## Developer Center

Between the new Extension Digital Signature Page, the new LayOut C API and a whole lot of future ideas and potential, we have decided to create a new central location to organize our developer resources, API documentation, etc. Visit (and bookmark!): [https://extensions.sketchup.com/en/developer_center](https://extensions.sketchup.com/en/developer_center)

## Observer Upgrades

We have been working on finding ways to make observers more stable and reliable for all developers. Most of these changes happen under the hood and are not entirely visible to developers. To help with that, we added a few Ruby Warnings that appear in the Ruby Console, and two debugging methods that will determine whether those warnings are shown: {Sketchup.debug_mode=} and {Sketchup.debug_mode?}.

*   Observer events are now queued up until the active operation is done.
*   {Sketchup::ModelObserver} doesn't notify about intermediate Ruby operations ("transactions").
*   Observers should no longer return zombie Ruby objects for entities. See the Observers 2016 pdf for more information.
*   Removed dummy methods from all observer base classes in order to improve performance.See [this pdf](https://assets.sketchup.com/files/ewh/Observers2016.pdf) for a more in depth look at the changes we made to the Observers.

## SketchUp C API Parity - continued

We have focused on adding features to the SketchUp C API in 2016 to provide greater benefit to our developers and as part of our continued effort to fully deprecate and remove the old C++ API in the future. Below is a complete list of functions that we have added for 2016. We are continuing to add more until we gain enough coverage to consider the C API at feature parity with the deprecated C++ API.

## New Ruby API

*   Added optional arguments to {Sketchup::View.draw_text} which define the appearance of the text drawn.
*   Added {Sketchup::Axes} class, exposing the drawing axes in SketchUp via {Sketchup::Model#axes} and {Sketchup::Page#axes}.
*   Added {Sketchup::PickHelper#window_pick}.
*   Added {Sketchup::PickHelper#boundingbox_pick}.
*   Added {Sketchup::Texture#write}.
*   Added {Sketchup::ComponentDefinition#count_used_instances}
*   Added {Sketchup::Model#export} to export pdf files. This is a vector export, not a rasterized image wrapped up in a pdf container.
*   {UI::Command} class and {UI.create_cursor} were modified to accept vector format (SVG under Windows, PDF under OSX). Both toolbars and cursors can now accept vector icons.
*   Added two methods to assist with debugging extensions. {Sketchup.debug_mode=} and {Sketchup.debug_mode?} will allow developers to toggle the display of the following notifications:
*   Ruby Console now warns about Ruby operations left open. Leaving operations open is typically a bad practice. We are warning developers that they should try to find a different way of doing what they want to do.
*   Ruby Console now warns when a user tries to create a nested operation. Starting a new operation while one is still open is a bad practice. We would like developers to be more aware that they are doing this so that they can fix their code.

## Bug Fixes/Small Improvements

*   Fixed {Sketchup::Pages#erase} so that it doesn't incorrectly create an undo operation any more.
*   Removed instance of a zombie instance with Curves. See the Observers 2016 pdf for more information.
*   Fixed issue where {Sketchup::ViewObserver} does not fire when using the Zoom tool in parallel projection mode
*   Deprecated the Piranisi .epx import
*   IFC import failure resolved by library updates to Windows and Mac.
*   Fixed Collada export fails with :camera_lookout value with message "Pointer being freed was never allocated"
*   Fixed Collada export does not export cameras
*   Resolved multiple visual defects with Extension description box.
*   {Sketchup.version_number} now returns the correct value.

# What's new in SketchUp 2015 M2

We fixed a crash on Mac that could occur when a timer was stopped via {UI.stop_timer} from within the timer procedure.

# What's new in SketchUp 2015

## Renaming the Plugins Menu

We renamed the "Plugins" menu to "Extensions" to be more inline with our current naming conventions. This should not break existing plugins. Adding a menu item to the "Plugins" menu will still work, it will be added to the "Extensions" menu.

## New! - Extension Licensing API

One of the new features that we have added to API is the ability to create licensed extensions. The Extension Warehouse has been upgraded to manage and distribute these licenses.

*   Added {Sketchup::Licensing} module
*   Added {Sketchup::Licensing::ExtensionLicense} class

## New! - Classifier API

*   These classes and methods have been added in conjunction with the Classifier Tool that has already been implemented in the SketchUp User Interface.
*   Added {Sketchup::ClassificationSchema} class
*   Added {Sketchup::Classifications} class
*   Added {Sketchup::Model#classifications}
*   Added {Sketchup::ComponentDefinition#set_classification_value}
*   Added {Sketchup::ComponentDefinition#get_classification_value}
*   Added {Sketchup::ComponentDefinition#add_classification}
*   Added {Sketchup::ComponentDefinition#remove_classification}

## New API Features

*   Added {Sketchup::AppObserver#onActivateModel}
*   Added {Sketchup::Camera#center_2d}
*   Added {Sketchup::Camera#is_2d?}
*   Added {Sketchup::Camera#scale_2d}
*   Added {Sketchup::Camera#fov_is_height?}
*   Added {Sketchup::Group#definition}
*   Added {Sketchup::Layers#remove}
*   Added {Sketchup::Material#colorize_deltas}
*   Added {Sketchup::Material#colorize_type}
*   Added {Sketchup::Material#colorize_type=}
*   Added {Sketchup::Model#close}
*   Added {Sketchup::Model#find_entity_by_id}
*   Added {Sketchup.is_64bit?}
*   Added {UI.select_directory}
*   Added `"DisplaySectionCuts"` to the RenderingOptions
*   Added `"DrawBackEdges"` to the RenderingOptions
*   Added `"SectionCutDrawEdges"` to the RenderingOptions

## 64 Bit related changes to our Ruby API

*   {Length} no longer derives from `Float`. It should act the same in 2015 as it has in previous version of SketchUp This was required as part of our 64-bit upgrade changes
*   We have separated the `GEM_PATH` and `GEM_HOME` directories for 32-bit and 64-bit builds.

## Webdialog JS error Dialogs for Developers

In previous versions of SketchUp on Windows, users would see javascript error popup boxes anytime there was malformed js code on a webpage. We muted those popups in a previous release. Due to popular demand, we have brought them back, this time for developers only! Developers can enable js error popups by creating this key in their Windows registry: `HKEY_CURRENT_USER/Software/SketchUp/SketchUp 2015/WebDialogs/ShowErrorDialogs` and adding a `DWORD` value set to `1`.

## Bug Fixes and Improvements

*   We are now setting the initial working directory to the user’s Documents directory.
*   Restored `$0` to return `"SketchUp"` as it did prior to SketchUp 2014.
*   Fixed bug where `point3d.vector_to(inputpoint)` would return incorrect result.
*   Cleaned up inconsistent operation name and id used in the {Sketchup::Edge} class.
*   Fixed crashes caused by internal calls to Ruby from worker threads.
*   Prevented crash when there is an uncaught Ruby error happening in {Sketchup::Importer#load_file}
*   {Geom::BoundingBox.corner} now raises an IndexError when given an incorrect index.
*   Fixed a bug where {Geom::BoundingBox.intersect} could yield incorrect results.
*   Fixed a bug where {Geom::BoundingBox.intersect} would not accept an array of vertices or boundingboxes.
*   Fixed a bug where {Geom::PolygonMesh.normal_at} would not return correct vertex normal if the model was modified in the same processing loop as the script obtaining the PolygonMesh.
*   Fixed a bug where a frozen array might raise an error when a method acts on that array, even if the method does not modify the array.
*   Fixed a bug where InputPoint objects could cause a crash in certain circumstances.
*   Changed the classifications folder inside the Program Files folder from `C:\Program Files (x86)\SketchUp\SketchUp 2015\Classifications` to `C:\Program Files (x86)\SketchUp\SketchUp 2015\ShippedClassifications`. Now `Sketchup.find_support_file("Classifications")` will return the classifications folder in the user folder, instead of in the application folder.
*   Setting material during {Sketchup::ModelObserver#onPreSaveModel} did not work in SU2014. This should be fixed for 2015.
*   {Sketchup::ViewObserver} notification used to fail when in parallel projection. This has been fixed.
*   Custom context menus in custom tools have been improved. It is now possible to determine what type of entity was clicked on, before opening the context menu. Therefore custom context menus can be written to handle different types of entities differently.
*   Exploding an image entity now returns an array of entities. These include all associated edges, the face, edgeuse objects, etc. Previously it return an empty array.
*   Fixed a bug where `view.draw(GL_LINES, ...)` crashes when passed an odd number of points.
*   HTTPS connections should now work on Windows using `'net/https'`.

# What's new in SketchUp 2014 M1

*   Fixed a crash that occurred when exporting an animation while any Ruby tool was active.
*   Fixed an {Sketchup::EntityObserver} crash in {Sketchup::EntityObserver#onEraseEntity} that could occur if the observer removed itself.
*   Fixed a bug in {Sketchup::ViewObserver} which caused observer methods to not fire properly in certain rare cases. This occurred when an observer was being removed and a new one being added within the same notification loop of another event.
*   Fixed an issue where launching SketchUp by double-clicking a skp file on another drive would corrupt `$LOAD_PATH` and render the Standard Library inaccessible. This bug caused many people to run into plugin loading problems if they were opening files located on drives other than their "C:" drive.
*   Fixed a bug on Windows where plugins would not load if the user name contained single quotes.
*   Fixed a regression in {Sketchup::Face#position_material}. Under SketchUp 2014.0.4900 a (caught) exception generated by a failed {Sketchup::Face#position_material} call appears to cause SketchUp to unwind everything back to the last {Sketchup::Model#start_operation}.
*   Fixed a Ruby unicode issue where Ruby could not require .so files from unicode paths.
*   Added support to SketchUp Mac to load `SURubyDebugger.dylib`. Developers can now use our debugger on Mac.
*   Fixed an issue where the {Sketchup::LayersObserver} would cause SketchUp to crash when the user would do an undo then a redo.

# What's new in SketchUp 2014

We have made many additions and improvements to the SketchUp Ruby API. These changes include some big and potentially code-breaking changes in this round of SketchUp. We strongly recommend all developers test their scripts for compatibility with 2014.

## Upgrade to Ruby 2.0 and Stdlib is now included

*   We have upgraded to Ruby 2.0.0 p247 on both Windows and Mac platforms.
*   We are now shipping the Ruby Standard Library with SketchUp.
*   Ruby now supports proper unicode strings.
*   Plugins on Windows have now been moved outside the SU Installation folder.
    On Vista, Win 7, 8: `C:\Users\<username>\AppData\Roaming\SketchUp\SketchUp 2014\SketchUp\Plugins`
    On Win XP: `C:\Documents and Settings\<username>\Application Data\Roaming\SketchUp\SketchUp 2014\SketchUp\Plugins`
*   On Windows, we also load plugins from a user-independent support directory.
    On Win Vista, 7, 8: `C:\ProgramData\SketchUp\SketchUp 2014\SketchUp\Plugins`
    On Win XP: `C:\Documents and Settings\All Users\Application Data\SketchUp\SketchUp 2014\SketchUp\Plugins` This path is only loaded to the `$LOAD_PATH` array if the folder exists when on the user's machine when SU starts.

## New! - Dimensions API

Please see the new API docs for how to implement these classes and methods:

*   {Sketchup::Dimension}
*   {Sketchup::DimensionLinear}
*   {Sketchup::DimensionRadial}
*   {Sketchup::DimensionObserver}
*   {Sketchup::Entities#add_dimension_linear}
*   {Sketchup::Entities#add_dimension_radial}

## New! - SectionPlane additions

Please see the new API docs for how to implement these classes and methods.

Added support for creating and activating {Sketchup::SectionPlane} entities:

* New Methods:
  *   {Sketchup::Entities#add_section_plane}
  *   {Sketchup::Entities#active_section_plane}
  *   {Sketchup::Entities#active_section_plane=}
  *   {Sketchup::SectionPlane#activate}
  *   {Sketchup::SectionPlane#active?}
* Added {Sketchup::EntitiesObserver#onActiveSectionPlaneChanged}
* {Sketchup::RenderingOptions} now exposes a new key `'DisplaySectionPlanes'` that can be used to show or hide section planes. e.g. `Sketchup.active_model.rendering_options['DisplaySectionPlanes'] = false`

## Additional New API Methods and Features

Below is an outline of new API functionality. Please see the new API docs for how to implement these classes and methods.

* Added {Sketchup::Image#transformation} to get an image transformation
* Added {Sketchup::Image#transformation=} to set an image transformation
* Added {Sketchup::Layer#color} to get a color for a layer
* Added {Sketchup::Layer#color=} to set a color for a layer
* Added {Sketchup::LayersObserver#onLayerChanged}
* Added {Sketchup.quit}
* Added {Sketchup.temp_dir}
* Added {UI::WebDialog#screen_scale_factor} which can be useful on Mac retina screens.
* Added {Geom::PolygonMesh#set_uv}
* Added {Sketchup::Face#get_texture_projection}
* Added {Sketchup::Face#set_texture_projection}
* Added {Sketchup::AppObserver#expectsStartupModelNotifications} - allowing the developer to specify if they want the existing `onNewModel`/`onOpenModel` methods to include notifications for models that get created or opened at program startup.
* Added `clear`/`show`/`hide`/`visible?` methods to {Sketchup::Console}. These need to be called on the constant {SKETCHUP_CONSOLE}, for example: `SKETCHUP_CONSOLE.show` Creating a new instance via `Sketchup::Console.new` will no longer work.
* Improved {Sketchup::Model#save} to allow saving to the live model and also to be able to save in older SketchUp formats.
* Added file format constants to {Sketchup::Model#save}:
  * {Sketchup::Model::VERSION_2014}
  * {Sketchup::Model::VERSION_2013}
  * {Sketchup::Model::VERSION_8}
  * {Sketchup::Model::VERSION_7}
  * {Sketchup::Model::VERSION_6}
  * {Sketchup::Model::VERSION_5}
  * {Sketchup::Model::VERSION_4}
  * {Sketchup::Model::VERSION_3}
* Added {Geom::PolygonMesh} constants for `smooth_flags`.
  * {Geom::PolygonMesh::NO_SMOOTH_OR_HIDE}
  * {Geom::PolygonMesh::HIDE_BASED_ON_INDEX}
  * {Geom::PolygonMesh::SOFTEN_BASED_ON_INDEX}
  * {Geom::PolygonMesh::AUTO_SOFTEN}
  * {Geom::PolygonMesh::SMOOTH_SOFT_EDGES}
* Added {Sketchup::Model.save_copy}
* {LanguageHandler} methods have been aliased to have more Ruby-like syntax. See `langhandler.rb`
* {LanguageHandler} now correctly load resources locally from extension Resources folder.
* {LanguageHandler} must be initialized in the root RB file of an {SketchupExtension}
* Please read through the `langhandler.rb` file and the documentation on this website for a better understanding of the {LanguageHandler} class.
* {Sketchup::Group#make_unique} is no longer deprecated and the warning has been removed.
* Added persistent IDs for groups and component which can be accessed via Ruby.
* Ruby {UI.openpanel}/{UI.savepanel} filters now use a more complex filetype filter to allow for multiple multi-file type filters.
* Added {Sketchup.platform} that returns either `:platform_win` or `:platform_osx`. Developers are encouraged to use this over `RUBY_PLATFORM` whenever possible.
* New page `"Classifications"` for {UI.show_model_info}.

## Ruby Console Upgrades

*   Multi line code input and pasting into Ruby console on Win (Ctrl+Enter creates a new line)
*   Ruby Console writes data to itself much faster and does not slow down after many errors have been written
*   Typing cls now also clears the console
*   Mac Ruby Console reverted back to fixed width font

## Observer Bug Fixes

*   Fixed {Sketchup::AppObserver} bug where `onNewModel`/`onOpenModel` methods were not being called for models that get created or opened at program startup. See AppObserver API docs for information on how to take advantage of this bug fix.
*   Fixed an {Sketchup::EntitiesObserver} crash that occurred when a group gets created and exploded within the same operation and has an {Sketchup::EntitiesObserver} attached to it.
*   The {Sketchup::ModelObserver#onSaveModel} observer notification on PC is triggered incorrectly when selecting `File > Save` As and then canceling before saving. This is now fixed.
*   Using the same observer to observe multiple entities was causing memory leaks. This should now be fixed.
*   {Sketchup::AppObserver#onQuit} should now fire reliably on Mac
*   Observers were not being properly freed after being removed, potentially causing significant performance degradation.
*   Fixed a crash when reloading a component and an {Sketchup::EntitiesObserver} was attached to the model.
*   {Sketchup::ModelObserver#onExplode} now triggers when an instance is exploded via the Ruby API.
*   Fixed the {Sketchup::EntitiesObserver} bug where a wrong {Sketchup::Entities} reference would be sent to observer methods when observing a group's {Sketchup::Entities}.

## Moved the Set class to {Sketchup::Set}

In order to avoid clashing with the Standard Ruby Library we moved the `Set` class to {Sketchup::Set}. All references to the SketchUp Set class should be refactored.

## General Bug Fixes

*   Ensured that our classes that implement `Enumerable` don't override the improved Ruby 2.0 `#count` method. Also ensured all `Enumerable` classes implement `#length` and `#size`.
*   Updated {Geom::PolygonMesh} API docs to be accurate. Numerous other API documentation fixes and updates.
*   Fixed program hang when output is written to the console via puts from within a Ruby 2.0 Thread. These output will no longer hang the program but they also will not be printed. All access to the SU API (including writing to the console) must be made from within the main thread.
*   Added argument validation to {Sketchup::Layer#page_behavior} and updated API docs.
*   Fixed crash when hiding layers while iterating through selected entities. If your code modifies the collection you are iterating during the iteration process, SketchUp will stop iterating. Instead you should iterate over an array of the collection. Code similar to `selection.each { |e| code_to_modify_the_selection_set }` should be changed to: `selection.to_a.each { |e| code_to_modify_the_selection_set }` This is true of all collections such as: {Sketchup::Entities}, {Sketchup::Layers}, {Sketchup::DefinitionList}, {Sketchup::Pages}, {Sketchup::Selection}, etc.
*   Fixed a bug where groups that share the same definition would seem to continue to share entities after being made unique in some cases.
*   Fixed {Sketchup::Group#description=} which didn't make the group unique before setting its description.
*   Fixed the erroneous `"RangeError: value cannot be negative"` that was raised on valid input for {Sketchup::ConstructionLine#stipple=}
*   Fixed {Sketchup::DefinitionList#load} and load_from_url which did not start Ruby operations properly.
*   Fixed crashes and other oddities that would happen when applying a material that wasn't in the model already - either selected from Material Browser or a material from another open model. Now the material is recreated in the model it is applied to.
*   Fixed {Sketchup::Entities} methods `erase_entities` and `add_3d_text` which did not make the group unique when called for a group Entities.
*   Ruby references belonging to closed models should no longer remain alive and cause possible crashes on Mac.
*   Fixed the crash that occurred when Outliner is open and a group is created/erased within the same operation.
*   Fixed `Sketchup.active_model.export('myFilename.dae')` truncating first two characters when given relative paths.
*   Fixed {Sketchup::Tools#pop_tool} to ensure the last tool cannot be popped, which would leave SketchUp in a state without an active tool.
*   Fixed {Sketchup::Tools#active_tool_name} to return proper tool names on Mac.
*   Fixed {Sketchup::Model#close_active} so the operation appears on the undo stack as it should. Prevents undoing the operation from shifting the geometry.
*   Fixed {Sketchup::Materials#remove} so that it correctly removes the material from the entities in the model before removing it from the materials list.
*   Loader files registered to {SketchupExtension} can now be an encrypted file (.rbs).
*   Fixed the inputbox wrapper in `sketchup.rb` to not enter an infinite loop if no arguments are given.
*   Fixed loading errors to be more verbose and include file paths and code line numbers
*   Any Ruby errors occurring on rbs files are now reported with proper file name and line numbers.
*   Ruby keywords `__FILE__` and `__LINE__` now work properly within rbs files.
*   Ruby errors that occur during program startup are now reported with stack traces, which should make it easier to diagnose problems.
*   Fixed a bug on Windows where {UI::WebDialog#show} did not remember previous size/location of webdialog.
*   {Sketchup.require} did not push paths for loaded rbs files into `$LOADED_FEATURES` - this is now fixed.
*   RBZ extraction should now preserve file permissions.
*   {Sketchup::Group#locked=}/{Sketchup::ComponentInstance#locked=} now correctly adds itself to the undo stack.
*   Added negative value checks to methods that expect unsigned integer parameters (certain methods that use integers as arguments were allowing poorly formatted negative values).
*   {Sketchup::ComponentInstance#explode}/{Sketchup::Group#explode} while editing the component that you explode would crash SketchUp. This is now fixed.
*   Previously {Sketchup::Tool#getInstructorContentDirectory} method assumed everything was relative to the SketchUp Resource folder. This has been changed for 2014. Now it accepts absolute paths to either file or folder
*   New method: {Sketchup.quit}
*   Added {UI::WebDialog#screen_scale_factor} which can be useful on Mac retina screens.
*   Implemented {Sketchup::EntitiesObserver#onActiveSectionPlaneChanged}
*   Added {Geom::PolygonMesh.set_uv}
*   Fixed the {Sketchup::EntitiesObserver} bug where a wrong Entities reference would be sent to observer methods when observing a group's Entities collection.

# What's new in SketchUp 2013 M1

## Bug Fixes

Fixed a toolbar bug that caused some extensions to not display and become incorrectly docked behind other toolbars. Developers are now advised to call {UI::Toolbar#restore} after creating a toolbar, although those that do not will also work correctly on SU2013 M1.

Fixed a bug in {UI::WebDialog#get_element_value} which caused it to malfunction with some html elements on Mac.

# What's new in SketchUp 2013

## Expanded the {SketchupExtension} class

New methods:

* {SketchupExtension#extension_path}
* {SketchupExtension#id}
* {SketchupExtension#version_id}

## Documented the {LanguageHandler} class

{LanguageHandler} was an existing internal class which we are now exposing in the API. It has been updated such that it looks first for translated resources within the Resources folder in the extension directory structure (as explained in the [Extension Warehouse Developer Center](http://extensions.sketchup.com/developer)). All translated resources should be located within the appropriate language folder.

## Added special HTML link to launch an extension's page on Extension Warehouse

See detailed explanation of the `"skp:launchEW"` link in {UI::WebDialog} class documentation.

## Change in {Sketchup.send_action}

`"addBuilding:"` has been removed.

# What's new in SketchUp 8 M2

The second maintenance release for SketchUp 8 was available December 1, 2011. It included a handful of Ruby API additions around managing extensions.

## Improved the SketchupExtension class

Five new methods:

* {SketchupExtension#check} (loads up the Extension)
* {SketchupExtension#uncheck} (unloads the Extension)
* {SketchupExtension#load_on_start?}
* {SketchupExtension#loaded?}
* {SketchupExtension#registered?}

## Added ExtensionsManager class

Lets you inspect which Extensions are registered.

* {Sketchup::ExtensionsManager#size}
* {Sketchup::ExtensionsManager#keys}
* {Sketchup::ExtensionsManager#each}
* {Sketchup::ExtensionsManager#[]}

## Added new hooks in the Sketchup object

* {Sketchup.install_from_archive} (installs contents from .rbz file)
* {Sketchup.plugins_disabled=} (disables all Ruby plugins)
* {Sketchup.plugins_disabled?}
* {Sketchup.extensions} (hook to get at the {Sketchup::ExtensionsManager})

# What's new in SketchUp 8 M1

The first maintenance release for SketchUp 8 was available January 12, 2011. It included several Ruby API fixes and additions.

## Improved the {UI::Toolbar} class

Two new methods:

* {UI::Toolbar#name}
* {UI::Toolbar#each}

Fixed these failing method calls on Mac:

* `UI.set_toolbar_visible('GoogleToolPaletteController', false)`
* `UI.set_toolbar_visible('ToolPaletteController', false)`
* `UI.set_toolbar_visible("SolidModelToolPaletteController", true)`
* `UI.set_toolbar_visible("SolidModelToolPaletteController", false)`

Fixed this failing method calls on the PC:

* `UI.set_toolbar_visible("Walkthrough", true)`
* `UI.set_toolbar_visible("Walkthrough", false)`
* `UI.set_toolbar_visible("FullToolSet", true)`
* `UI.set_toolbar_visible("FullToolSet", false)`

## Expanded the {UI::Command} Class

New methods:

* {UI::Command#small_icon}
* {UI::Command#large_icon}
* {UI::Command#tooltip}
* {UI::Command#status_bar_text}
* {UI::Command#menu_text}

## Expanded the Material/Materials Classes

New methods:

* {Sketchup::Materials#remove}
* {Sketchup::Material#name=}
* {Sketchup::Material#write_thumbnail}

## Gave Ruby Access to the "Shadow Bug Fix"

If you find yourself in a situation where the 8.0 M1 shadow bug fix is getting unexpected results, you can turn it off.

* {Sketchup.fix_shadow_strings=}
* {Sketchup.fix_shadow_strings?}

## Improved Alpha Transparency Control

* {Sketchup::View#draw2d} now respects the alpha set with {Sketchup::View#drawing_color=}
* {Sketchup::Color#alpha=} nows accept values either between `0.0` and `1.0` or `0` and `255`

## Fixed Several Bugs

We accidentally introduced some bugs with recent SketchUp releases. So we fixed them in 8.0 M1:

{Sketchup::View#pick_helper} stopped respecting arguments passed to it. This was breaking the Bezier.rb and BZ Tools plugins. Now fixed.

{Sketchup::ConstructionLine#stipple=} method now works as documented.

{Sketchup::Model#raytest} method was occasionally returning incorrect values. We fixed that and added an optional boolean argument to specify whether or not to stop at hidden entities:
`model.raytest(ray)` - ignores entities that are hidden
`model.raytest(ray, true)` ignores entities that are hidden
`model.raytest(ray, false)` stops at entities that are hidden (via hide or on hidden layers)

{Sketchup::Color#to_a} was returning a `Bignum` when a `Fixnum` was expected. A `Fixnum` is now returned.

# What's new in SketchUp 8

## Updated Ruby Version to 1.8.6 on PC

The version of the Ruby interpreter that ships with SketchUp has been upgraded to 1.8.6 on PC (still 1.8.5 on Mac). Please note that 1.8.6 includes thousands of bug fixes and stability improvements, but that it also is more strict about syntax. Scripts that work in SketchUp 7.x and earlier may have syntax failures in SketchUp 8.

## WebDialog User Agent Updated

It used to be that WebDialogs would send a useragent string unique to SketchUp. We now send a useragent that is a concatenation with the embedded browser's original useragent and an extra string to identity SketchUp. This allows the Google Earth plugin (and similar plugins) to correctly detect the kind of browser so it works properly inside SketchUp.

## Observer Bug Fixes

* {Sketchup::DefinitionObserver.onComponentInstanceAdded} now works.
* {Sketchup::DefinitionObserver.onComponentInstanceRemoved} now works.
* {Sketchup::SelectionObserver.onSelectionAdded} now works.
* {Sketchup::SelectionObserver.onSelectionRemoved} now works.
* Ruby {Sketchup::ToolsObserver} `tool_name` parameter is now consistent between the Mac and PC.
* Fixed {Sketchup::InstanceObserver} so it works consistently and without crashes.
* {Sketchup::MaterialsObserver#onMaterialSetCurrent} now works.
* {Sketchup::MaterialsObserver#onMaterialUndoRedo} now works.
* New method: {Sketchup::ModelObserver#onPreSaveModel}
* New method: {Sketchup::ModelObserver#onPostSaveModel}

{Sketchup::EntitiesObserver#onElementModified} now accepts 2 parameters: entities and entity, making it much more useful.

Fixed common crash with `Sketchup::EntitiesObserver#onContentsModified` Also, `Sketchup::EntitiesObserver#onContentsModified` renamed to {Sketchup::EntitiesObserver#onElementModified} for consistency.

The callback `Sketchup::MaterialsObserver#onMaterialRemoveAll` now deprecated, we recommend using {Sketchup::MaterialsObserver#onMaterialRemove} instead.

## Write Image Size Clamped

{Sketchup::View#write_image} is now clamped to export a maximum image size of 16000x16000 to prevent freezes.

## Timers Work in Smaller Increments

{UI.start_timer} now accepts values less than 1 second.

## New Boolean Methods

{Sketchup::Group} and {Sketchup::ComponentInstance} have several new methods for boolean operations:

*   `manifold?`
*   `volume`
*   `intersect`
*   `union`
*   `subtract`
*   `trim`
*   `split`
*   `outer_shell`
*   `equals?`
*   `show_differences`

## {Sketchup::Face#classify_point} updated

Note that the return values for {Sketchup::Face#classify_point} have changed for SketchUp 8. See the documentation for the list of constants that you should check against. If you have scripts that rely on hard-coded numeric values, you should update them to use constants, instead.

## Crashes fixed

Fixed crash in {Sketchup::Pages#add} and in {Sketchup::Model#number_faces}.

# What's new in SketchUp 7.1

## New methods

* {Sketchup::Model#number_faces} Find out how many faces are in your model.
* {Sketchup::Model#georeferenced?} See if a model has been georeferenced for use in Earth.
* {Sketchup::View#refresh} Force refresh of a view. More powerful that view.invalidate because it refreshes immediately.
* {UI::WebDialog#write_image} Take a screen grab from any WebDialog.

# What's new in SketchUp 7.0 M1

## New methods

* {Sketchup::Face#get_glued_instances} See what instances are glued to a given face.

# What's new in SketchUp 7

## Improved Script Performance

Ability to perform faster inside start_operation transactions.

```ruby
go_faster = true
model.start_operation("My Processing", go_faster)
# Do processing here that was slow in SU6
# ...
model.commit_operation
```

Results from some real world tests, (comparing SU6 to SU7 on the same machine) once the go_faster boolean was added:

[Intersect overlaps](http://www.smustard.com/script/IntersectOverlaps) with 500 overlapping squares
28.4 seconds vs. 26.3 (~92% as long)

[Make faces](http://www.smustard.com/script/MakeFaces) with 500 faceless cubes
21.7 seconds vs. 14.5 (~66% as long)

[Windowizer 3.0](http://www.smustard.com/script/Windowizer3) with Four 20'x20' windows, 12x12
16.1 seconds vs. 7.0 seconds (~43% as as long)

[Windowizer 4.0](http://www.smustard.com/script/Windowizer4) with Ten 5'x5' windows, 6x6
22.6 seconds vs 8.7 seconds (~38% as long)

## Improved Web Dialogs

Addition of min/max widths.

```ruby
webdialog.min_width=100
webdialog.max_width=300
webdialog.min_height=500
webdialog.max_height=600
```

Fixed Mac support for WebDialogs execute_script

`webdialog.execute_script('alert("Bug is Fixed!")');`

New full_security mode for webdialogs (disables plugins and remote links)

`webdialog.set_full_security`

Ability to hide home/next/back navigation icons on the Mac

`webdialog.navigation_buttons_enabled=true`

Cleaner, hash-based syntax for initializing

`my_dialog = UI::WebDialog.new(my_settings_hash)`

## Control Scale Tool Handles

Your script can now control which scale tool handles appear when the user selects a given component.

```ruby
# Disable the green and red-axes handles
# by setting bits 1 and 2 to 1.
behavior = my_component_definition.behavior
behavior.no_scale_mask = (1 << 1) + (1 << 2)
```

## Load Definitions from the Web, or Save to Disk

Ability to download a definition from URL

`model.definitions.load_from_url(url, download_handler)`

Ability to Save components to disk from the API

`my_definition.save_as(path)`

## Know More About User Interactions

New methods for detecting "Component Edit" mode

```ruby
users_current_edit = model.active_path
edit_mode_transform = model.edit_transform
```

Easily determine if they're running in licensed Pro

`is_licensed_pro = Sketchup.is_pro?`

New "model level" callbacks in ModelObserver

```ruby
def onActivePathChanged(model) { # Detect edit mode }
```

```ruby
def onPlaceComponent(instance) { # Detect placements }
def onExplode(model) { # Detect group/component explode }
def onBeforeComponentSaveAs(instance) { # Add data on save as }
def onAfterComponentSaveAs(instance) { # Then clean up }
```

Detect if they've turned off your extension via the AppObserver

```ruby
def onUnloadExtension(extension_name)
```

## Assorted Improvements Requested by Developers

Delete your scenes via the API

`my_page.erase`

Keep SketchUp in Synch

```ruby
UI.refresh_inspectors # force complete UI update
my_definition.refresh_thumbnail # force thumb update
my_definition.invalidate_bounds # force bb update
```

Measure your groups regardless of their transform

`untransformed_bb = my_group.local_bounds`

Use middle mouse button in your custom tools

```ruby
def onMButtonDown(flags, x, y, view) # now works!
def onMButtonUp(flags, x, y, view) # now works!
```

Send Ruby console output to the standard out If you start up SketchUp from the command line, you can pipe to standard error and see Ruby puts statements appear for you.

`Sketchup.exe > myRubyLog.txt`

Finally, we fixed a number of crashing bugs, mostly related to iterating across entities in the model.

# What's new in SketchUp 6

The most substantial addition to the SketchUp 6 Ruby API are the Ruby Observer Mechanism, the Tools class, the WebDialog class, the Styles class, and the Style class.

## Ruby Observer Mechanism

The Ruby Observer Mechanism is designed to allow Ruby scripts to be notified when objects change in the SketchUp application or model. For example, you can create an observer class that "listens" to when SketchUp quits and then performs some action.

Create a Ruby class of a specific observer type, such as AppObserver, override the desired methods, such as onQuit, and add an instance of the observer to the applicable objects in your Ruby script (using the add_observer method for that object). Refer to individual observer interfaces for further information.

## Tools Class

The Tools class contains methods to manipulate a collection of SketchUp tools. This class is primarily used to switch between tools through the use of key or mouse actions.

## WebDialog Class

The Ruby WebDialog class to create and interact with, DHTML dialog boxes, called webdialogs in this documentation, from Ruby code. For example, you can create webdialogs that are invoked from your Ruby code to display a web site, or to accept user input and use the results in your Ruby code. Styles and Style Classes The Styles class contains methods for manipulating a collection of styles in a model. The Style class contains methods for modifying information about a specific style.

# Before SketchUp 6

The core 62 classes of the API were established here. Very few users are on anything before SketchUp 6, so this documentation site focuses only on SketchUp 6 and up.

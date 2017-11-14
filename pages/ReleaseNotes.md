# @title Release Notes

# Release Notes

The SketchUp API has been around in some fashion since the early days of
SketchUp, and with every release we have extended its capabilities.
Read below for what's been changed.

Though our adoption rate to the latest version is quite high, it can take time
after a release before everyone upgrades. If you are building scripts that rely
on functionality from the most recent version, be sure to check the
Sketchup.version to make sure your users are able to run your script:

    # You do something like this in the initialization routine of your extension.
    version_required = 16
    if (Sketchup.version.to_f < version_required)
      UI.messagebox("You must have Sketchup 20#{version_required} to run this "\
                    "extension. Visit sketchup.com to upgrade.")
      return
    end

## Build Numbers

Here are the build numbers for recent SketchUp releases. Note that build numbers
in languages besides English are larger for each release, so it is best to check
for builds that are greater than or equal to the numbers here.

- **SU2018 M0** = 18.0.16975 on Windows 64-bit, 18.0.16976 on Mac 64-bit.

- **SU2017 M0** = 17.0.18899 on Windows 64-bit, 17.0.18898 on Mac 64-bit.

- **SU2016 M0** = 16.0.19912 on Windows 64-bit, 16.0.19911 on Windows 32-bit, 16.0.19913 on Mac 64-bit.

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
- **SU7.0 M0** = 7.0.8657 on Windows, 7.0.8656 on Mac.

- **SU6 M6** = 6.4.265 on Windows, 6.4.263 on Mac.

# What's new in SketchUp 2018 M0

## LayOut Ruby API for SketchUp

This is a new Ruby based API for SketchUp that allows developers to read and write LayOut files using the regular SketchUp Ruby API. We’ve taken the existing LayOut C API and wrapped it with a Ruby layer and then included that inside SketchUp. This is proving to be a great working model for how to expose API functionality to our base C API and then expose that exact functionality to a ruby layer without duplicating code.

## {Sketchup.send_to_layout}

Along with the LayOut Ruby API for SketchUp we added the ability to open LayOut files with the LayOut application. This gives developers the ability to write a SketchUp extension purely in ruby that parses the SketchUp model, writes a LayOut file and opens the LayOut file in LayOut in one smooth motion. This helps create a stronger connection between SketchUp and LayOut and can improve user workflows through the use of developer created extensions.

## ImageRep

Hello Ruby API developers, meet {Sketchup::ImageRep}. This new class exposes a data structure internal to SketchUp called an ImageRep. ImageRep is an in-memory representation of an image (as opposed to a reference to an image inside the SketchUp model). This class exposes a number of image reading and manipulation tools to the Ruby API. Now you can get the color of a pixel at a specified uv coordinate from an ImageRep, get an array of all pixel data from an ImageRep, set pixel data in an ImageRep, save an ImageRep out to disk, and more. Of course we’ve also included utilities to convert an in-model texture to an ImageRep, and assign an ImageRep object directly to a material as the material’s texture. This new class opens up a lot of opportunities to read and manipulate images in the model. Check out the ImageRep class in Ruby API docs for more information.

## Exposed Importer/Exporter Options to Ruby API

We have exposed all the options for our native importers and exporters to Ruby. See the Ruby API documentation on {Sketchup::Model#import} and {Sketchup::Model#export}.

## New SketchUp Features in the API

A big round of applause for the SketchUp Core team for the improvements they have added to the SketchUp application. Well, we also wanted to make sure that these new features were accessible to our developer community. We have introduced new API features for Named Section Planes and Filled Section Cuts. Awesome!

## Ruby Handling of Advanced Attributes

SketchUp core added a feature called Advanced Attributes. This adds some new attribute dictionaries and attributes to Component Instances and Definitions by default on every model. It should be noted that we have blocked the ability to delete the dictionaries via ruby. This should not be possible, please let us know if you find a scenario where you are able to do so. You can however delete the key/value pairs. The UI will recreate those key value pairs if they do not exist.

## Ruby Improvements and Fixes

* Added method: {UI.refresh_toolbars}
* Added constants to {Geom::PolygonMesh}:
    * {Geom::PolygonMesh::MESH_NORMALS}
    * {Geom::PolygonMesh::MESH_POINTS}
    * {Geom::PolygonMesh::MESH_UVQ_BACK}
    * {Geom::PolygonMesh::MESH_UVQ_FRONT}
* Added method: {Sketchup::DefinitionList#remove}
* Added {Sketchup::Page} methods:
    * {Sketchup::Page#include_in_animation?}
    * `include_in_animation=`
* Added {Sketchup::SectionPlane} methods:
    * `name`
    * `name=`
    * `symbol`
    * `symbol=`
* Added {Sketchup::ImageRep} class:
    * `load_file`
    * `save_file`
    * `initialize`
    * `bits_per_pixel`
    * `size`
    * `data`
    * `width`
    * `height`
    * `row_padding`
    * `colors`
    * `color_at_uv`
    * `set_data`
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
* **Breaking Change** - Changed {Sketchup::Color class to be common between LayOut and SketchUp. The potentially breaking change is that {Sketchup::Color} changed to now compare RGBA values instead of the ruby objects.
* **Breaking Change** - Changed {Geom::Transformation#identity?} So that it now properly returns true in all cases where the transformation matrix match the values for the identity transformation.
* Fixed {Geom::Transformation.scaling}`(float)` and {Geom::Transformation#initialize}`(float)` to not set the 15th component of the matrix, but instead adjust the other fields.
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
to Ruby version 2.2.4. We're hopeful that extensions that use pure ruby will be
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
deprecate and remove the old C++ API in the future. A complete list of functions
that we have added for 2017 can be found below. We are continuing to add more
until we gain enough coverage to consider the C API at feature parity with the
deprecated C++ API.

## Updated Compilers

We updated our compilers for Windows and macOS. On Windows we are now using
Visual Studio 2015 SP1 (targeting Windows 7). On MacOs we are using XCode 7.2.1
(with deployment target 10.10).

## New Ruby API Features

* Added class SketchUp::InstancePath
* Added class Sketchup::Http::Request
* Added class Sketchup::Http::Response
* Added class UI::Notification
* Added method Sketchup::Entity.persistent_id
* Added method Sketchup::InputPoint.instance_path
* Added method Sketchup::Model.find_entity_by_pid
* Added method Sketchup::Model.instance_path_from_pid_path
* Added method Sketchup::Materials.load
* Added method Sketchup::Material.save_as
* Added method UI.scale_factor

## New LayOut C API Features and Improvements

* Added LOAutoTextDefinitionRef to support auto text definitions.
* Added LOConnectionPointCreateFromPID in order to support deep connections.
* Added LOVector2D and modified LOPathGetTangentAtParameter to require an
  LOVector2D instead of an LOPoint2D.
* Added LOPathCreateArc.
* Added LOPathGetCircle.
* Added LOPathGetArc.
* Added LOImageSetClipMask.
* Added LOSketchUpModelGetClipMask.
* Added LOSketchUpModelSetClipMask.
* Added LOSketchUpModelGetModel, which returns an SUModelRef.
* Added LOTableRef object to support the new LayOut Table entity.
* Added LOAngularDimensionRef object to support angular dimensions.

## New SketchUp C API Features

* Added SUCameraGet2D()
* Added SUCameraGetCenter2D()
* Added SUCameraGetClippingDistances()
* Added SUCameraGetDescription()
* Added SUCameraGetDirection()
* Added SUCameraGetFOVIsHeight()
* Added SUCameraGetImageWidth()
* Added SUCameraGetScale2D()
* Added SUCameraGetViewTransformation()
* Added SUCameraSet2D()
* Added SUCameraSetAspectRatio()
* Added SUCameraSetCenter2D()
* Added SUCameraSetDescription()
* Added SUCameraSetFOVIsHeight()
* Added SUCameraSetImageWidth()
* Added SUCameraSetScale2D()
* Added SUComponentDefinitionGetInstances()
* Added SUComponentDefinitionGetNumInstances()
* Added SUComponentDefinitionGetNumUsedInstances()
* Added SUDimensionFromDrawingElement()
* Added SUDimensionFromEntity()
* Added SUDimensionGetArrowType()
* Added SUDimensionGetPlane()
* Added SUDimensionGetText()
* Added SUDimensionGetText3D()
* Added SUDimensionGetType()
* Added SUDimensionLinearCreate()
* Added SUDimensionLinearFromDimension()
* Added SUDimensionLinearGetEndPoint()
* Added SUDimensionLinearGetHorizontalAlignment()
* Added SUDimensionLinearGetNormal()
* Added SUDimensionLinearGetPosition()
* Added SUDimensionLinearGetStartPoint()
* Added SUDimensionLinearGetVerticalAlignment()
* Added SUDimensionLinearGetXAxis()
* Added SUDimensionLinearRef
* Added SUDimensionLinearRelease()
* Added SUDimensionLinearSetEndPoint()
* Added SUDimensionLinearSetHorizontalAlignment()
* Added SUDimensionLinearSetNormal()
* Added SUDimensionLinearSetPosition()
* Added SUDimensionLinearSetVerticalAlignment()
* Added SUDimensionLinearSetXAxis()
* Added SUDimensionLinearToDimension()
* Added SUDimensionRadialCreate()
* Added SUDimensionRadialFromDimension()
* Added SUDimensionRadialGetCurveInstancePath()
* Added SUDimensionRadialGetDiameter()
* Added SUDimensionRadialGetLeaderBreakPoint()
* Added SUDimensionRadialGetLeaderPoints()
* Added SUDimensionRadialRef
* Added SUDimensionRadialRelease()
* Added SUDimensionRadialSetCurveInstancePath()
* Added SUDimensionRadialSetDiameter()
* Added SUDimensionRadialSetLeaderBreakPoint()
* Added SUDimensionRadialToDimension()
* Added SUDimensionRef
* Added SUDimensionSetArrowType()
* Added SUDimensionSetText()
* Added SUDimensionSetText3D()
* Added SUDimensionStyleGet3D()
* Added SUDimensionStyleGetArrowSize()
* Added SUDimensionStyleGetArrowType()
* Added SUDimensionStyleGetColor()
* Added SUDimensionStyleGetExtensionLineOffset()
* Added SUDimensionStyleGetExtensionLineOvershoot()
* Added SUDimensionStyleGetFont()
* Added SUDimensionStyleGetHideOutOfPlane()
* Added SUDimensionStyleGetHideOutOfPlaneValue()
* Added SUDimensionStyleGetHideSmall()
* Added SUDimensionStyleGetHideSmallValue()
* Added SUDimensionStyleGetLineWeight()
* Added SUDimensionStyleGetShowRadialPrefix()
* Added SUDimensionStyleGetTextColor()
* Added SUDimensionStyleRef
* Added SUDimensionToDrawingElement()
* Added SUDimensionToEntity()
* Added SUEntitiesErase()
* Added SUEntitiesGetNumDimensions()
* Added SUEntitiesGetDimensions()
* Added SUEntitiesIsRecursivelyEmpty()
* Added SUEntitiesTransform()
* Added SUEntitiesTransformMultiple()
* Added SUFontGetBold()
* Added SUFontGetFaceName()
* Added SUFontGetItalic()
* Added SUFontGetPointSize()
* Added SUFontGetUseWorldSize()
* Added SUFontGetWorldSize
* Added SUFontRef
* Added SUGeometryInputAddCurve()
* Added SUGeometryInputAddEdge()
* Added SUGeometryInputEdgeSetHidden()
* Added SUGeometryInputEdgeSetSoft()
* Added SUGeometryInputEdgeSetSmooth()
* Added SUGeometryInputFaceSetHidden()
* Added SUImageCreateFromImageRep()
* Added SUImageGetImageRep()
* Added SUImageRepRef
* Added SUImageRepConvertTo32BitsPerPixel()
* Added SUImageRepCopy()
* Added SUImageRepCreate()
* Added SUImageRepGetData()
* Added SUImageRepGetDataSize()
* Added SUImageRepGetPixelDimensions()
* Added SUImageRepGetRowPadding()
* Added SUImageRepLoadFile()
* Added SUImageRepRelease()
* Added SUImageRepResize()
* Added SUImageRepSaveToFile()
* Added SUImageRepSetData()
* Added SUMaterialGetNameLegacyBehavior()
* Added SUModelGetDimensionStyle()
* Added SUModelGetStyles()
* Added SUModelIsGeoReferenced()
* Added SUPlane3DGetNormal()
* Added SUSceneActivate()
* Added SUSceneClearPhotoMatchImage()
* Added SUSceneCopy()
* Added SUSceneGetFlags()
* Added SUSceneGetPhotoMatchImageDisplayed()
* Added SUSceneGetSketchAxesDisplayed()
* Added SUSceneGetStyle()
* Added SUSceneSetFlags()
* Added SUSceneSetSketchAxesDisplayed()
* Added SUStyleCreate()
* Added SUStyleCreateFromFile()
* Added SUStyleFromEntity()
* Added SUStyleGetDescription()
* Added SUStyleGetDisplayName()
* Added SUStyleGetDisplaysWatermark()
* Added SUStyleGetGuid()
* Added SUStyleGetName()
* Added SUStyleGetPath()
* Added SUStyleGetProperty()
* Added SUStyleSetProperty()
* Added SUStyleRef
* Added SUStyleRelease()
* Added SUStylesAddStyle()
* Added SUStylesApplyStyleToScene()
* Added SUStyleSaveToFile()
* Added SUStyleSetDescription()
* Added SUStyleSetName()
* Added SUStylesGetActiveStyle()
* Added SUStylesGetActiveStyleChanged()
* Added SUStylesGetNumStyles()
* Added SUStylesGetSelectedStyle()
* Added SUStylesGetStyleByGuid()
* Added SUStylesGetStyleByPath()
* Added SUStylesGetStyles()
* Added SUStylesRef
* Added SUStyleToEntity()
* Added SUStringCompare()
* Added SUTextureSetFileName()
* Added SUTransformationSetFromPointAndNormal()

## Bug Fixes/Small Improvements

### Ruby API

* Fixed {Sketchup::Entities.transform_by_vectors} so that it performs a bounds
  check on the second array. An `ArgumentError` is raised if the second array
  has less items than the first.
* Added ability to {UI::HtmlDialog}s to receive JavaScript arrays and objects
  using callbacks.
* Removed a limitation with {UI::HtmlDialog} where callbacks were required to
  have at least one argument. Now no arguments are required.
* {UI.show_model_info} no longer opens a Model Info page for `"Extensions"` as
  that page is now replaced by the Extension Manager dialog.

### LayOut C API

* Linear Dimensions will now have the default style applied to them upon
  creation.
* LOGetAPIVersion now returns a major.minor version of 2.0.

## SketchUp C API

* Changed SUComponentDefinitionRelease(), now can be used to destroy
  definitions in models
* Changed SUMaterialGetName(), now returns internal unprocessed string identifier
* Fixed bug in SUModelGetComponentDefinitions that occurred when requesting
  fewer component definitions than are in the model.
* Fixed memory leak in SUModelGetStatistics.
* Modified SUMaterialGetName to return the internal name.
* Added SUMaterialGetNameLegacyBehavior which behaves as the same as the old
  SUMaterialGetName by returning the display name, but without any translations
  applied.

## What's new in SketchUp 2016 M0

### A new LayOut API

We’re proud to announce our first step towards an extension ecosystem for LayOut. Using this new API developers can now open, create, modify, save, and export .layout files. Practically, this means that other applications can import or export the .layout file format using the C API. (This includes creating a .layout file from SketchUp). We have several sample scripts for developers to try out at release. Check out the API documentation in the [Developer Center](http://extensions.sketchup.com/developer_center/layout_c_api/layout/index.html) for more information.

### Digitally Signing Extensions - Extensions Loading Policy

With SketchUp 2016 we introduced the ability for users to select which Extension Loading Policy they want to use. The options are “Identified Extensions Only”, “Approve Unidentified Extensions”, and “Unrestricted.

The developer side of this feature is known as a Digital Signature. All SketchUp extensions for 2016 or later will now require a Digital Signature to run in the highest security mode - “Identified Extensions Only”. If the user has chosen “Approve Unidentified Extensions” then all signed extensions will load automatically and any unsigned extension will have to be approved by the user. All extensions signed and unsigned, will load in “Unrestricted” mode.

SketchUp 2016 M0 installs in “Unrestricted” mode by default.

To digitally sign your extension, simply upload your .rbz package to our new Digital Signature and Encryption page and we will sign it and return it to you. Visit the new [Extension Digital Signature page](https://extensions.sketchup.com/en/developer_center/extension_signature).

You will need to sign your extension each time you make code changes and want to re-release it. You will need to be a registered Developer on the Extension Warehouse to be able to sign or encrypt extensions. [Apply here!](http://http://extensions.sketchup.com/en/developer)

### Ruby Encryption 2.0

Goodbye .rbs and Hello .rbe! We have added a new encryption that you can use to help protect your extension Intellectual Property (IP). SketchUp 2016 can read both .rbe and .rbs filetypes. This should help make sure that we maintain backwards compatibility for authors who need some time to re-encrypt their extensions. To use our new encryption, simply upload an unencrypted version of your .rbz package to our new Digital Signature and Encryption page and we will encrypt it and return it to you. Visit the new [Extension Digital Signature page](https://extensions.sketchup.com/en/developer_center/extension_signature) page here for more information.

You will need to be a registered Developer on the Extension Warehouse to be able to sign or encrypt extensions. [Apply here!](http://extensions.sketchup.com/en/developer)

### Developer Center

Between the new Extension Digital Signature Page, the new LayOut C API and a whole lot of future ideas and potential, we have decided to create a new central location to organize our developer resources, API documentation, etc. Visit (and bookmark!): [https://extensions.sketchup.com/en/developer_center](https://extensions.sketchup.com/en/developer_center)

### Observer Upgrades

We have been working on finding ways to make observers more stable and reliable for all developers. Most of these changes happen under the hood and are not entirely visible to developers. To help with that, we added a few Ruby Warnings that appear in the Ruby Console, and two debugging methods that will determine whether those warnings are shown: Sketchup.debug_mode= and Sketchup.debug_mode?.

*   Observer events are now queued up until the active operation is done.
*   ModelObserver doesn't notify about intermediate Ruby operations ("transactions").
*   Observers should no longer return zombie Ruby objects for entities. See the Observers 2016 pdf for more information.
*   Removed dummy methods from all observer base classes in order to improve performance.See [this pdf](https://assets.sketchup.com/files/ewh/Observers2016.pdf) for a more in depth look at the changes we made to the Observers.

### SketchUp C API Parity - continued

We have focused on adding features to the SketchUp C API in 2016 to provide greater benefit to our developers and as part of our continued effort to fully deprecate and remove the old C++ API in the future. Below is a complete list of functions that we have added for 2016. We are continuing to add more until we gain enough coverage to consider the C API at feature parity with the deprecated C++ API.

### New Ruby API

*   Added optional arguments to Sketchup::View.draw_text which define the appearance of the text drawn.
*   Added Axes class, exposing the drawing axes in SketchUp via model.axes and page.axes.
*   Added PickHelper.window_pick.
*   Added PickHelper.boundingbox_pick.
*   Added Sketchup::Texture.write.
*   Added Sketchup::ComponentDefinition.count_used_instances
*   Added Model.export to export pdf files. This is a vector export, not a rasterized image wrapped up in a pdf container.
*   UI::Command class and UI.create_cursor were modified to accept vector format (SVG under Windows, PDF under OSX). Both toolbars and cursors can now accept vector icons.
*   Added two methods to assist with debugging extensions. Sketchup.debug_mode= and Sketchup.debug_mode? will allow developers to toggle the display of the following notifications:
*   Ruby Console now warns about Ruby operations left open. Leaving operations open is typically a bad practice. We are warning developers that they should try to find a different way of doing what they want to do.
*   Ruby Console now warns when a user tries to create a nested operation. Starting a new operation while one is still open is a bad practice. We would like developers to be more aware that they are doing this so that they can fix their code.

### New C API Features

*   Added SUArcCurveCreate
*   Added SUArcCurveFromCurve()
*   Added SUArcCurveFromEntity()
*   Added SUArcCurveGetCenter()
*   Added SUArcCurveGetEndAngle()
*   Added SUArcCurveGetEndPoint()
*   Added SUArcCurveGetIsFullCircle()
*   Added SUArcCurveGetNormal()
*   Added SUArcCurveGetRadius()
*   Added SUArcCurveGetStartAngle()
*   Added SUArcCurveGetStartPoint()
*   Added SUArcCurveGetXAxis()
*   Added SUArcCurveGetYAxis()
*   Added SUArcCurveRelease()
*   Added SUArcCurveToCurve()
*   Added SUArcCurveToEntity()
*   Added SUAxesCreate()
*   Added SUAxesCreateCustom()
*   Added SUAxesFromDrawingElement()
*   Added SUAxesFromEntity()
*   Added SUAxesGetOrigin()
*   Added SUAxesGetPlane()
*   Added SUAxesGetTransform()
*   Added SUAxesGetXAxis()
*   Added SUAxesGetYAxis()
*   Added SUAxesGetZAxis()
*   Added SUAxesRelease()
*   Added SUAxesSetAxesVecs()
*   Added SUAxesSetOrigin()
*   Added SUAxesToDrawingElement()
*   Added SUAxesToEntity()
*   Added SUComponentDefinitionGetInsertPoint()
*   Added SUComponentDefinitionGetLoadTime()
*   Added SUComponentDefinitionGetOpenings()
*   Added SUComponentDefinitionGetPath()
*   Added SUComponentDefinitionIsInternal()
*   Added SUComponentDefinitionIsInternal()
*   Added SUComponentDefinitionOrientFacesConsistently()
*   Added SUComponentDefinitionSetAxes()
*   Added SUComponentDefinitionSetInsertPoint()
*   Added SUComponentInstanceIsLocked()
*   Added SUComponentInstanceSaveAs()
*   Added SUComponentInstanceSetLocked()
*   Added SUEntitiesAddArcCurves()
*   Added SUEntitiesAddGuideLines()
*   Added SUEntitiesAddSectionPlanes()
*   Added SUEntitiesGetArcCurves()
*   Added SUEntitiesGetGuideLines()
*   Added SUEntitiesGetNumArcCurves()
*   Added SUEntitiesGetNumGuideLines()
*   Added SUEntitiesGetNumSectionPlanes()
*   Added SUEntitiesGetSectionPlanes()
*   Added SUFaceGetAreaWithTransform()
*   Added SUFaceGetAttachedDrawingElements()
*   Added SUFaceGetEdgeUses()
*   Added SUFaceGetNumAttachedDrawingElements()
*   Added SUFaceGetNumEdgeUses()
*   Added SUFaceReverse()
*   Added SUGetEdition()
*   Added SUGetVersionStringUtf8()
*   Added SUGroupFromComponentInstance()
*   Added SUGroupToComponentInstance()
*   Added SUGuideLineCreateFinite()
*   Added SUGuideLineCreateInfinite()
*   Added SUGuideLineFromDrawingElement()
*   Added SUGuideLineFromEntity()
*   Added SUGuideLineGetData()
*   Added SUGuideLineRelease()
*   Added SUGuideLineToDrawingElement()
*   Added SUGuideLineToEntity()
*   Added SUGuidePointDisplayAsLine()
*   Added SUGuidePointGetFromPosition()
*   Added SUModelGetActiveScene()
*   Added SUModelSetActiveScene()
*   Added SUModelSetCamera()
*   Added SUOptionsProviderGetName()
*   Added SUPolyline3dAddPoints()
*   Added SUPolyline3dCreate()
*   Added SUPolyline3dRelease()
*   Added SUSceneAddLayer()
*   Added SUSceneClearLayers()
*   Added SUSceneGetAxes()
*   Added SUSceneGetLayers()
*   Added SUSceneGetNumLayers()
*   Added SUSceneGetUseCamera()
*   Added SUSceneGetUseHiddenLayers()
*   Added SUSceneGetUseRenderingOptions()
*   Added SUSceneRemoveLayer()
*   Added SUSceneSetCamera()
*   Added SUSceneSetUseCamera()
*   Added SUSceneSetUseHiddenLayers()
*   Added SUSceneSetUseRenderingOptions()
*   Added SUSectionPlaneCreate()
*   Added SUSectionPlaneFromDrawingElement()
*   Added SUSectionPlaneFromEntity()
*   Added SUSectionPlaneGetPlane()
*   Added SUSectionPlaneIsActive()
*   Added SUSectionPlaneRelease()
*   Added SUSectionPlaneSetPlane()
*   Added SUSectionPlaneToDrawingElement()
*   Added SUSectionPlaneToEntity()
*   Added SUVertexSetPosition()

### Bug Fixes/Small Improvements

*   Fixed Pages.erase so that it doesn't incorrectly create an undo operation any more.
*   Removed instance of a zombie instance with Curves. See the Observers 2016 pdf for more information.
*   Fixed issue where View Observer does not fire when using the Zoom tool in parallel projection mode
*   Deprecated the Piranisi .epx import
*   IFC import failure resolved by library updates to Windows and Mac.
*   Fixed Collada export fails with :camera_lookout value with message "Pointer being freed was never allocated"
*   Fixed Collada export does not export cameras
*   Resolved multiple visual defects with Extension description box.
*   Resolved defect with SUTypedValueGetDouble where if Length is stored in the Attribute Dictionary there was no way to retrieve the value.
*   Resolved issue with SDK documentation not using stylesheets
*   Fixed warnings in slapi/model/scene.h
*   Added High DPI .png files to the shipped extensions for backwards compatibility
*   Fixed issue where button text within Component Options and Component Attributes is cut off when using high DPI.
*   Trimble Connect Extension description is now localized.
*   Format options underneath File -> Import are now localized.
*   Sketchup.version_number now returns the correct value.
*   Fixed encoding issue with Dynamic Components where special characters were not being handled correctly.

## What's new in SketchUp 2015 M2

We fixed a crash on Mac that could occur when a timer was stopped via UI.stop_timer from within the timer procedure.

## What's new in SketchUp 2015

### Renaming the Plugins Menu

We renamed the "Plugins" menu to "Extensions" to be more inline with our current naming conventions. This should not break existing plugins. Adding a menu item to the "Plugins" menu will still work, it will be added to the "Extensions" menu.

### New! - Extension Licensing API

One of the new features that we have added to API is the ability to create licensed extensions. The Extension Warehouse has been upgraded to manage and distribute these licenses.*   Added Sketchup::Licensing module*   Added Sketchup::Licensing::ExtensionLicense class

### New! - Classifier API

*   These classes and methods have been added in conjunction with the Classifier Tool that has already been implemented in the SketchUp User Interface.
*   Added Sketchup::ClassificationSchema class
*   Added Sketchup::Classifications class
*   Added Model.classifications
*   Added ComponentDefinition.set_classification_value
*   Added ComponentDefinition.get_classification_value
*   Added ComponentDefinition.add_classification
*   Added ComponentDefinition.remove_classification

### New API Features

*   Added AppObserver.onActivateModel
*   Added Camera.center_2d
*   Added Camera.is_2d?
*   Added Camera.scale_2d
*   Added Camera.fov_is_height?
*   Added Group.definition
*   Added Layers.remove
*   Added Material.colorize_deltas
*   Added Material.colorize_type
*   Added Material.colorize_type=
*   Added Model.close
*   Added Model.find_entity_by_id
*   Added Sketchup.is_64bit?
*   Added UI.select_directory
*   Added "DisplaySectionCuts" to the RenderingOptions
*   Added "DrawBackEdges" to the RenderingOptions
*   Added "SectionCutDrawEdges" to the RenderingOptions
*   Added Sketchup::Model::VERSION_2015 constant

### 64 Bit related changes to our Ruby API

*   Length no longer derives from Float. It should act the same in 2015 as it has in previous version of SketchUp This was required as part of our 64-bit upgrade changes
*   We have separated the GEM_PATH and GEM_HOME directories for 32-bit and 64-bit builds.

### Webdialog JS error Dialogs for Developers

In previous versions of SketchUp on Windows, users would see javascript error popup boxes anytime there was malformed js code on a webpage. We muted those popups in a previous release. Due to popular demand, we have brought them back, this time for developers only! Developers can enable js error popups by creating this key in their Windows registry: HKEY_CURRENT_USER/Software/SketchUp/SketchUp 2015/WebDialogs/ShowErrorDialogs and adding a DWORD value set to 1.

### Bug Fixes and Improvements

*   We are now setting the initial working directory to the user’s Documents directory.
*   Restored $0 to return "SketchUp" as it did prior to SketchUp 2014.
*   Fixed bug where point3d.vector_to(inputpoint) would return incorrect result.
*   Cleaned up inconsistent operation name and id used in the Edge class.
*   Fixed crashes caused by internal calls to Ruby from worker threads.
*   Prevented crash when there is an uncaught Ruby error happening in Importer.load_file
*   Geom::BoundingBox.corner now raises an IndexError when given an incorrect index.
*   Fixed a bug where Geom::BoundingBox.intersect could yield incorrect results.
*   Fixed a bug where Geom::BoundingBox.intersect would not accept an array of vertices or boundingboxes.
*   Fixed a bug where Geom::PolygonMesh.normal_at would not return correct vertex normal if the model was modified in the same processing loop as the script obtaining the PolygonMesh.
*   Fixed a bug where a frozen array might raise an error when a method acts on that array, even if the method does not modify the array.
*   Fixed a bug where InputPoint objects could cause a crash in certain circumstances.
*   Changed the classifications folder inside the Program Files folder from C:\Program Files (x86)\SketchUp\SketchUp 2015\Classifications to C:\Program Files (x86)\SketchUp\SketchUp 2015\ShippedClassifications. Now Sketchup.find_support_file("Classifications") will return the classifications folder in the user folder, instead of in the application folder.
*   Setting material during ModelObserver.onPreSave did not work in SU2014\. This should be fixed for 2015.
*   ViewObserver notification used to fail when in parallel projection. This has been fixed.
*   Custom context menus in custom tools have been improved. It is now possible to determine what type of entity was clicked on, before opening the context menu. Therefore custom context menus can be written to handle different types of entities differently.
*   Exploding an image entity now returns an array of entities. These include all associated edges, the face, edgeuse objects, etc. Previously it return an empty array.
*   Fixed a bug where view.draw(GL_LINES, ...) crashes when passed an odd number of points.
*   HTTPS connections should now work on Windows using ‘net/https’.

## What's new in SketchUp 2014 M1

*   Fixed a crash that occurred when exporting an animation while any Ruby tool was active.
*   Fixed an EntityObserver crash in onEraseEntity that could occur if the observer removed itself.
*   Fixed a bug in ViewObserver which caused observer methods to not fire properly in certain rare cases. This occurred when an observer was being removed and a new one being added within the same notification loop of another event.
*   Fixed an issue where launching SketchUp by double-clicking a skp file on another drive would corrupt $LOAD_PATH and render the Standard Library inaccessible. This bug caused many people to run into plugin loading problems if they were opening files located on drives other than their "C:" drive.
*   Fixed a bug on Windows where plugins would not load if the user name contained single quotes.
*   Fixed a regression in Face.position_material. Under SketchUp 2014.0.4900 a (caught) exception generated by a failed Face.position_material call appears to cause SketchUp to unwind everything back to the last Model.start_operation.
*   Fixed a ruby unicode issue where ruby could not require .so files from unicode paths.
*   Added support to SketchUp Mac to load SURubyDebugger.dylib. Developers can now use our debugger on Mac.
*   Fixed an issue where the LayersObserver would cause SketchUp to crash when the user would do an undo then a redo.

## What's new in SketchUp 2014

We have made many additions and improvements to the SketchUp Ruby API. These changes include some big and potentially code-breaking changes in this round of SketchUp. We strongly recommend all developers test their scripts for compatibility with 2014.

### Upgrade to Ruby 2.0 and Stdlib is now included

*   We have upgraded to Ruby 2.0.0 p247 on both Windows and Mac platforms.
*   We are now shipping the Ruby Standard Library with SketchUp.
*   Ruby now supports proper unicode strings.
*   Plugins on Windows have now been moved outside the SU Installation folder.
    On Vista, Win 7, 8: C:\Users\<username>\AppData\Roaming\SketchUp\SketchUp 2014\SketchUp\Plugins
    On Win XP: C:\Documents and Settings\<username>\Application Data\Roaming\SketchUp\SketchUp 2014\SketchUp\Plugins
*   On Windows, we also load plugins from a user-independent support directory.
    On Win Vista, 7, 8: C:\ProgramData\SketchUp\SketchUp 2014\SketchUp\Plugins
    On Win XP: C:\Documents and Settings\All Users\Application Data\SketchUp\SketchUp 2014\SketchUp\Plugins This path is only loaded to the $LOAD_PATH array if the folder exists when on the user's machine when SU starts.

### New! - Dimensions API

Please see the new API docs for how to implement these classes and methods:

*   Dimension
*   DimensionLinear
*   DimensionRadial
*   DimensionObserverNew methods are:
*   Entities.add_dimension_linear
*   Entities.add_dimension_radial

### New! - SectionPlane additions

Please see the new API docs for how to implement these classes and methods.

Added support for creating and activating SectionPlane entities:

* New Methods:
  *   Entities.add_section_plane
  *   Entities.active_section_plane
  *   Entities.active_section_plane=
  *   SectionPlane.activate
  *   SectionPlane.active?
* Added EntitiesObserver.onActiveSectionPlaneChanged
* RenderingOptions now exposes a new key 'DisplaySectionPlanes' that can be used to show or hide section planes. e.g Sketchup.active_model.rendering_options['DisplaySectionPlanes'] = false

### Additional New API Methods and Features

Below is an outline of new API functionality. Please see the new API docs for how to implement these classes and methods.

* Added Image.transformation to get an image transformation
* Added Image.transformation= to set an image transformation
* Added Layer.color to get a color for a layer
* Added Layer.color= to set a color for a layer
* Added LayersObserver.onLayerChanged
* Added Sketchup.quit
* Added Sketchup.temp_dir
* Added WebDialog.screen_scale_factor which can be useful on Mac retina screens.
* Added Geom::PolygonMesh.set_uv(index, uv)
* Added Face.get_texture_projection(bool_front)
* Added Face.set_texture_projection(vector_or_nil, bool_front)
* Added AppObserver.expectsStartupModelNotifications - allowing the developer to specify if they want the existing onNewModel/onOpenModel methods to include notifications for models that get created or opened at program startup.
* Added clear/show/hide/visible? methods to Sketchup::Console. These need to be called on the constant SKETCHUP_CONSOLE, for example: SKETCHUP_CONSOLE.show Creating a new instance via Sketchup::Console.new will no longer work.
* Improved Model.save to allow saving to the live model and also to be able to save in older SketchUp formats.
* Added file format constants to Model.save:
  * Sketchup::Model::VERSION_2014
  * Sketchup::Model::VERSION_2013
  * Sketchup::Model::VERSION_8
  * Sketchup::Model::VERSION_7
  * Sketchup::Model::VERSION_6
  * Sketchup::Model::VERSION_5
  * Sketchup::Model::VERSION_4
  * Sketchup::Model::VERSION_3
* Added Geom::PolygonMesh constants for smooth_flags.
  * Geom::PolygonMesh::NO_SMOOTH_OR_HIDE
  * Geom::PolygonMesh::HIDE_BASED_ON_INDEX
  * Geom::PolygonMesh::SOFTEN_BASED_ON_INDEX
  * Geom::PolygonMesh::AUTO_SOFTEN
  * Geom::PolygonMesh::SMOOTH_SOFT_EDGES
* Added Model.save_copy
* LanguageHandler methods have been aliased to have more ruby-like syntax. See langhandler.rb
* LanguageHandler now correctly load resources locally from extension Resources folder.
* LanguageHandler must be initialized in the root RB file of an SketchupExtension
* Please read through the langhandler.rb file and the documentation on this website for a better understanding of the LanguageHandler class.
* Group.make_unique is no longer deprecated and the warning has been removed.
* Added persistent IDs for groups and component which can be accessed via Ruby.
* Ruby UI.openpanel/savepanel filters now use a more complex filetype filter to allow for multiple multi-file type filters.
* Added Sketchup.platform that returns either :platform_win or :platform_osx. Developers are encouraged to use this over RUBY_PLATFORM whenever possible.
* New page `"Classifications"` for {UI.show_model_info}.

### Ruby Console Upgrades

*   Multi line code input and pasting into ruby console on Win (Ctrl+Enter creates a new line)
*   Ruby Console writes data to itself much faster and does not slow down after many errors have been written
*   Typing cls now also clears the console
*   Mac Ruby Console reverted back to fixed width font

### Observer Bug Fixes

*   Fixed AppObserver bug where onNewModel/onOpenModel methods were not being called for models that get created or opened at program startup. See AppObserver API docs for information on how to take advantage of this bug fix.
*   Fixed an EntitiesObserver crash that occurred when a group gets created and exploded within the same operation and has an EntitiesObserver attached to it.
*   The onSaveModel observer notification on PC is triggered incorrectly when selecting File > Save As and then canceling before saving. This is now fixed.
*   Using the same observer to observe multiple entities was causing memory leaks. This should now be fixed.
*   AppObserver.onQuit should now fire reliably on Mac
*   Observers were not being properly freed after being removed, potentially causing significant performance degradation.
*   Fixed a crash when reloading a component and an EntitiesObserver was attached to the model.
*   ModelObserver.onExplode now triggers when an instance is exploded via the Ruby API.
*   Fixed the EntitiesObserver bug where a wrong Entities reference would be sent to observer methods when observing a group's Entities.

### Moved the Set class to Sketchup::Set

In order to avoid clashing with the Standard Ruby Library we moved the Set class to Sketchup::Set. All references to the SketchUp Set class should be refactored. See [Set](ourdoc/set) class documentation for more information.

### General Bug Fixes

*   Ensured that our classes that implement Enumerable don't override the improved Ruby 2.0 #count method. Also ensured all Enumerable classes implement #length and #size.
*   Updated PolygonMesh API docs to be accurate. Numerous other API documentation fixes and updates.
*   Fixed program hang when output is written to the console via puts from within a Ruby 2.0 Thread. These output will no longer hang the program but they also will not be printed. All access to the SU API (including writing to the console) must be made from within the main thread.
*   Added argument validation to Layer.page_behaviour and updated API docs.
*   Fixed crash when hiding layers while iterating through selected entities. If your code modifies the collection you are iterating during the iteration process, SketchUp will stop iterating. Instead you should iterate over an array of the collection. Code similar to <code>selection.each { |e| code_to_modify_the_selection_set }</code> should be changed to: <code>selection.to_a.each { |e| code_to_modify_the_selection_set }</code> This is true of all collections such as: Entities, Layers, DefinitionList, Pages, Selection, etc.
*   Fixed a bug where groups that share the same definition would seem to continue to share entities after being made unique in some cases.
*   Fixed Group.description= which didn't make the group unique before setting its description.
*   Fixed the erroneous “RangeError: value cannot be negative” that was raised on valid input for ConstructionLine.stipple=
*   Fixed DefinitionList.load and load_from_url which did not start Ruby operations properly.
*   Fixed crashes and other oddities that would happen when applying a material that wasn't in the model already - either selected from Material Browser or a material from another open model. Now the material is recreated in the model it is applied to.
*   Fixed Entities methods erase_entities and add_3d_text which did not make the group unique when called for a group Entities.
*   Ruby references belonging to closed models should no longer remain alive and cause possible crashes on Mac.
*   Fixed the crash that occurred when Outliner is open and a group is created/erased within the same operation.
*   Fixed Sketchup.active_model.export('myFilename.dae') truncating first two characters when given relative paths.
*   Fixed Tools.pop_tool to ensure the last tool cannot be popped, which would leave SketchUp in a state without an active tool.
*   Fixed Tools.active_tool_name to return proper tool names on Mac.
*   Fixed Model.close_active so the operation appears on the undo stack as it should. Prevents undoing the operation from shifting the geometry.
*   Fixed Materials.remove so that it correctly removes the material from the entities in the model before removing it from the materials list.
*   Loader files registered to SketchupExtension can now be an encrypted file (.rbs).
*   Fixed the inputbox wrapper in sketchup.rb to not enter an infinite loop if no arguments are given.
*   Fixed loading errors to be more verbose and include file paths and code line numbers
*   Any ruby errors occurring on rbs files are now reported with proper file name and line numbers.
*   Ruby keywords +__FILE__+ and +__LINE__+ now work properly within rbs files.
*   Ruby errors that occur during program startup are now reported with stack traces, which should make it easier to diagnose problems.
*   Fixed a bug on Windows where WebDialog.show did not remember previous size/location of webdialog.
*   Sketchup::require did not push paths for loaded rbs files into $LOADED_FEATURES - this is now fixed.
*   RBZ extraction should now preserve file permissions.
*   Group/ComponentInstance.locked= (true/false) now correctly adds itself to the undo stack.
*   Added negative value checks to methods that expect unsigned integer parameters (certain methods that use integers as arguments were allowing poorly formatted negative values).
*   ComponentInstance/Group.explode while editing the component that you explode would crash SketchUp. This is now fixed.
*   Previously Tool.getInstructorContentDirectory method assumed everything was relative to the SketchUp Resource folder. This has been changed for 2014\. Now it accepts absolute paths to either file or folder
*   New method: Sketchup.quit
*   Added WebDialog.screen_scale_factor which can be useful on Mac retina screens.
*   Implemented EntitiesObserver.onActiveSectionPlaneChanged
*   Added Geom::PolygonMesh.set_uv(index, uv)
*   Fixed the EntitiesObserver bug where a wrong Entities reference would be sent to observer methods when observing a group's Entities collection.

## What's new in SketchUp 2013 M1

### Bug Fixes

Fixed a toolbar bug that caused some extensions to not display and become incorrectly docked behind other toolbars. Developers are now advised to call Toolbar.restore after creating a toolbar, although those that do not will also work correctly on SU2013 M1.

Fixed a bug in WebDialog.get_element_value which caused it to malfunction with some html elements on Mac.

## What's new in SketchUp 2013

### Expanded the SketchupExtension class

New methods:

* extension_path
* id
* version_id

### Documented the LanguageHandler class

LanguageHandler was an existing internal class which we are now exposing in the API. It has been updated such that it looks first for translated resources within the Resources folder in the extension directory structure (as explained in the [Extension Warehouse Developer Center](http://extensions.sketchup.com/en/developer)). All translated resources should be located within the appropriate language folder.

### Added special HTML link to launch an extension's page on Extension Warehouse

See detailed explanation of the "skp:launchEW" link in WebDialog class documentation.

### Change in Sketchup.send_action

"addBuilding:" has been removed.

## What's new in SketchUp 8 M2

The second maintenance release for SketchUp 8 was available December 1, 2011. It included a handful of Ruby API additions around managing extensions.

### Improved the SketchupExtension class

Five new methods:

* SketchupExtension.check (loads up the Extension)
* SketchupExtension.uncheck (unloads the Extension)
* SketchupExtension.load_on_start?
* SketchupExtension.loaded?
* SketchupExtension.registered?

### Added ExtensionsManager class

Lets you inspect which Extensions are registered.

* ExtensionsManager.size
* ExtensionsManager.keys
* ExtensionsManager.each
* ExtensionsManager[]

### Added new hooks in the Sketchup object

* Sketchup.install_from_archive (installs contents from .rbz file)
* Sketchup.plugins_disabled= (disables all Ruby plugins)
* Sketchup.plugins_disabled?
* Sketchup.extensions (hook to get at the ExtensionsManager)

## What's new in SketchUp 8 M1

The first maintenance release for SketchUp 8 was available January 12, 2011. It included several Ruby API fixes and additions.

### Improved the toolbar class

Two new methods:

* Toolbar.name
* Toolbar.each

Fixed these failing method calls on Mac:

* UI.set_toolbar_visible 'GoogleToolPaletteController', false
* UI.set_toolbar_visible 'ToolPaletteController', false
* UI.set_toolbar_visible "SolidModelToolPaletteController", true
* UI.set_toolbar_visible "SolidModelToolPaletteController", false

Fixed this failing method calls on the PC:

* UI.set_toolbar_visible "Walkthrough", true
* UI.set_toolbar_visible "Walkthrough", false
* UI.set_toolbar_visible "FullToolSet", true
* UI.set_toolbar_visible "FullToolSet", false

### Expanded the Command Class

New methods:

* Command.small_icon
* Command.large_icon
* Command.tooltip
* Command.status_bar_text
* Command.menu_text

### Expanded the Material/Materials Classes

New methods:

* Materials.remove
* Material.name=
* Material.write_thumbnail

### Gave Ruby Access to the "Shadow Bug Fix"

If you find yourself in a situation where the 8.0 M1 shadow bug fix is getting unexpected results, you can turn it off.

* Sketchup.fix_shadow_strings=
* Sketchup.fix_shadow_strings?

### Improved Alpha Transparency Control

* View.draw2d now respects the alpha set with view.drawing_color
* Color.alpha= nows accept values either between 0.0 and 1.0 or 0 and 255

### Fixed Several Bugs

We accidentally introduced some bugs with recent SketchUp releases. So we fixed them in 8.0 M1:

View.pickhelper(x,y,aperture) stopped respecting arguments passed to it. This was breaking the Bezier.rb and BZ Tools plugins. Now fixed.

ConstructionLine.stipple= method now works as documented.

Model.raytest method was occasionally returning incorrect values. We fixed that and added an optional boolean argument to specify whether or not to stop at hidden entities:
model.raytest(ray) - ignores entities that are hidden
model.raytest(ray, true) ignores entities that are hidden
model.raytest(ray, false) stops at entities that are hidden (via hide or on hidden layers)

Color.new().to_i was returning a Bignum when a Fixnum was expected. A Fixnum is now returned.

## What's new in SketchUp 8

### Updated Ruby Version to 1.8.6 on PC

The version of the Ruby interpreter that ships with SketchUp has been upgraded to 1.8.6 on PC (still 1.8.5 on Mac). Please note that 1.8.6 includes thousands of bug fixes and stability improvements, but that it also is more strict about syntax. Scripts that work in SketchUp 7.x and earlier may have syntax failures in SketchUp 8.

### WebDialog User Agent Updated

It used to be that WebDialogs would send a useragent string unique to SketchUp. We now send a useragent that is a concatenation with the embedded browser's original useragent and an extra string to identity SketchUp. This allows the Google Earth plugin (and similar plugins) to correctly detect the kind of browser so it works properly inside SketchUp.

### Observer Bug Fixes

* DefinitionObserver.onComponentInstanceAdded now works.
* DefinitionObserver.onComponentInstanceRemoved now works.
* SelectionObserver.onSelectionAdded now works.
* SelectionObserver.onSelectionRemoved now works.
* Ruby ToolsObserver: tool_name is now consistent between the Mac and PC.
* Fixed InstanceObserver so it works consistently and without crashes.
* MaterialsObserver.onMaterialSetCurrent now works.
* MaterialsObserver.onMaterialUndoRedo now works.
* New method: ModelObserver.onPreSaveModel
* New method: ModelObserver.onPostSaveModel

EntitiesObserver.onElementModified now accepts 2 parameters: entities and entity, making it much more useful.

Fixed common crash with EntitiesObserver.onContentsModified Also, EntitiesObserver.onContentsModified renamed to EntitiesObserver.onElementModified for consistency.

The callback MaterialsObserver.onMaterialRemoveAll now deprecated, we recommend using MaterialsObserver.onMaterialRemove instead.

### Write Image Size Clamped

view.write_image is now clamped to export a maximum image size of 16000x16000 to prevent freezes.

### Timers Work in Smaller Increments

UI.start_timer now accepts values less than 1 second.

### New Boolean Methods

Group and ComponentInstance have several new methods for boolean operations:

*   manifold?
*   volume
*   intersect
*   union
*   subtract
*   trim
*   split
*   outer_shell
*   equals?
*   show_differences

### Face.classify_point updated

Note that the return values for Face.classify_point have changed for SketchUp 8\. See the documentation for the list of constants that you should check against. If you have scripts that rely on hard-coded numeric values, you should update them to use constants, instead.

### Crashes fixed

Fixed crash in Pages.add and in Model.number_faces.

## What's new in SketchUp 7.1

### New methods

Find out how many faces are in your model.

<pre class="prettyprint">model.number_faces</pre>

See if a model has been georeferenced for use in Earth.

<pre class="prettyprint">model.georeferenced?</pre>

Force refresh of a view. More powerful that view.invalidate because it refreshes immediately.

<pre class="prettyprint">view.refresh</pre>

Take a screen grab from any WebDialog.

<pre class="prettyprint">mywebdialog.write_image 'img.jpg'</pre>

## What's new in SketchUp 7.0 M1

### New methods

See what component instances are glued to a given face.

<pre class="prettyprint">for (instance in myface.get_glued_instances) { ... }
</pre>

## What's new in SketchUp 7

### Improved Script Performance

Ability to perform faster inside start_operation transactions.

<pre class="prettyprint">operation_name = "My Processing"
go_faster = true
model.start_operation operation_name, go_faster

# Do processing here that was slow in SU6
# ...

model.commit_operation
</pre>

Results from some real world tests, (comparing SU6 to SU7 on the same machine) once the go_faster boolean was added:

[Intersect overlaps](http://www.smustard.com/script/IntersectOverlaps) with 500 overlapping squares
28.4 seconds vs. 26.3 (~92% as long)

[Make faces](http://www.smustard.com/script/MakeFaces) with 500 faceless cubes
21.7 seconds vs. 14.5 (~66% as long)

[Windowizer 3.0](http://www.smustard.com/script/Windowizer3) with Four 20'x20' windows, 12x12
16.1 seconds vs. 7.0 seconds (~43% as as long)

[Windowizer 4.0](http://www.smustard.com/script/Windowizer4) with Ten 5'x5' windows, 6x6
22.6 seconds vs 8.7 seconds (~38% as long)

### Improved Web Dialogs

Addition of min/max widths.

<pre class="prettyprint">WebDialog.min_width=100
WebDialog.max_width=300
WebDialog.min_height=500
WebDialog.max_height=600</pre>

Fixed Mac support for WebDialogs execute_script

<pre class="prettyprint">WebDialog.execute_script('alert("Bug is Fixed!")');</pre>

New full_security mode for webdialogs (disables plugins and remote links)

<pre class="prettyprint">WebDialog.set_full_security</pre>

Ability to hide home/next/back navigation icons on the Mac

<pre class="prettyprint">WebDialog.navigation_buttons_enabled=true</pre>

Cleaner, hash-based syntax for initializing

<pre class="prettyprint">my_dialog = WebDialog.new(my_settings_hash)</pre>

### Control Scale Tool Handles

Your script can now control which scale tool handles appear when the user selects a given component.

<pre class="prettyprint"># Disable the green and red-axes handles
# by setting bits 1 and 2 to 1.
behavior = my_component_definition.behavior
behavior.no_scale_mask = (1 << 1) + (1 << 2)
</pre>

### Load Definitions from the Web, or Save to Disk

Ability to download a definition from URL

<pre class="prettyprint">model.definitions.load_from_url(url, download_handler)</pre>

Ability to Save components to disk from the API

<pre class="prettyprint">my_definition.save_as(path)</pre>

### Know More About User Interactions

New methods for detecting "Component Edit" mode

<pre class="prettyprint">users_current_edit = model.active_path
edit_mode_transform = model.edit_transform

</pre>

Easily determine if they're running in licensed Pro

<pre class="prettyprint">is_licensed_pro = Sketchup.is_pro?</pre>

New "model level" callbacks in ModelObserver

<pre class="prettyprint">def onActivePathChanged(model) { # Detect edit mode }
</pre>

<pre class="prettyprint">def onPlaceComponent(instance) { # Detect placements }
def onExplode(model) { # Detect group/component explode }
def onBeforeComponentSaveAs(instance) { # Add data on save as }
def onAfterComponentSaveAs(instance) { # Then clean up }</pre>

Detect if they've turned off your extension via the AppObserver

<pre class="prettyprint">def onUnloadExtension(extension_name)</pre>

### Assorted Improvements Requested by Developers

Delete your scenes via the API

<pre class="prettyprint">my_page.erase</pre>

Keep SketchUp in Synch

<pre class="prettyprint">UI.refresh_inspectors # force complete UI update
my_definition.refresh_thumbnail # force thumb update
my_definition.invalidate_bounds # force bb update</pre>

Measure your groups regardless of their transform

<pre class="prettyprint">untransformed_bb = my_group.local_bounds</pre>

Use middle mouse button in your custom tools

<pre class="prettyprint">def onMButtonDown(flags, x, y, view) { # now works! }
def onMButtonUp(flags, x, y, view) { # now works! }</pre>

Send ruby console output to the standard out If you start up SketchUp from the command line, you can pipe to standard error and see ruby puts statements appear for you.

<pre class="prettyprint">Sketchup.exe > myRubyLog.txt</pre>

Finally, we fixed a number of crashing bugs, mostly related to iterating across entities in the model.

## What's new in SketchUp 6

The most substantial addition to the SketchUp 6 Ruby API are the Ruby Observer Mechanism, the Tools class, the WebDialog class, the Styles class, and the Style class.

### Ruby Observer Mechanism

The Ruby Observer Mechanism is designed to allow Ruby scripts to be notified when objects change in the SketchUp application or model. For example, you can create an observer class that "listens" to when SketchUp quits and then performs some action.

Create a Ruby class of a specific observer type, such as AppObserver, override the desired methods, such as onQuit, and add an instance of the observer to the applicable objects in your Ruby script (using the add_observer method for that object). Refer to individual observer interfaces for further information.

### Tools Class

The Tools class contains methods to manipulate a collection of SketchUp tools. This class is primarily used to switch between tools through the use of key or mouse actions.

### WebDialog Class

The Ruby WebDialog class to create and interact with, DHTML dialog boxes, called webdialogs in this documentation, from Ruby code. For example, you can create webdialogs that are invoked from your Ruby code to display a web site, or to accept user input and use the results in your Ruby code. Styles and Style Classes The Styles class contains methods for manipulating a collection of styles in a model. The Style class contains methods for modifying information about a specific style.

## Before SketchUp 6

The core 62 classes of the API were established here. Very few users are on anything before SketchUp 6, so this documentation site focuses only on SketchUp 6 and up.

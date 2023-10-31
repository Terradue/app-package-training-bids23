

### Stage-in

From the OGC Best Practice for Earth Observation Application Package:

**An Application input argument that requires staged EO product files SHALL be defined as an argument that points to a folder where a STAC Catalog, named catalog.json, contains a list of one or more STAC Items and associated STAC Assets referencing the files.**

This translates to:

* Plug a **stage-in step** for all workflow steps having inputs of type `Directory`
* Workflow steps having inputs of type `Directory` will find a STAC catalog.json file

### Stage-out

From the OGC Best Practice for Earth Observation Application Package:

**An Application that creates EO product files to be stage-out SHALL generate a valid STAC Catalog, named catalog.json, and include the STAC Item(s) and corresponding STAC Assets pointing to the results of the processing.**

**The STAC Catalog created by the Application SHALL include metadata elements for each STAC Item with at least their spatial (geometry, box) and temporal (datetime) properties.**

This translates to:

* Workflow steps that have an output of type `Directory` produce a STAC catalog
* Plug a **stage-out step** for all workflow outputs of type Directory
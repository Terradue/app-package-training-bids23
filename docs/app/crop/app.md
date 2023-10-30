The `crop.py` script is a command-line tool that takes as input

* a SpatioTemporal Asset Catalog (STAC) Item
* a bounding box area of interest (AOI), an EPSG code
* a common band name as input

and then crops the specified band from the asset associated with the common band name to the specified AOI. 

It uses various Python libraries like `pystac``, `rasterio`, `pyproj`, `shapely`, and `loguru`.

Here is an overview of the script's functionality:

* It defines a function `aoi2box` to convert an AOI expressed as a bounding box string into a list of floats.

* It defines a function `get_asset` to retrieve the asset of a STAC Item that is defined with a common band name. It iterates through the assets and checks if a band has the specified common name.

* It defines a command-line interface using `click`, with options for providing the input STAC Item URL, AOI, EPSG code, and common band name.

* The `crop` function is the main entry point. It reads the STAC Item specified by the input URL and retrieves the asset associated with the common band name. It then crops the asset to the specified AOI using the rasterio library.

* It transforms the bounding box coordinates to match the EPSG code provided.

* It performs the cropping using the `rasterio.mask.mask` function.

* It writes the cropped image to a GeoTIFF file with a filename like "crop_bandname.tif."

The script is executable as a command-line tool as its usage is:

```
Usage: app.py [OPTIONS]

  Crops a STAC Item asset defined with its common band name

Options:
  --input-item TEXT  STAC Item URL or staged STAC catalog  [required]
  --aoi TEXT         Area of interest expressed as a bounding box  [required]
  --epsg TEXT        EPSG code  [required]
  --band TEXT        Common band name  [required]
  --help             Show this message and exit.
```

To use this script, you would typically run it from the command line, providing the necessary input options such as the STAC Item URL, AOI, EPSG code, and common band name. It will then crop the specified band from the STAC asset and save it as a GeoTIFF file. Make sure you have the required Python libraries installed to run the script successfully.

```python linenums="1" title="water-bodies/command-line-tools/crop/app.py"
--8<--
water-bodies/command-line-tools/crop/app.py
--8<--
```
### Step purpose 

Purpose: to apply the Otsu threshold to the normalized difference. 

### Code

The `otsu` Python script is a command-line tool for applying the Otsu threshold to a single input raster image. 

It uses the `click`, `rasterio`, `numpy`, `skimage.filters`, and `loguru` libraries.

Here's an overview of what the script does:

* It defines a command-line interface using the `click` library, with a single argument for providing the file path of the input raster image on which you want to apply the Otsu threshold.

* The `otsu` function is the main entry point. It opens the input raster file specified as the argument.

* It reads the data from the input raster using `rasterio` and also copies the metadata (e.g., `projection`, `geotransform`) of this raster to be used for the output.

* It applies the Otsu threshold to the input array by calling the `threshold` function. The `threshold_otsu` function from `skimage.filters` is used to calculate the Otsu threshold. The thresholding process marks pixels as True or False based on whether they are greater than the calculated threshold.

* It creates an output raster named "otsu.tif" using `rasterio`. This output raster will have the same metadata as the input raster.

* It writes the thresholded binary image to the output raster using dst_dataset.write().

The result, a binary image where pixel values are either True or False based on the thresholding, will be saved as "otsu.tif" in the same directory where the script is executed.


The script is executable as a command-line tool as its usage is:

```
Usage: app.py [OPTIONS] RASTER

  Applies the Otsu threshold

Options:
  --help  Show this message and exit.
```

The Python code is provided here:

```python linenums="1" title="water-bodies/command-line-tools/otsu/app.py"
--8<--
water-bodies/command-line-tools/otsu/app.py
--8<--
```
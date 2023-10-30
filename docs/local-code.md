## A naive approach



Alice uses conda environments to foster portability and reproducibility


The instructions she provides Bob with are:

## Step 0 - create a local folder for the run

``` { .console .copy }
export WORKSPACE=/workspace
export RUNTIME=/workspace/runs
mkdir -p ${RUNTIME}
cd ${RUNTIME}
```

## Step 1 - crop the green and nir bands over the AOI

Create a Conda environment to crop the green and nir bands.

```
mamba create -c conda-forge -y -n env_crop gdal click pystac 
mamba activate env_crop
```

```
python ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/crop/app.py \
    --input-item "https://earth-search.aws.element84.com/v0/collections/sentinel-s2-l2a-cogs/items/S2B_10TFK_20210713_0_L2A" \
    --aoi "-121.399,39.834,-120.74,40.472" \
    --epsg "EPSG:4326" \
    --band green 
```

```
python ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/crop/app.py \
    --input-item "https://earth-search.aws.element84.com/v0/collections/sentinel-s2-l2a-cogs/items/S2B_10TFK_20210713_0_L2A" \
    --aoi "-121.399,39.834,-120.74,40.472" \
    --epsg "EPSG:4326" \
    --band nir 
```

## Step 2 - Normalized difference

De-activate the crop conda environment.

```console
mamba deactivate
```

```console
mamba create -c conda-forge -y -n env_norm_diff gdal click
mamba activate env_norm_diff
```

```
python ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/norm_diff/app.py \
    crop_green.tif \
    crop_nir.tif
```

# Step 3 

mamba deactivate

mamba create -c conda-forge -y -n env_otsu gdal scikit-image click 

mamba activate env_otsu

python ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/otsu/app.py \
    norm_diff.tif

mamba deactivate

mamba create -c conda-forge -y -n env_stac click pystac python=3.9 pip 

mamba activate env_stac

pip install rio_stac

python ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/stac/app.py \
    --input-item "https://earth-search.aws.element84.com/v0/collections/sentinel-s2-l2a-cogs/items/S2B_10TFK_20210713_0_L2A" \
    --water-body otsu.tif

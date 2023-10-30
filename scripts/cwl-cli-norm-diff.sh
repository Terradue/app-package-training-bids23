cwltool \
    --podman \
    --outdir /workspace/runs \
    norm_diff.cwl \
    --rasters \
    /workspace/runs/crop_green.tif \
    --rasters \
    /workspace/runs/crop_nir.tif
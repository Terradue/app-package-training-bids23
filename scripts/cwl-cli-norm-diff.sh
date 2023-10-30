export WORKSPACE=/workspace/app-package-training-bids23

cwltool \
    --podman \
    --outdir /workspace/runs \
    ${WORKSPACE}/cwl-cli/norm_diff.cwl \
    --rasters \
    /workspace/runs/crop_green.tif \
    --rasters \
    /workspace/runs/crop_nir.tif
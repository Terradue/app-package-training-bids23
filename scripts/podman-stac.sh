podman \
    run \
    -i \
    --userns=keep-id \
    --mount=type=bind,source=/workspace/runs,target=/runs \
    --mount=type=bind,source=/workspace/runs/otsu.tif,target=/inputs/otsu.tif,readonly \
    --workdir=/runs \
    --read-only=true \
    --user=1001:100 \
    --rm \
    --env=HOME=/runs \
    --env=PYTHONPATH=/app \
    localhost/stac:latest \
    python \
    -m \
    app \
    --input-item \
    https://earth-search.aws.element84.com/v0/collections/sentinel-s2-l2a-cogs/items/S2B_10TFK_20210713_0_L2A \
    --water-body \
    /inputs/otsu.tif


```yaml linenums="1" hl_lines="9-12 49-53"
--8<--
cwl-cli/norm-diff.cwl
--8<--
```

```bash linenums="1" hl_lines="9-12 49-53"
--8<--
scripts/cwl-cli-norm-diff.sh
--8<--
```

Or

```yaml
item: "https://earth-search.aws.element84.com/v0/collections/sentinel-s2-l2a-cogs/items/S2B_10TFK_20210713_0_L2A"
aoi: "-121.399,39.834,-120.74,40.472"
epsg: "EPSG:4326"
band: "green" 
```


```bash
cwltool \
    --podman \
    --outdir /workspace/runs \
    crop.cwl \
    params.yaml 
```
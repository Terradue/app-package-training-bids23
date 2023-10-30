

```yaml linenums="1" hl_lines="9-12 49-53" title="cwl-cli/crop.cwl"
--8<--
cwl-cli/crop.cwl
--8<--
```

```console hl_lines="9-12 49-53" title="terminal"
--8<--
scripts/cwl-cli-crop-green.sh
--8<--
```

Or

```yaml title="crop-params.yaml"
--8<--
cwl-cli/crop-params.yaml
--8<--
```


```console hl_lines="5" title="terminal"
cwltool \
    --podman \
    --outdir /workspace/runs \
    crop.cwl \
    crop-params.yaml 
```
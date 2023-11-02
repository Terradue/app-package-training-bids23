### Goal

Run the `app-water-body.1.0.0.cwl` released application package using `cwltool` on a staged Landsat-9 acquisition.

### Step 1 - Configure the workspace

The results produced will be available in the local folder `/workspace/runs`

```bash linenums="1" hl_lines="2-4" title="terminal"
--8<--
scripts/setup.sh
--8<--
```

```
source /workspace/app-package-training-bids23/scripts/setup.sh
```

### Step 2 - Download the released Application package

```bash linenums="1" hl_lines="5" title="scripts/download-app-water-body.sh"
--8<--
scripts/download-app-water-body.sh
--8<--
```

```
sh ${WORKSPACE}/scripts/download-app-water-body.sh
```


### Step 3 - Stage-in the Landsat-9 acquisition

```bash linenums="1" hl_lines="8-71"
--8<--
scripts/build-stage-container.sh
--8<--
```

Now the Landsat-9 acquistion "https://planetarycomputer.microsoft.com/api/stac/v1/collections/landsat-c2-l2/items/LC09_L2SP_042033_20231015_02_T1" is staged with: 

```bash linenums="1" hl_lines="8"
--8<--
scripts/cwl-cli-stage-in.sh
--8<--
```

The result is redirected to a file named `staged.json` as we use `jq` to get the path of the staged product:

```bash title="terminal"
cat staged.json | jq -r .staged
```

This returns a path like `/workspace/runs/921x91vw`

### Step 4 - Execute the Application Package

```bash linenums="1" hl_lines="5"
--8<--
scripts/cwl-workflow-staged.sh
--8<--
```
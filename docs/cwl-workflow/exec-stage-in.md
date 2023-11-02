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

The Landsat-9 acquistion "https://planetarycomputer.microsoft.com/api/stac/v1/collections/landsat-c2-l2/items/LC09_L2SP_042033_20231015_02_T1" is staged with: 

```bash linenums="1" hl_lines="8"
--8<--
scripts/cwl-cli-stage-in-released.sh
--8<--
```

```
sh ${WORKSPACE}/scripts/cwl-cli-stage-in-released.sh
```

The expected content after this step is:

```bash
(base) jovyan@coder-fbrito:~/runs$ tree
.
├── app-water-body.1.0.0.cwl
├── lwft9j0o
│   ├── LC09_L2SP_042033_20231015_02_T1
│   │   ├── LC09_L2SP_042033_20231015_02_T1.json
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ANG.txt
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_MTL.json
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_MTL.txt
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_MTL.xml
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_QA_PIXEL.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_QA_RADSAT.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B1.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B2.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B3.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B4.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B5.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B6.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_B7.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_SR_QA_AEROSOL.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_ATRAN.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_B10.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_CDIST.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_DRAD.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_EMIS.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_EMSD.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_QA.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_TRAD.TIF
│   │   ├── LC09_L2SP_042033_20231015_20231016_02_T1_ST_URAD.TIF
│   │   ├── preview.png
│   │   └── tilejson.json
│   ├── catalog.json
│   └── stage.py
└── staged.json

2 directories, 30 files
```

The result is redirected to a file named `staged.json` as we use `jq` to get the path of the staged product:

```bash title="terminal"
cat staged.json | jq -r .staged.path
```

This returns a path like `/workspace/runs/921x91vw`

### Step 4 - Execute the Application Package

Use `cwltool` to run the application package using the staged Landsat-9 acquisition:

```bash linenums="1" hl_lines="5"
--8<--
scripts/exec-app-water-body.sh
--8<--
```

```
sh ${WORKSPACE}/scripts/exec-app-water-body.sh
```

### Expected outcome

The folder `/workspace/runs` contains: 

``` hl_lines="3"
(base) jovyan@coder-fbrito:~/runs$ tree .
/workspace/runs/
├── app-water-body-cloud-native.1.0.0.cwl
└── cmtriamc
    ├── S2B_10TFK_20210713_0_L2A
    │   ├── S2B_10TFK_20210713_0_L2A.json
    │   └── otsu.tif
    └── catalog.json

2 directories, 4 files
```
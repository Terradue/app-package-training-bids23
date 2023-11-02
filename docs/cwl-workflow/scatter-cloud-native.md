CWL can run sub-workflows in a step. Below a CWL Workflow created to process a list of STAC Items and then generate a STAC catalog with several detected water bodies.

```yaml linenums="1" hl_lines="18-21 33-43"
--8<--
cwl-workflow/app-water-bodies-cloud-native.cwl:8:58
--8<--
```

The `stac` CommandLineTool is updated to manage arrays:

```yaml linenums="200" hl_lines="19-23 25-29"
--8<--
cwl-workflow/app-water-bodies-cloud-native.cwl:200:234
--8<--
```

To run this CWL document, one would do:

```bash
--8<--
scripts/cwl-workflow-cloud-native-scatter.sh
--8<--
```
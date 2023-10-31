## Goal

Run the `crop` step in a Python virtual environment.

### Step 1 - Configure the workspace

```bash linenums="1" hl_lines="9-12 49-53" title="terminal"
--8<--
scripts/setup.sh
--8<--
```

### Step 2 - Create the Python virtual environment

```bash linenums="1" hl_lines="9-12 49-53" title="terminal"
--8<--
scripts/crop_env.sh
--8<--
```

### Step 3 - Crop the green band

```bash linenums="1" hl_lines="9-12 49-53" title="terminal"
--8<--
scripts/crop_green.sh
--8<--
```

### Step 4 - Crop the NIR band

```bash linenums="1" hl_lines="9-12 49-53" title="terminal"
--8<--
scripts/crop_nir.sh
--8<--
```

### Step 5 - Clean-up

```bash linenums="1" hl_lines="9-12 49-53" title="terminal"
--8<--
scripts/crop_deactivate.sh
--8<--
```

### Expected outcome


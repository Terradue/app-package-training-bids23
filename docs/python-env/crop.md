## Goal

Run the `crop` step in a Python virtual environment.

### Step 1 - Configure the workspace

The results produced will be available in the local folder `/workspace/runs`

```bash linenums="1" hl_lines="2-4" title="terminal"
--8<--
scripts/setup.sh
--8<--
```

### Step 2 - Create the Python virtual environment

The required Python modules are installed using pip:

```bash linenums="1" hl_lines="3" title="terminal"
--8<--
scripts/crop_env.sh
--8<--
```

### Step 3 - Crop the green band

```bash linenums="1" hl_lines="8-11" title="terminal"
--8<--
scripts/crop_green.sh
--8<--
```

### Step 4 - Crop the NIR band

```bash linenums="1" hl_lines="8-11" title="terminal"
--8<--
scripts/crop_nir.sh
--8<--
```

### Step 5 - Clean-up

```bash linenums="1" title="terminal"
--8<--
scripts/crop_deactivate.sh
--8<--
```

### Expected outcome


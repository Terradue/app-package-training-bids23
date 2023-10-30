
Each step has its own recipe to build the container image:


```dockerfile linenums="1" title="crop/Dockerfile"
--8<--
water-bodies/command-line-tools/crop/Dockerfile
--8<--
```

```dockerfile linenums="1" title="norm_diff/Dockerfile"
--8<--
water-bodies/command-line-tools/norm_diff/Dockerfile
--8<--
```


```dockerfile linenums="1" title="otsu/Dockerfile"
--8<--
water-bodies/command-line-tools/otsu/Dockerfile
--8<--
```


```dockerfile linenums="1" title="stac/Dockerfile"
--8<--
water-bodies/command-line-tools/stac/Dockerfile
--8<--
```

Build the containers with:

```bash linenums="1" title="terminal"
--8<--
scripts/build_containers.sh
--8<--
```
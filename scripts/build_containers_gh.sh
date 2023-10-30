podman build --format docker -t ghcr.io/terradue/ogc-eo-application-package-hands-on/crop:bids23 ${WORKSPACE}/mastering-app-package-/water-bodies/command-line-tools/crop
podman push ghcr.io/terradue/ogc-eo-application-package-hands-on/crop:bids23

podman build --format docker -t ghcr.io/terradue/ogc-eo-application-package-hands-on/norm-diff:bids23 ${WORKSPACE}/mastering-app-package-/water-bodies/command-line-tools/norm_diff
podman push ghcr.io/terradue/ogc-eo-application-package-hands-on/norm:bids23

podman build --format docker -t ghcr.io/terradue/ogc-eo-application-package-hands-on/otsu:bids23 ${WORKSPACE}/mastering-app-package-/water-bodies/command-line-tools/otsu
podman push ghcr.io/terradue/ogc-eo-application-package-hands-on/otsu:bids23

podman build --format docker -t ghcr.io/terradue/ogc-eo-application-package-hands-on/stac:bids23 ${WORKSPACE}/mastering-app-package-/water-bodies/command-line-tools/stac
podman push ghcr.io/terradue/ogc-eo-application-package-hands-on/stac:bids23


yq eval '(.$graph[] | select (.id == "crop") ).hints.DockerRequirement.dockerPull = "ghcr.io/terradue/ogc-eo-application-package-hands-on/crop:aaa"' /workspace/mastering-app-package-/cwl-workflow/app-water-bodies-cloud-native.cwl

WORKSPACE=/workspace

version="bids23"
repo="ghcr.io/terradue/ogc-eo-application-package-hands-on"
for step in crop norm_diff otsu stac
do
    tag=${repo}/${step}:${version}
    podman build --format docker -t ${tag} ${WORKSPACE}/mastering-app-package-/water-bodies/command-line-tools/crop
    podman push ${tag}

    t="$tag" s="$step" yq eval -i '(.$graph[] | select (.id == env(s)) ).hints.DockerRequirement.dockerPull = env(t)' /workspace/mastering-app-package-/cwl-workflow/app-water-bodies-cloud-native.cwl
done
podman build --format docker -t localhost/crop:latest ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/crop
podman build --format docker -t localhost/norm-diff:latest ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/norm_diff
podman build --format docker -t localhost/otsu:latest ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/otsu
podman build --format docker -t localhost/stac:latest ${WORKSPACE}/ogc-eo-application-package-hands-on/water-bodies/command-line-tools/stac
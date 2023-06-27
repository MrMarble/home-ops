# GitOps

[Flux](https://github.com/fluxcd/flux2) watches my [cluster](https://github.com/mrmarble/home-ops/tree/main/cluster/) folder (see [Directory structure](#directory-structure)) and makes the changes to my cluster based on the YAML manifests.

The way Flux works for me here is it will recursively search the [cluster/apps](https://github.com/mrmarble/home-ops/tree/main/cluster/apps) folder until it finds the most top level `kustomization.yaml` per directory and then apply all the resources listed in it. That aforementioned `kustomization.yaml` will generally only have a namespace resource and one or many Flux kustomizations. Those Flux kustomizations will generally have a `HelmRelease` or other resources related to the application underneath it which will be applied.

[Renovate](https://github.com/renovatebot/renovate) watches my **entire** repository looking for dependency updates, when they are found a PR is automatically created. When PRs are merged [Flux](https://github.com/fluxcd/flux2) applies the changes to my cluster.

## Directory structure

My home-ops repository contains the following directories under [cluster](https://github.com/mrmarble/home-ops/tree/main/cluster/).

```sh
📁 cluster  # My main kubernetes cluster
├──📁 apps  # Apps deployed into my cluster grouped by namespace (see below)
├──📁 base  # Flux entrypoint
├──📁 core  # Important applications that should never be pruned by flux
└──📁 crds  # Custom resource definitions (CRDs) that need to exist globally
```

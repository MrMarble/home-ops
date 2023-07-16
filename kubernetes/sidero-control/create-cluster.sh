#!/bin/bash

root=$(git rev-parse --show-toplevel)

raw=$(sops -d $root/provision/talos/talenv.sops.yaml)

clusterName=$(echo "$raw" | yq eval '.clusterName' -)

export CONTROL_PLANE_ENDPOINT=$(echo "$raw" | yq eval '.clusterEndpointIP' -)
export CONTROL_PLANE_PORT=$(echo "$raw" | yq eval '.controlPlanePort' -)
export CONTROL_PLANE_SERVERCLASS=$(echo "$raw" | yq eval '.controlPlaneServerClass' -)
export WORKER_SERVERCLASS=$(echo "$raw" | yq eval '.workerServerClass' -)
export KUBERNETES_VERSION=$(echo "$raw" | yq eval '.kubernetesVersion' -)
export TALOS_VERSION=$(echo "$raw" | yq eval '.talosVersion' -)

clusterctl generate cluster $clusterName -i sidero --control-plane-machine-count 3 --worker-machine-count 2 > $root/kubernetes/sidero-control/clusters/$clusterName.yaml

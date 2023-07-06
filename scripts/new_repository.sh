#! /bin/bash

# Repository declaration
echo "---
apiVersion: source.toolkit.fluxcd.io/v1
kind: HelmRepository
metadata:
  name: $1
  namespace: flux-system
spec:
  interval: 30m
  url: $2
  timeout: 3m" > cluster/base/flux-system/charts/helm/$1.yaml

# Include new repository in cluster
yq -i ".resources += \"$1.yaml\"" cluster/base/flux-system/charts/helm/kustomization.yaml

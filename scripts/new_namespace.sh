#! /bin/bash

# Namespace declaration
echo "---
apiVersion: v1
kind: Namespace
metadata:
  name: $1
" > cluster/core/namespaces/$1.yaml

# Include new namespace in cluster
yq -i ".resources += \"$1.yaml\"" cluster/core/namespaces/kustomization.yaml

# Create Namespace folder
mkdir -p cluster/apps/$1

# Include new namespace
yq -i ".resources += \"$1\"" cluster/apps/kustomization.yaml

# Basic kustomization file
echo "---
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
" > cluster/apps/$1/kustomization.yaml

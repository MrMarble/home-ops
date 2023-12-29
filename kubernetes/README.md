# Cluster

Home cluster

# How to bootstrap

### Install

```sh
kubectl apply --server-side --kustomize ./bootstrap
```

### Add SOPS secret

```sh
sops --decrypt ./bootstrap/age-key.sops.yaml | kubectl apply -f -
```

### Apply Cluster Configuration

```sh
kubectl apply -f ./flux/vars/cluster-settings.yaml
sops --decrypt ./flux/vars/cluster-secrets.sops.yaml | kubectl apply -f -

```

### Kick off Flux

```sh
kubectl apply --server-side --kustomize ./flux/config
```

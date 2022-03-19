#! /bin/bash

# $1 namespace
# $2 app name


# Create app folder
mkdir -p cluster/apps/$1/$2

# Include app in namespace
yq -i ".resources += \"$2\"" cluster/apps/$1/kustomization.yaml


# Kustomization file
echo "---
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
  - helm-release.yaml
" > cluster/apps/$1//$2/kustomization.yaml

# base helm file
echo "---
apiVersion: helm.toolkit.fluxcd.io/v2beta1
kind: HelmRelease
metadata:
  name: $2
  namespace: $1
spec:
  interval: 5m
  chart:
    spec:
      chart: $2
      version: 2022.3.1
      sourceRef:
        kind: HelmRepository
        name: CHANGE_THIS
        namespace: flux-system
  install:
    createNamespace: true
    remediation:
      retries: 3
  upgrade:
    remediation:
      retries: 3
values:
  ingress:
    main:
      enabled: true
      ingressClassName: \"traefik\"
      hosts:
        - &host \"$2.\${SECRET_DOMAIN}\"
      tls:
        - hosts:
            - *host
          secretName: \"$2-tls\" # Kubernetes secret where SSL cert will be stored
      annotations:
        hajimari.io/icon: \"chart-areaspline\" # Hajimari dashboard custom icon

        traefik.ingress.kubernetes.io/router.entrypoints: \"websecure\" # Use HTTPS

        cert-manager.io/cluster-issuer: \"letsencrypt-production\" # Request SSL Certificate

        external-dns/is-public: \"true\" # Access Outside LAN
        external-dns.alpha.kubernetes.io/target: \"\${SECRET_DOMAIN}\" # Create a CNAME registry
        external-dns.alpha.kubernetes.io/cloudflare-proxied: \"true\" # Proxify DNS
" > cluster/apps/$1/$2/helm-release.yaml

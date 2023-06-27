# Kubernetes

My cluster is Ubuntu provisioned on bare-metal using Ansible.

This is a semi hyper-converged cluster, workloads and block storage are sharing the same available resources on my nodes while I have a separate server for (NFS) file storage.

## Core Components

- [metallb](https://github.com/metallb/metallb): A network load-balancer implementation using standard routing protocols
- [kube-vip](https://github.com/kube-vip/kube-vip): Provides static virtual IPs for services
- [cert-manager](https://github.com/cert-manager/cert-manager): Creates SSL certificates for services in my Kubernetes cluster.
- [external-dns](https://github.com/kubernetes-sigs/external-dns): Automatically manages DNS records from my cluster in a cloud DNS provider.
- [longhorn](https://github.com/longhorn/longhorn): Distributed storage for persistent storage
- [traefik](https://github.com/traefik/traefik): Ingress controller to expose HTTP traffic to pods over DNS
- [sops](https://toolkit.fluxcd.io/guides/mozilla-sops/): Managed secrets for Kubernetes, Ansible and Terraform which are commited to Git.

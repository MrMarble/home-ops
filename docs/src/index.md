---
title: "Introduction"
description: "Personal home lab managed with GitOps, Kubernetes, and Infrastructure as Code."
---

# Home Ops

A mono-repository for managing my personal home lab infrastructure using GitOps principles.

::: callout info "Work in progress"
This documentation is a work in progress. Some sections may be incomplete or outdated.
:::

## What's in here?

This repository drives a self-hosted Kubernetes cluster running on bare-metal hardware, with configuration managed entirely through Git. The goal is a declarative, version-controlled, reproducible home lab.

::: grid
::: card "Kubernetes"
A k3s cluster spread across several small-form-factor machines, managed with Flux for GitOps.
:::

::: card "Infrastructure as Code"
Ansible and Terraform handle provisioning and cloud resources (DNS, tunnels, backups).
:::

::: card "Automated Updates"
Renovate keeps container images and Helm charts up to date via pull requests.
:::
:::

## Repository Layout

| Directory | Purpose |
|-----------|---------|
| `kubernetes/` | Kubernetes manifests (apps, core, crds) |
| `provision/ansible/` | Node provisioning and configuration |
| `provision/terraform/` | Cloud resource management |
| `docs/` | This documentation |

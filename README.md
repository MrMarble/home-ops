<div align="center">

<img src="https://camo.githubusercontent.com/5b298bf6b0596795602bd771c5bddbb963e83e0f/68747470733a2f2f692e696d6775722e636f6d2f7031527a586a512e706e67" align="center" width="144px" height="144px"/>

### My home operations repository :octocat:

_... managed with Flux, Renovate and GitHub Actions_ 🐱

</div>

<br/>

<div align="center">

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/mrmarble/home-ops/Schedule%20-%20Renovate?label=Renovate&logo=renovatebot)
![Lines](https://img.shields.io/tokei/lines/github/mrmarble/home-ops?color=success&label=Lines%20of%20code&logo=codefactor&logoColor=white)
[![k3s](https://img.shields.io/badge/k3s-v1.23.4-success.svg?style=flat)]()
</div>

---

## 📖 Overview

This is a mono repository for my home infraestructure and Kubernetes cluster. Infrastructure as Code and GitOps all the way.
Work in progress indefinitely.

---

## ☸ Kubernetes

I've used the [k8s-at-home/template-cluster-k3s](https://github.com/k8s-at-home/template-cluster-k3s) highly opionated template for deploying a k3s cluster with Ansible and Terraform backed by Flux and SOPS.

---

## 🔧 Hardware

| Device                   | Count | OS Disk Size | Data Disk Size | RAM   | Operating System | Purpose           |
|--------------------------|-------|--------------|----------------|-------|------------------|-------------------|
| HP EliteDesk 800 G2 mini | 1     | 240GB NVMe   | 256GB SSD      | 8GB   | Ubuntu 20.04     | k3s Master/Worker |
| Raspberry Pi 3B          | 1     | 32GB SDCard  | N/A            | 4GB   | Raspbian         | Pi-hole           |
| Pi Zero 2 W              | 1     | 32GB SDCard  | N/A            | 512MB | Raspbian         | Pi-hole backup    |
| Raspberry Pi 3           | 1     | 32GB SDCard  | N/A            | 4GB   | Raspbian         | Octoprint         |

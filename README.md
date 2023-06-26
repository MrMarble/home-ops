<div align="center">

<img src="https://camo.githubusercontent.com/5b298bf6b0596795602bd771c5bddbb963e83e0f/68747470733a2f2f692e696d6775722e636f6d2f7031527a586a512e706e67" align="center" width="144px" height="144px"/>

### My home operations repository :octocat:

_... managed with Flux, Renovate and GitHub Actions_ 🐱

</div>

<br/>

<div align="center">

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/mrmarble/home-ops/schedule-renovate.yaml?&logo=renovatebot&style=for-the-badge&label=&color=blue)
[![k3s](https://img.shields.io/badge/k3s-v1.26.3-success.svg?style=for-the-badge&logo=kubernetes&label=&color=blue&logoColor=white)](https://k3s.io/)

[![Uptime Robot status](https://img.shields.io/uptimerobot/status/m793877647-43f7de17c4661915fdcc503c?label=Home%20Internet&logo=googlehome&logoColor=white&style=for-the-badge)](https://uptimerobot.com/)
[![Uptime Robot status](https://img.shields.io/uptimerobot/status/m793877616-990da6b85bc8e4fc22832384?label=Home%20Assistant&logo=homeassistant&logoColor=white&style=for-the-badge)](https://uptimerobot.com/)
[![Uptime Robot status](https://img.shields.io/uptimerobot/status/m793878305-d450c4e357daeea77a8eb9f2?label=grafana&logo=grafana&logoColor=white&style=for-the-badge)](https://uptimerobot.com/)

</div>

---

👋 Welcome to my Home Operations repository. This is a mono repository for my home infrastructure and Kubernetes cluster implementing Infrastructure as Code (IaC) and GitOps practices using tools like [Kubernetes](https://kubernetes.io/), [Flux](https://github.com/fluxcd/flux2), [Renovate](https://github.com/renovatebot/renovate) and [GitHub Actions](https://github.com/features/actions).

## 🔧 Hardware

| Device                   | Count | OS Disk Size | Data Disk Size | RAM   | Operating System | Purpose           |
| ------------------------ | ----- | ------------ | -------------- | ----- | ---------------- | ----------------- |
| MikroTik RB5009UG+S+IN   | 1     | --           | 1GB NAND       | 1GB   | RouterOS 7.10    | Router            |
| HP EliteDesk 800 G2 mini | 1     | 240GB NVMe   | 256GB SSD      | 16GB  | Ubuntu 22        | k3s Master/Worker |
| HP 260 G3 DM             | 1     | 540GB NvmE   | N/A            | 12GB  | Ubuntu 22        | k3s Worker        |
| Raspberry Pi 3B          | 1     | 32GB SDCard  | N/A            | 1GB   | Raspbian         | Pi-hole           |
| Pi Zero 2 W              | 1     | 32GB SDCard  | N/A            | 512MB | Raspbian         | Pi-hole backup    |
| NAS                      | 1     | 120GB SSD    | 8TB ZRAID0     | 16GB  | TrueNas Core     | NFS/BACKUP        |

<details>
  <summary>NAS (Detailed)</summary>

| Type                   | Item                                                                                                                   |
| :--------------------- | :--------------------------------------------------------------------------------------------------------------------- |
| **CPU**                | Intel Core i5-6500 3.2 GHz Quad-Core Processor                                                                         |
| **CPU Cooler**         | Intel Stock                                                                                                            |
| **Motherboard**        | MSI H110M PRO-VH Micro ATX LGA1151                                                                                     |
| **Memory**             | Crucial Ballistix Sport LT 16 GB (2 x 8 GB) DDR4-3200 CL16                                                             |
| **Storage (Boot)**     | Kingston A400 120 GB 2.5" SSD                                                                                          |
| **Storage (Data)**     | Seagate IronWolf NAS 4 TB 3.5" 5400 RPM Internal Hard Drive x 3                                                        |
| **Storage Controller** | 10Gtek® Internal SAS/SATA Raid Controller PCI Express Host Bus Adapter for LSI 9211-8I, LSI SAS2008 Chip, 8-Port 6Gb/s |
| **Case**               | Fractal Design Node 804 MicroATX Mid Tower Case                                                                        |
| **Power Supply**       | Corsair CV550 550 W 80+ Bronze Certified ATX Power Supply                                                              |

</details>

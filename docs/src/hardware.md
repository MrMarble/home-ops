---
title: "Hardware"
description: "Inventory of all physical hardware in the home lab."
---

# Hardware

Overview of all physical devices in the lab.

## Network

| Device | RAM | Speed | Purpose |
|--------|-----|-------|---------|
| Unifi Cloud Gateway Fiber (UCG-Fiber) | 3 GB | 10 GbE | Router |
| HP ProCurve 1810G-24 | 512 MB | 1 GbE | Switch |

## Kubernetes Cluster

| Device | OS Disk | Data Disk | RAM | Role |
|--------|---------|-----------|-----|------|
| HP EliteDesk 800 G2 mini | 240 GB NVMe | 256 GB SSD | 16 GB | Master |
| HP 260 G3 DM | 256 GB SSD | 540 GB NVMe | 16 GB | Master |
| Lenovo M910x | 256 GB NVMe | — | 8 GB | Master |

All nodes run Fedora Server.

## Other Devices

| Device | OS Disk | RAM | Purpose |
|--------|---------|-----|---------|
| DELL Wyse 5060 | 240 GB SSD | 16 GB | Home Assistant (HAOS) |
| Raspberry Pi 3B | 32 GB SD Card | 1 GB | Pi-hole (Raspbian) |

## NAS

::: callout info "Custom build"
The NAS is a custom-built machine running TrueNAS Core, providing NFS shares and off-site backup uploads to Backblaze B2.
:::

| Component | Detail |
|-----------|--------|
| CPU | Intel Core i5-6500 3.2 GHz Quad-Core |
| Motherboard | MSI H110M PRO-VH Micro ATX LGA1151 |
| RAM | Crucial Ballistix Sport LT 16 GB (2×8 GB DDR4-3200 CL16) |
| Boot Drive | Kingston A400 120 GB 2.5" SSD |
| Data Storage | 3× Seagate IronWolf NAS 4 TB (ZRAID0) |
| Media Storage | Seagate Enterprise 12 TB (no RAID) |
| Storage Controller | 10Gtek LSI 9211-8I SAS/SATA 8-Port 6 Gb/s |
| Case | Fractal Design Node 804 MicroATX |
| PSU | Corsair CV550 550 W 80+ Bronze |

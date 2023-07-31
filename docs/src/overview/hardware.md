# 🔧 Hardware

| Device                   | Count | OS Disk Size | Data Disk Size | RAM   | Operating System                 | Purpose           |
|--------------------------|-------|--------------|----------------|-------|----------------------------------|-------------------|
| MikroTik RB5009UG+S+IN   | 1     | --           | 1GB NAND       | 1GB   | RouterOS 7.10                    | Router            |
| HP ProCurve 1810G-24     | 1     | --           | --             | 512MB | --                               | Switch            |
| HP EliteDesk 800 G2 mini | 1     | 240GB NVMe   | 256GB SSD      | 16GB  | [Talos](https://talos.dev) 1.4.6 | k8s Master/Worker |
| HP 260 G3 DM             | 1     | 256GB SSD    | 540GB NvmE     | 16GB  | [Talos](https://talos.dev) 1.4.6 | k8s Worker        |
| DELL Wyse 5060           | 1     | 240GB SSD    | --             | 16GB  | [Talos](https://talos.dev) 1.4.6 | k8s Worker        |
| Raspberry Pi 3B          | 1     | 32GB SDCard  | N/A            | 1GB   | Raspbian                         | Pi-hole           |
| NAS                      | 1     | 120GB SSD    | 8TB ZRAID0     | 16GB  | TrueNas Core                     | NFS/BACKUP        |

---

<details>
  <summary>NAS (Detailed)</summary>

| Type                   | Item                                                                                                                   |
|:-----------------------|:-----------------------------------------------------------------------------------------------------------------------|
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

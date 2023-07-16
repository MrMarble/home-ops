# Sidero Metal

[Sidero](https://sidero.dev) uses Cluster API to automate bare metal server provisioning and lifecycle management.

Instead of managing my servers with ansible I use Sidero and network boot (PXE) to provision my servers automatically with [Talos](https://talos.dev) and Kubernetes.


Appart from Sidero itself I use the DHCP server on my router to supply the network boot parameters to my servers. For RouterOS this is the config:

```sh
/ip/dhcp-server/network/set 0 next-server=<SIDERO_CONTROL_PLANE_IP>
# https://www.sidero.dev/v0.5/getting-started/prereq-dhcp/
/ip/dhcp-server/network/set 0 boot-file-name="<BOOT_FILE>"
```

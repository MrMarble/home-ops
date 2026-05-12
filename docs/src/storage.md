---
title: "Storage"
description: "PVC storage, backups, and restore with Longhorn, VolumeSync, and Kopia."
---

# Storage

[Longhorn](https://longhorn.io) provides distributed block storage across cluster nodes. [VolumeSync](https://volsync.readthedocs.io) runs hourly PVC snapshots into a [Kopia](https://kopia.io) repository on the NAS, giving every stateful app an automatic off-node backup and a one-step restore path.

## Components

### Longhorn

Distributed block storage installed in the `longhorn` namespace. Each PVC is replicated across nodes so no single node failure causes data loss. Longhorn also owns the `VolumeSnapshotClass` named `longhorn` that VolumeSync requires — see [Nuances & Decisions](#nuances--decisions) for why this class is created explicitly rather than relying on Longhorn to create it automatically.

### VolumeSync

Kubernetes operator installed in the `volsync` namespace. It takes a CSI VolumeSnapshot of a PVC (`copyMethod: Snapshot`), then runs a Kopia mover job that pushes the snapshot contents to the NFS repository. The `ReplicationSource` CRD handles outbound backups; `ReplicationDestination` handles restores.

### Kopia

Deduplicating backup engine. The repository lives on the NAS at `192.168.1.25:/mnt/Data/Kopia` and is mounted directly into VolumeSync mover jobs via `moverVolumes`. The Kopia UI is exposed at `kopia.${SECRET_DOMAIN}` for browsing snapshots and verifying backups.

---

## Enabling VolumeSync on an app

1. Add the component to the app's `kustomization.yaml`:

   ```yaml
   components:
     - ../../../../components/volsync
   ```

2. Set the required variables in the app's `ks.yaml` under `postBuild.substitute`:

   ```yaml
   postBuild:
     substitute:
       APP: myapp
       VOLSYNC_CAPACITY: 10Gi
   ```

All variables have defaults. Override only what differs from the table below.

| Variable | Default | Override when |
|---|---|---|
| `VOLSYNC_CAPACITY` | `5Gi` | App data exceeds 5 Gi |
| `VOLSYNC_ACCESSMODES` | `ReadWriteMany` | App uses SQLite or another file-lock database |
| `VOLSYNC_STORAGECLASS` | `longhorn` | Rarely needed |
| `VOLSYNC_SNAPSHOTCLASS` | `longhorn` | Rarely needed |
| `VOLSYNC_PUID` / `VOLSYNC_PGID` | `1000` | App runs as a different UID/GID |

---

## Nuances & Decisions

### `cleanupTempPVC: false` — Longhorn snapshot data lives inside the source volume

The VolumeSync component sets `cleanupTempPVC: false` on `ReplicationDestination`. The upstream [onedr0p/home-ops](https://github.com/onedr0p/home-ops) reference (which uses Ceph) sets this to `true`.

Longhorn CSI snapshots are *internal*: snapshot data is stored in the source volume's replica chain, not as an independent object. When `cleanupTempPVC: true`, VolumeSync deletes the temporary destination PVC after creating the snapshot. Longhorn then deletes the underlying volume, and the snapshot data disappears with it. Subsequent restore attempts fail with `volume.longhorn.io not found`.

Setting `cleanupTempPVC: false` keeps `volsync-{app}-dst-dest` alive as a persistent PVC, so the snapshot data survives until the next successful restore cycle.

**Tradeoff:** Every VolumeSync-enabled app has one extra persistent PVC (`volsync-{app}-dst-dest`). This is intentional.

::: callout warning "Do not revert cleanupTempPVC to true"
Changing `cleanupTempPVC` back to `true` will silently break all restores on Longhorn. Backups will appear to succeed, but no restore will ever complete — the snapshot data will be gone before the restore job can read it.
:::

### `VOLSYNC_ACCESSMODES: ReadWriteOnce` for SQLite-based apps

Apps such as radarr, sonarr, and prowlarr set `VOLSYNC_ACCESSMODES: ReadWriteOnce` in their `ks.yaml`. The component default is `ReadWriteMany`.

Longhorn implements `ReadWriteMany` by exposing the volume over NFS through a share-manager pod. SQLite uses `fcntl()` advisory locks, which are not reliably honoured over NFS. On a brand-new, empty PVC this manifests as "unable to open database file" or "database file is corrupt" immediately on first launch — even though the volume is healthy.

`ReadWriteOnce` provisions a direct block device instead. `fcntl()` works correctly, and the app starts normally. Longhorn RWO volumes are still distributed and can be rescheduled to any node; they are not node-local like `local-path`.

::: callout tip "Which apps need ReadWriteOnce?"
Any app that uses SQLite or another database that relies on POSIX file locks (SQLite, LevelDB, BoltDB). Apps that use a standalone database process such as PostgreSQL or Redis do not have this requirement and can use the `ReadWriteMany` default.
:::

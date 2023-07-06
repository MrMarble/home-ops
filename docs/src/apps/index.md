# Helper Apps

Outside of the core of Kubernetes I run some apps that help to maintain de state of the cluster

## [kyverno](https://kyverno.io)

Kyverno is a policy engine for kubernetes, policies can validate, mutate, generate and cleanup Kubernetes resources

These are the policies I'm currently running on my cluster.

- [remove-cpu-limits](https://github.com/mrmarble/home-ops/tree/main/cluster/apps/kyverno/kyverno/remove-cpu-limit.yaml): This policy removes CPU limits from all Pods.

## [reloader](https://github.com/stakater/Reloader)

A Kubernetes controller to watch changes in ConfigMap and Secrets and do rolling upgrades on Pods with their associated Deployment, StatefulSet, DaemonSet and DeploymentConfig.

Apply changes to Pods after modifing a ConfigMap/Secret without having to restart it manually, uses an annotation to enable

## [descheduler](https://github.com/kubernetes-sigs/descheduler)

Kubernetes scheduler decisions are influenced by its view of a Kubernetes cluster at that point of time when a new pod appears for scheduling. As Kubernetes clusters are very dynamic and their state changes over time, there may be desire to move already running pods to some other nodes for various reasons:

- Some nodes are under or over utilized.
- The original scheduling decision does not hold true any more, as taints or labels are added to or removed from nodes, pod/node affinity requirements are not satisfied any more.
- Some nodes failed and their pods moved to other nodes.
- New nodes are added to clusters.

## [node-feature-discovery](https://github.com/kubernetes-sigs/node-feature-discovery)

Kubernetes add-on for detecting hardware features and system configuration!

My main usage is to detect the USB Bluetooth adapter.

#!/usr/bin/env bash


talosctl apply-config -n 192.168.1.10 -f ./clusterconfig/k8s-caos.yaml
talosctl apply-config -n 192.168.1.11 -f ./clusterconfig/k8s-gea.yaml
talosctl apply-config -n 192.168.1.14 -f ./clusterconfig/k8s-cronos.yaml
talosctl apply-config -n 192.168.1.13 -f ./clusterconfig/k8s-eros.yaml

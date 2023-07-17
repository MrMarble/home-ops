#!/usr/bin/env bash


talosctl apply-config -n 192.168.1.10 -f ./clusterconfig/home-cluster-kmaster1.yaml
talosctl apply-config -n 192.168.1.11 -f ./clusterconfig/home-cluster-kworker1.yaml

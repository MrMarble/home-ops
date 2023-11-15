#!/usr/bin/env bash


talosctl apply-config -n 192.168.1.10 -f ./clusterconfig/home-cluster-caos.yaml
talosctl apply-config -n 192.168.1.11 -f ./clusterconfig/home-cluster-gaia.yaml
talosctl apply-config -n 192.168.1.12 -f ./clusterconfig/home-cluster-tartaro.yaml
talosctl apply-config -n 192.168.1.13 -f ./clusterconfig/home-cluster-erebos.yaml

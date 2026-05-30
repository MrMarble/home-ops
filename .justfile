#!/usr/bin/env -S just --justfile

set lazy
set quiet
set shell := ['bash', '-euo', 'pipefail', '-c']

# Kube Recipes
[group: 'Kube']
mod kube "kubernetes"

[private]
default:
    just -l

[private]
log lvl msg *args:
    gum log -t rfc3339 -s -l "{{ lvl }}" "{{ msg }}" {{ args }}

[private]
template file *args:
    minijinja-cli "{{ file }}" {{ args }} | vals eval -f -

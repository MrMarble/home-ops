#!/usr/bin/env bash

# Get all cloudflare ipv4 ranges in an array
ipv4_cloudflare="$(curl -sL https://www.cloudflare.com/ips-v4 | jq --raw-input --slurp 'split("\n")')"
if [[ -z "${ipv4_cloudflare}" ]]; then
    exit 1
fi

# Get all cloudflare ipv6 ranges in an array
ipv6_cloudflare="$(curl -sL https://www.cloudflare.com/ips-v6 | jq --raw-input --slurp 'split("\n")')"
if [[ -z "${ipv6_cloudflare}" ]]; then
    exit 1
fi

# Merge cloudflare ipv4, and cloudflare ipv6 ranges into one array
combined=$(jq \
    --argjson ipv4_cloudflare "${ipv4_cloudflare}" \
    --argjson ipv6_cloudflare "${ipv6_cloudflare}" \
    -n '$ipv4_cloudflare + $ipv6_cloudflare' \
)

echo "${combined}"

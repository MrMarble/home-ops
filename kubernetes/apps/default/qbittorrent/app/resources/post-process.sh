#!/usr/bin/env bash
# shellcheck disable=SC2154

set -euo pipefail

# User-defined variables
CROSS_SEED_HOST="${CROSS_SEED_HOST:-required}"
CROSS_SEED_PORT="${CROSS_SEED_PORT:-required}"
CROSS_SEED_API_KEY="${CROSS_SEED_API_KEY:-required}"
CROSS_SEED_SLEEP_INTERVAL="${CROSS_SEED_SLEEP_INTERVAL:-30}"
# Function to set release variables from qBittorrent
set_qb_vars() {
    RELEASE_NAME="$1"      # %N
    RELEASE_DIR="$2"       # %F
    RELEASE_CAT="$3"       # %L
    RELEASE_SIZE="$4"      # %Z
    RELEASE_INDEXER="$5"   # %T
    RELEASE_STATUS=0       # Always 0 for qBittorrent
    RELEASE_TYPE="Torrent"
}

# Function to search for cross-seed
search_cross_seed() {
    local status_code
    status_code=$(curl \
        --silent \
        --output /dev/null \
        --write-out "%{http_code}" \
        --request POST \
        --data-urlencode "path=${RELEASE_DIR}" \
        --header "X-Api-Key: ${CROSS_SEED_API_KEY}" \
        "http://${CROSS_SEED_HOST}:${CROSS_SEED_PORT}/api/webhook"
    )

    printf "cross-seed search returned with HTTP status code %s and path %s\n" \
        "${status_code}" \
        "${RELEASE_DIR}" >&2

    sleep "${CROSS_SEED_SLEEP_INTERVAL}"
}

main() {
    set_qb_vars "$@"

    # Update permissions on the release directory
    chmod -R 750 "${RELEASE_DIR}"

    # Search for cross-seed
    search_cross_seed
}

main "$@"

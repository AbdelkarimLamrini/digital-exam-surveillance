#!/usr/bin/env bash

set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

echo "[1/4] - Stopping containers"
docker compose down

echo "[2/4] - Cleaning up volumes"
rm -rf volumes/*
mkdir -p volumes/postgres/data
mkdir -p volumes/datarhei-core/config
mkdir -p volumes/datarhei-core/data/recordings

echo "[3/4] - Installing config files"
cp restreamer-config.json volumes/datarhei-core/config/config.json

echo "[4/4] - Launching new containers"
docker compose up -d

echo "Deployment finished successfully!"

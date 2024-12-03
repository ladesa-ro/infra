#!/usr/bin/env bash

set -e;

echo  ================================================================
echo "Cleaning orphaned docker containers and images..."
echo  ================================================================

docker container prune -f;
docker image prune -fa;

echo "Orphaned docker containers and images collected."

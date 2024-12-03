#!/usr/bin/env bash

set -e;

echo "Starting cleanup..."

export PROJECT_NAMESPACES="ladesa-ro-production ladesa-ro-development ladesa-ro-local"
export REGISTRY_NAMESPACES=${PROJECT_NAMESPACES}

bash ./cluster/k8s-orphaned-replicasets.sh;
bash ./registry/registry-unreferenced-blobs.sh;
bash ./docker/prune-containers-and-images.sh;
bash ./cluster/kind/nodes-images-cache-prune.sh;

echo "Cleanup Done! Thanks."

#!/usr/bin/env bash

set -e;

echo  ================================================================
echo "Cleaning orphaned images inside kind cluster nodes..."
echo  ================================================================

for nodeName in $(kind get nodes)
do
  docker exec "${nodeName}" bash -c "crictl rmi --prune";
done;

echo  ================================================================

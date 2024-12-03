#!/usr/bin/env bash

set -e;

echo  ================================================================
echo "Cleaning unreferenced registry blobs (registry garbage-collect)"
echo  ================================================================

for NAMESPACE in ${REGISTRY_NAMESPACES}
do
  REGISTRY_POD=$(kubectl get pods --selector "app=registry" --output=name -n ${NAMESPACE}; exit 0;);

  for REGISTRY_POD in $REGISTRY_POD
  do
    if ! [ -z "$REGISTRY_POD" ]; then
      (kubectl exec --tty --stdin ${REGISTRY_POD} -n ${NAMESPACE} -- registry garbage-collect /etc/docker/registry/config.yml --delete-untagged=true; exit 0);
    fi;
  done;
done;

echo "Unreferenced registry blobs garbage collected."

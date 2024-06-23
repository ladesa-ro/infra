#!/usr/bin/env bash

set -xe;

echo "Starting cleanup..."

PROJECT_NAMESPACES="ladesa-ro-production ladesa-ro-development ladesa-ro-local"
REGISTRY_NAMESPACES=${PROJECT_NAMESPACES}

echo  ================================================================
echo "Cleaning orphaned replicasets"
echo  ================================================================


for NAMESPACE in ${PROJECT_NAMESPACES}
do
  replicas=$(((kubectl get replicaset -n ${NAMESPACE} -o jsonpath='{ .items[?(@.spec.replicas==0)].metadata.name }'); exit 0));

  if ! [ -z "$replicas" ]; then
    ((kubectl delete replicaset -n ${NAMESPACE} ${replicas}); exit 0;)
  fi;

done;

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

echo "Cleanup Done! Thanks."
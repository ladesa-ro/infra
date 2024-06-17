#!/bin/bash

set +e

export CLUSTER_NAME=traefik
export TRAEFIK_NAMESPACE=traefik
export APP_NAMESPACE=default

echo "Deploying traefik components:"
traefik_files=("namespaces" "clusterroles" "deployments" "services")
for f in ${traefik_files[@]}; do
  envsubst < traefik/${f}.yaml | kubectl apply -f -
done

echo "Deploying sample app:"
envsubst < sample-whoami.yaml | kubectl apply -f -
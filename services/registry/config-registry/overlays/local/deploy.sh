#!/bin/bash

set -xe

FILE=registry-config.yaml
CONFIG_MAP=registry-config-map
NAMESPACE=ladesa-ro-local

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true" && "${LADESA_DEPLOY_NS_LOCAL_REGISTRY}" == "true" ]]; then
  kubectl create configmap ${CONFIG_MAP} \
    --from-file=${FILE} \
    --namespace ${NAMESPACE} \
    -o yaml --dry-run=client | kubectl apply -f - \
  ;
fi

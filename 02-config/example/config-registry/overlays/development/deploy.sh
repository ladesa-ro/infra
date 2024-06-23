#!/bin/bash

set -xe

FILE=registry-config.yaml
CONFIG_MAP=registry-config-map
NAMESPACE=ladesa-ro-development

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" && "${LADESA_DEPLOY_NS_DEVELOPMENT_REGISTRY}" == "true" ]]; then
  kubectl create configmap ${CONFIG_MAP} \
    --from-file=${FILE} \
    --namespace ${NAMESPACE} \
    -o yaml --dry-run=client | kubectl apply -f - \
  ;
fi

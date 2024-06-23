#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" && "${LADESA_DEPLOY_NS_PRODUCTION_REGISTRY}" == "true" ]]; then
  kubectl get configmap registry-config-map --namespace=ladesa-ro-production;
fi


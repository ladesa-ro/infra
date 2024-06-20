#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER_NAMESPACES}" == "true" ]]; then
  exit 0;
fi

kubectl apply -f namespace-development.yaml \
              -f namespace-production.yaml \
              -f namespace-local.yaml \
  ;

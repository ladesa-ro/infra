#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" && "${LADESA_DEPLOY_NS_PRODUCTION_REGISTRY}" == "true" ]]; then
  kubectl apply -k ..;
fi


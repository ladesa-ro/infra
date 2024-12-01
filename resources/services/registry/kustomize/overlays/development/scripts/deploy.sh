#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" && "${LADESA_DEPLOY_NS_DEVELOPMENT_REGISTRY}" == "true" ]]; then
  kubectl apply -k ..;
fi


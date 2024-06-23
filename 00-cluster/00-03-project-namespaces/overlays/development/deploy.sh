#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER}" == "true" ]]; then
  exit 0;
fi

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" ]]; then
  kubectl apply -f ./namespace.yaml;
fi

#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" ]]; then
  kubectl apply -f ./namespace.yaml;
fi

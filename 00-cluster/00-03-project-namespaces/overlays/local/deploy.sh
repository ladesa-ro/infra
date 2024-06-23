#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true" ]]; then
  kubectl apply -f ./namespace.yaml;
fi

#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_REGISTRY_PRODUCTION}" == "true" ]]; then
  kubectl apply -k ..;
fi

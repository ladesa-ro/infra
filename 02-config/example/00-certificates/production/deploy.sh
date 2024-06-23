#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" && "${LADESA_DEPLOY_NS_PRODUCTION_CERT}" == "true" ]]; then
  kubectl apply -f issuer.yaml;
fi

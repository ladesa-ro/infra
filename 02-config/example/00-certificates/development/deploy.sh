#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" && "${LADESA_DEPLOY_NS_DEVELOPMENT_CERT}" == "true" ]]; then
  kubectl apply -f issuer.yaml;
fi

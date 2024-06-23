#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true" && "${LADESA_DEPLOY_NS_LOCAL_CERT}" == "true" ]]; then
  kubectl apply -f issuer.yaml;
fi

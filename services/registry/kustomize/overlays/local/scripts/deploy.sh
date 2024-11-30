#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true"  && "${LADESA_DEPLOY_NS_LOCAL_REGISTRY}" == "true" ]]; then
  kubectl apply -k ..;
fi


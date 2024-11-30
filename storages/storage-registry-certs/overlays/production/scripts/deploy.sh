#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_NS_PRODUCTION_REGISTRY}" == "true" ]]; then
  exit 0;
fi

kubectl apply -k ..;

#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_NS_LOCAL}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_NS_LOCAL_SERVICE_API}" == "true" ]]; then
  exit 0;
fi

kubectl apply -k ..;

kubectl rollout restart \
  deployment.apps/ladesa-ro-api \
  --namespace ladesa-ro-local \
;
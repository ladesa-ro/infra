#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_NS_PRODUCTION_SERVICE_WEB}" == "true" ]]; then
  exit 0;
fi

kubectl apply -k ..;

kubectl rollout restart \
  deployment.apps/ladesa-ro-web \
  --namespace ladesa-ro-production \
;
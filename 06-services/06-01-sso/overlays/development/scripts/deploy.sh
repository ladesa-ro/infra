#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_SSO_DEVELOPMENT}" == "true" ]]; then
  kubectl apply -k ..;
  kubectl rollout restart deployment.apps/ladesa-ro-sso --namespace ladesa-ro-development;
fi
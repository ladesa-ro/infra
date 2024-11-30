#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_SSO}" == "true" ]]; then
  exit 0;
fi

kubectl apply -k ..;
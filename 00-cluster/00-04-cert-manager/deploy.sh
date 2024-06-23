#!/usr/bin/env bash

set -xe;

if [[ ! "${LADESA_DEPLOY_SETUP_CLUTER_CERT_MANAGER}" == "true" ]]; then
  exit 0;
fi

kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.15.0/cert-manager.yaml;

cmctl check api --wait=2m;
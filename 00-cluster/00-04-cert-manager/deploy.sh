#!/usr/bin/env bash

set -xe;

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER_CERT_MANAGER}" == "true" ]]; then
  exit 0;
fi

if [[ ! "$(kubectl get ns cert-manager &>/dev/null; echo $?)" == "0" ]]; then
  kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.15.0/cert-manager.yaml;
fi;

cmctl check api --wait=2m;
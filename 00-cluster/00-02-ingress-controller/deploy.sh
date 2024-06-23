#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER_INGRESS_CONTROLLER}" == "true" ]]; then
  exit 0;
fi

if [[ ! "$(kubectl get ns ingress-nginx &>/dev/null; echo $?)" == "0" ]]; then
  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml;
fi;


#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER}" == "true" ]]; then
  exit 0;
fi

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER_INIT}" == "true" ]]; then
  exit 0;
fi

if [[ ! "$(kind create cluster --config=./init-cluster-manifest.yml; echo $?)" == "0" ]]; then
  echo "Cluster already exists";
  exit 0;
fi;

(kubectl taint nodes --all node-role.kubernetes.io/control-plane- || exit 0);
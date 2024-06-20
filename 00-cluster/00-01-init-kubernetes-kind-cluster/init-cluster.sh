#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER_INIT}" == "true" ]]; then
  exit 0;
fi

kind delete cluster;

kind create cluster --config=./init-cluster-manifest.yml;

(kubectl taint nodes --all node-role.kubernetes.io/control-plane- || exit 0);
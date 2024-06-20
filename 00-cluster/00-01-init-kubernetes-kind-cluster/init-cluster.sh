#!/bin/bash

set -xe

if [[ ! "$(kind create cluster --config=./init-cluster-manifest.yml; echo $?)" == "0" ]]; then
  echo "Cluster already exists";
  exit 0;
fi;

(kubectl taint nodes --all node-role.kubernetes.io/control-plane- || exit 0);
#!/bin/bash

set -xe

kind delete cluster;

kind create cluster --config=./init-cluster-manifest.yml;

(kubectl taint nodes --all node-role.kubernetes.io/control-plane- || exit 0);
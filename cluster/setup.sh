#!/usr/bin/env bash

set -xe;

(cd ./00-setup-environment; ./setup-environment.sh);
(cd ./01-init-kubernetes-kind-cluster; ./init-cluster.sh);
(cd ./02-setup-k8s-traefik-integration; ./setup-k8s-traefik-integration.sh);
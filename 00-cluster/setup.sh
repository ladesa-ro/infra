#!/usr/bin/env bash

set -xe;

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER}" == "true" ]]; then
  exit 0;
fi

(cd ./00-00-setup-environment; ./setup-environment.sh);
(cd ./00-01-init-kubernetes-kind-cluster; ./init-cluster.sh);
(cd ./00-02-setup-ingress-controller; ./setup-ingress-controller.sh);
(cd ./00-03-project-namespaces; ./setup.sh);
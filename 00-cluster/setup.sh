#!/usr/bin/env bash

set -xe;

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER}" == "true" ]]; then
  exit 0;
fi

(cd ./00-00-setup-environment; ./setup.sh);
(cd ./00-01-init-kubernetes-kind-cluster; ./init-cluster.sh);
(cd ./00-02-ingress-controller; ./deploy.sh);
(cd ./00-03-project-namespaces; ./deploy.sh);
(cd ./00-04-cert-manager; ./deploy.sh);
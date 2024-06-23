#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true" && "${LADESA_DEPLOY_NS_LOCAL_REGISTRY}" == "true" ]]; then
  kubectl get secret ladesa-registry-pull-secret --namespace=ladesa-ro-local;
fi

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" && "${LADESA_DEPLOY_NS_DEVELOPMENT_REGISTRY}" == "true" ]]; then
  kubectl get secret ladesa-registry-pull-secret --namespace=ladesa-ro-development;
fi

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" && "${LADESA_DEPLOY_NS_PRODUCTION_REGISTRY}" == "true" ]]; then
  kubectl get secret ladesa-registry-pull-secret --namespace=ladesa-ro-production;
fi

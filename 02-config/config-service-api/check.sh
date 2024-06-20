#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_API_LOCAL}" == "true" ]]; then
  kubectl get secret ladesa-ro-api-config --namespace=ladesa-ro-local;
fi

if [[ "${LADESA_DEPLOY_SERVICE_API_DEVELOPMENT}" == "true" ]]; then
  kubectl get secret ladesa-ro-api-config --namespace=ladesa-ro-development;
fi

if [[ "${LADESA_DEPLOY_SERVICE_API_PRODUCTION}" == "true" ]]; then
  kubectl get secret ladesa-ro-api-config --namespace=ladesa-ro-production;
fi
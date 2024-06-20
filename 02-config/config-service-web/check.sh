#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_WEB_LOCAL}" == "true" ]]; then
  kubectl get secret ladesa-ro-web-config --namespace=ladesa-ro-local;
fi

if [[ "${LADESA_DEPLOY_SERVICE_WEB_DEVELOPMENT}" == "true" ]]; then
  kubectl get secret ladesa-ro-web-config --namespace=ladesa-ro-development;
fi

if [[ "${LADESA_DEPLOY_SERVICE_WEB_PRODUCTION}" == "true" ]]; then
  kubectl get secret ladesa-ro-web-config --namespace=ladesa-ro-production;
fi
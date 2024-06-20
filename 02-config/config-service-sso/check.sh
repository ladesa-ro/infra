#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_SSO_LOCAL}" == "true" ]]; then
  kubectl get secret ladesa-ro-sso-config --namespace=ladesa-ro-local;
fi

if [[ "${LADESA_DEPLOY_SERVICE_SSO_DEVELOPMENT}" == "true" ]]; then
  kubectl get secret ladesa-ro-sso-config --namespace=ladesa-ro-development;
fi

if [[ "${LADESA_DEPLOY_SERVICE_SSO_PRODUCTION}" == "true" ]]; then
  kubectl get secret ladesa-ro-sso-config --namespace=ladesa-ro-production;
fi
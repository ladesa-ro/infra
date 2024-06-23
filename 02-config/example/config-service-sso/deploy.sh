#!/bin/bash

set -xe

ENV_BASE=sso
CONFIG_NAME=ladesa-ro-sso-config

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true" && "${LADESA_DEPLOY_NS_LOCAL_SERVICE_SSO}" == "true" ]]; then
  kubectl create secret generic \
    ${CONFIG_NAME} \
    --namespace=ladesa-ro-local \
    --from-env-file=./${ENV_BASE}.local.env \
    --dry-run=client \
    -o yaml \
    | kubectl apply -f - \
  ;
fi

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" && "${LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_SSO}" == "true" ]]; then
    kubectl create secret generic \
    ${CONFIG_NAME} \
    --namespace=ladesa-ro-development \
    --from-env-file=./${ENV_BASE}.dev.env \
    --dry-run=client \
    -o yaml \
    | kubectl apply -f - \
  ;
fi

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" && "${LADESA_DEPLOY_NS_PRODUCTION_SERVICE_SSO}" == "true" ]]; then
  kubectl create secret generic \
    ${CONFIG_NAME} \
    --namespace=ladesa-ro-production \
    --from-env-file=./${ENV_BASE}.prod.env \
    --dry-run=client \
    -o yaml \
    | kubectl apply -f - \
  ;
fi
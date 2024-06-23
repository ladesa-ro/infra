#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL}" == "true" && "${LADESA_DEPLOY_NS_LOCAL_CERT}" == "true" ]]; then
  kubectl get clusterissuer ladesa-ro-issuer-local;
fi

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT}" == "true" && "${LADESA_DEPLOY_NS_DEVELOPMENT_CERT}" == "true" ]]; then
  kubectl get clusterissuer ladesa-ro-issuer-development;
fi

if [[ "${LADESA_DEPLOY_NS_PRODUCTION}" == "true" && "${LADESA_DEPLOY_NS_PRODUCTION_CERT}" == "true" ]]; then
  kubectl get clusterissuer ladesa-ro-issuer-production;
fi

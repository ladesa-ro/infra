#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_SSO}" == "true" ]]; then
  kubectl apply -k ..;
fi
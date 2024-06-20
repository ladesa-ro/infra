#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_SSO_PRODUCTION}" == "true" ]]; then
  kubectl apply -k ..;
fi
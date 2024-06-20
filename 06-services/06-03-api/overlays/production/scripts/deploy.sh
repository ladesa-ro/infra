#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_API_PRODUCTION}" == "true" ]]; then
  kubectl apply -k ..;
fi
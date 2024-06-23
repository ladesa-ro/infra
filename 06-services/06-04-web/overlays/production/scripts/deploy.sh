#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_PRODUCTION_SERVICE_WEB}" == "true" ]]; then
  kubectl apply -k ..;
fi
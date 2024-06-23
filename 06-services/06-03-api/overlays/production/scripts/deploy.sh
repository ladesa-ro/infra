#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_PRODUCTION_SERVICE_API}" == "true" ]]; then
  kubectl apply -k ..;
fi
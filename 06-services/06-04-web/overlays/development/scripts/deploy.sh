#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_SERVICE_WEB_DEVELOPMENT}" == "true" ]]; then
  kubectl apply -k ..;
fi
#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL_SERVICE_SSO}" == "true" ]]; then
  kubectl apply -k ..;
fi
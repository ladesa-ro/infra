#!/bin/bash

set -xe

kubectl apply -f volume-artifacts.yaml \
              -f volume-certs.yaml \
  ;

kubectl create configmap registry-config-map \
    --from-file=files/registry-config.yaml \
    -o yaml --dry-run=client | kubectl apply -f - \
  ;

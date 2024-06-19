#!/bin/bash

set -xe

kubectl apply -f 00-registry-volume-artifacts.yaml \
              -f 00-registry-volume-certs.yaml \
              ;

kubectl create configmap registry-config-map --from-file=registry-config.yaml -o yaml --dry-run=client | kubectl apply -f -

kubectl apply -f 02-registry-deployment.yaml \
              -f 03-registry-ingress.yaml \
              ;
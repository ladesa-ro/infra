#!/bin/bash

set -xe

kubectl apply -f registry-deployment.yaml \
              -f registry-ingress.yaml \
  ;
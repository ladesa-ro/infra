#!/bin/bash

set -xe

kubectl apply -f namespace-development.yaml \
              -f namespace-production.yaml \
  ;


(cd ./services; ./deploy.sh);
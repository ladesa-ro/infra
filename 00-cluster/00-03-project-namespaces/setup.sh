#!/bin/bash

set -xe

kubectl apply -f namespace-development.yaml \
              -f namespace-production.yaml \
              -f namespace-local.yaml \
  ;

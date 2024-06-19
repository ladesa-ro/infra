#!/bin/bash

set -xe

kubectl apply -f ./00-volume-config.yaml \
              -f ./00-volume-log.yaml \
              -f ./00-volume-storage.yaml \
              -f ./01-postgres-volume-storage.yaml \
              -f ./02-postgres-deployment.yaml \
              -f ./02-redis-deployment.yaml \
              -f ./03-deployment.yaml \
              -f ./04-ingress-route.yaml;
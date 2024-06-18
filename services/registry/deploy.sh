#!/bin/bash

set -xe

kubectl apply -f ./00-volume-config.yaml \
                  ./00-volume-log.yaml \
                  ./00-volume-storage.yaml \
                  ./01-postgres-volume-storage.yaml \
                  ./02-postgres-deployment.yaml \
                  ./02-redis-deployment.yaml \
                  ./03-deployment.yaml;
#!/bin/bash

set -xe

kubectl apply -f ./00-volume-config.yaml \
                  ./00-volume-log.yaml \
                  ./00-volume-storage.yaml \
                  ./01-deployment.yaml ;
#!/bin/bash

set -xe

kubectl apply -f 00-registry-volume-artifacts.yaml \
              -f 00-registry-volume-certs.yaml \
              -f 01-registry-config.yaml \
              -f 02-registry-deployment.yaml \
              -f 03-registry-ingress.yaml \
              -f 04-registry-dashboard-config.yaml \
              -f 05-registry-dashboard-deployment.yaml \
              -f 06-registry-dashboard-ingress.yaml \
              ;
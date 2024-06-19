#!/bin/bash

set -xe

# helm upgrade --install registry ./charts/general -n registry -f values-server.yaml --create-namespace
# helm upgrade --install registry-dashboard ./charts/general -n registry -f values-dashboard.yaml

helm template registry ./charts/general -n registry -f values-server.yaml --create-namespace > out/server.yaml
helm template registry-dashboard ./charts/general -n registry -f values-dashboard.yaml > out/dashboard.yaml


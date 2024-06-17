#!/bin/bash

set -xe

kind delete cluster;

kind create cluster --config=./01-init-cluster-manifest.yml;

kubectl apply -f https://raw.githubusercontent.com/traefik/traefik/v3.0/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml;

kubectl apply -f https://raw.githubusercontent.com/traefik/traefik/v3.0/docs/content/reference/dynamic-configuration/kubernetes-crd-rbac.yml;

helm repo add traefik https://traefik.github.io/charts;
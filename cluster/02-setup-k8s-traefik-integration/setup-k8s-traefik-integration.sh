#!/bin/bash

set -xe

kubectl apply -f ./traefik-namespaces.yml;

kubectl apply -f https://raw.githubusercontent.com/traefik/traefik/v3.0/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml;

kubectl apply -f https://raw.githubusercontent.com/traefik/traefik/v3.0/docs/content/reference/dynamic-configuration/kubernetes-crd-rbac.yml;

helm repo add traefik https://traefik.github.io/charts;
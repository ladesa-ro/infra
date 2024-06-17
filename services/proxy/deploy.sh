#!/bin/bash

set +e
set +x

kubectl apply -f traefik-namespaces.yml;

helm upgrade --install traefik traefik/traefik --namespace=traefik --values traefik-helm-custom-values.yml;

kubectl apply -f sample-whoami.yaml;
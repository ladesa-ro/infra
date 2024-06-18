#!/bin/bash

set +e
set +x

helm upgrade --install traefik traefik/traefik --namespace=traefik --values traefik-helm-custom-values.yml;

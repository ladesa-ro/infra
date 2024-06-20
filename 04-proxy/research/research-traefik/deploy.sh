#!/bin/bash

set -xe

helm upgrade --install traefik traefik/traefik --namespace=traefik --values traefik-helm-custom-values.yml;

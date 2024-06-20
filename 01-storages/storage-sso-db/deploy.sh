#!/bin/bash

set -xe

kubectl apply -f volume-storage-sso-db-pv.yaml \
              -f volume-storage-sso-db-pvc.yaml \
  ;

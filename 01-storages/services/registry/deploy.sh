#!/bin/bash

set -xe

kubectl apply -f volume-artifacts.yaml \
              -f volume-certs.yaml \
  ;

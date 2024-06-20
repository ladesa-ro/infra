#!/bin/bash

set -xe

kubectl kustomize ./overlays/production;
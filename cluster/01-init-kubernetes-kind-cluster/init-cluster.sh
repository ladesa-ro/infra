#!/bin/bash

set -xe

kind delete cluster;

kind create cluster --config=./init-cluster-manifest.yml;

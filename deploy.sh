#!/usr/bin/env bash

set -xe;

source ./envs.sh;

if [ -f ./envs-local.sh ]; then
  source ./envs-local.sh;
fi

(cd ./config; ./deploy.sh);
(cd ./services; ./deploy.sh);
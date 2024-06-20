#!/usr/bin/env bash

set -xe;

source ./envs.sh;

if [ -f ./envs-local.sh ]; then
  source ./envs-local.sh;
fi

(cd ./00-cluster; ./setup.sh);
(cd ./01-storages; ./deploy.sh);
(cd ./02-config; ./deploy.sh);
(cd ./03-databases; ./deploy.sh);
(cd ./04-proxy; ./deploy.sh);
(cd ./05-registry; ./deploy.sh);
(cd ./06-services; ./deploy.sh);

#!/usr/bin/env bash

set -xe;

(cd ./config; ./deploy.sh);
(cd ./services; ./deploy.sh);
#!/usr/bin/env bash

set -xe;

LOGS_DIR=/var/log/ladesa-ro/infra/deploy

mkdir -p ${LOGS_DIR};

nohup ./deploy.sh > ${LOGS_DIR}/info.log 2> ${LOGS_DIR}/error.err < /dev/null &
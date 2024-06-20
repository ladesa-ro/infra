#!/bin/bash

set -xe

(cd ./config-registry; ./deploy.sh);

./check.sh;
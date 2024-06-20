#!/bin/bash

set -xe

(cd ./config-registry; ./deploy.sh);
(cd ./config-service-api-db; ./deploy.sh);
(cd ./config-service-sso-db; ./deploy.sh);
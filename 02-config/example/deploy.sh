#!/bin/bash

set -xe

(cd ./00-certificates; ./deploy.sh);
(cd ./config-registry; ./deploy.sh);
(cd ./config-service-api; ./deploy.sh);
(cd ./config-service-api-db; ./deploy.sh);
(cd ./config-service-sso; ./deploy.sh);
(cd ./config-service-sso-db; ./deploy.sh);
(cd ./config-service-web; ./deploy.sh);

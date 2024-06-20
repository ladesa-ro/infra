#!/bin/bash

set -xe

(cd ./config-registry; ./check.sh);
(cd ./config-service-api; ./check.sh);
(cd ./config-service-api-db; ./check.sh);
(cd ./config-service-sso; ./check.sh);
(cd ./config-service-sso-db; ./check.sh);
(cd ./config-service-web; ./check.sh);
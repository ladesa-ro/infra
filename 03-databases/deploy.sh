#!/bin/bash

set -xe

(cd ./db-service-api; ./deploy.sh);
(cd ./db-service-sso; ./deploy.sh);
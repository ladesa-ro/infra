#!/bin/bash

set -xe

(cd ./storage-registry-artifacts; ./deploy.sh);
(cd ./storage-registry-certs; ./deploy.sh);
(cd ./storage-service-api-db; ./deploy.sh);
(cd ./storage-service-api-uploaded; ./deploy.sh);
(cd ./storage-sso-db; ./deploy.sh);
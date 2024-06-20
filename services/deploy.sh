#!/usr/bin/env bash

set -xe;

(cd ./proxy; ./deploy.sh);
(cd ./registry; ./deploy.sh);
(cd ./api; ./deploy.sh);
(cd ./web; ./deploy.sh);
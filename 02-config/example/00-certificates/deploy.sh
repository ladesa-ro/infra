#!/bin/bash

set -xe

(cd ./local; ./deploy.sh);
(cd ./development; ./deploy.sh);
(cd ./production; ./deploy.sh);

#!/bin/bash

set -xe

(cd ./development; ./deploy.sh);
(cd ./production; ./deploy.sh);

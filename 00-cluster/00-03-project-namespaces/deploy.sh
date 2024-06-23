#!/bin/bash

set -xe

(cd overlays/local; ./deploy.sh);
(cd overlays/development; ./deploy.sh);
(cd overlays/production; ./deploy.sh);
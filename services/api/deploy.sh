#!/bin/bash

set -xe

(cd overlays/local/scripts; ./deploy.sh);
(cd overlays/development/scripts; ./deploy.sh);
(cd overlays/production/scripts; ./deploy.sh);
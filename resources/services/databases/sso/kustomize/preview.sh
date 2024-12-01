#!/bin/bash

set -xe

(cd overlays/local/scripts; ./preview.sh);
(cd overlays/development/scripts; ./preview.sh);
(cd overlays/production/scripts; ./preview.sh);
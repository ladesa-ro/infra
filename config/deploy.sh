#!/bin/bash

set -xe

(cd ./-namespaces; ./deploy.sh);
(cd ./services; ./deploy.sh);
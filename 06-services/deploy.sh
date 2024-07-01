#!/usr/bin/env bash

set -xe;

(cd ./06-00-rabbitmq; ./deploy.sh);
(cd ./06-01-sso; ./deploy.sh);
(cd ./06-02-gerar-horario; ./deploy.sh);
(cd ./06-03-api; ./deploy.sh);
(cd ./06-04-web; ./deploy.sh);
(cd ./06-05-docs; ./deploy.sh);

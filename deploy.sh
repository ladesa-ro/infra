#!/usr/bin/env bash

set -xe;

echo "Checking environment..."

# <!------------ opinated config check ------------>
if [[ ! -v LADESA_DEPLOY_OPINATED_CONFIG_PATH  || ! -d "${LADESA_DEPLOY_OPINATED_CONFIG_PATH}"  ]]; then
  echo "Please provide env LADESA_DEPLOY_OPINATED_CONFIG_PATH that points to a valid directory.";
  echo "You can use 02-config-example as base.";
fi
# <!------------ / opinated config check ------------>

echo "Detected a valid environment: '${LADESA_DEPLOY_OPINATED_CONFIG}'."


echo "Loading envs.sh..."
source "${LADESA_DEPLOY_OPINATED_CONFIG_PATH}/envs.sh";
echo "Loaded envs.sh.";

(cd ./00-cluster; ./setup.sh);
(cd ./01-storages; ./deploy.sh);
(cd ./03-databases; ./deploy.sh);
(cd ${LADESA_DEPLOY_OPINATED_CONFIG_PATH}; ./deploy.sh);
(cd ./02-config/check; ./check.sh);
(cd ./04-proxy; ./deploy.sh);
(cd ./05-registry; ./deploy.sh);
(cd ./06-services; ./deploy.sh);

echo =================================================================

GARBAGE_COLLECT_SCRIPT=${PWD}/collect-garbage.sh;

if ! command -v at; then 
  echo "Running collect garbage...";
  ./collect-garbage.sh;
  echo "Garbage collected!";
else
  echo "Garbage Collector Schedule Service"

  SCHEDULE_QUEUE_NAME="D"
  SCHEDULE_DELAY="now + 5 minutes"
  SCHEDULE_QUEUE_JOBS=$(atq -q ${SCHEDULE_QUEUE_NAME} | awk '{print $1}')

  if ! [ -z "$SCHEDULE_QUEUE_JOBS" ]; then
    for QUEUED_JOB in ${SCHEDULE_QUEUE_JOBS}; 
    do
      echo "Removing scheduled garbage collector job: ${QUEUED_JOB}";
      at -d ${QUEUED_JOB};
    done;
  fi;

  echo "${GARBAGE_COLLECT_SCRIPT}" | at -q ${SCHEDULE_QUEUE_NAME} ${SCHEDULE_DELAY}
  echo "Scheduled garbage collector job: ${QUEUED_JOB} (delay: ${SCHEDULE_DELAY})"
fi;

echo =================================================================

echo "Deployment complete! Thank you!";
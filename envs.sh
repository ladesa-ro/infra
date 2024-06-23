#!/usr/bin/env bash

set -xe;

# <!------------ opinated config check ------------>
if [[ ! -v LADESA_DEPLOY_OPINATED_CONFIG_PATH ]]; then
  echo "Please provide env LADESA_DEPLOY_OPINATED_CONFIG_PATH";
fi

if [ ! -d "$LADESA_DEPLOY_OPINATED_CONFIG_PATH" ]; then
  echo "The provided path LADESA_DEPLOY_OPINATED_CONFIG_PATH is not a valid directory. You can use '02-config' as base.";
fi

# <!------------ / opinated config check ------------>

# <!------------ 00-cluster ------------>
export LADESA_DEPLOY_SETUP_CLUSTER=true;
# ---
export LADESA_DEPLOY_SETUP_CLUSTER_ENVIRONMENT=true;
export LADESA_DEPLOY_SETUP_CLUSTER_INIT=true;
export LADESA_DEPLOY_SETUP_CLUSTER_INGRESS_CONTROLLER=true;
export LADESA_DEPLOY_SETUP_CLUSTER_CERT_MANAGER=true;
# <!------------ / 00-cluster ------------>

# <-- env local -->
export LADESA_DEPLOY_NS_LOCAL=false;
# ---
export LADESA_DEPLOY_NS_LOCAL_CERT=false;
# ---
export LADESA_DEPLOY_NS_LOCAL_SERVICE_SSO=false;
export LADESA_DEPLOY_NS_LOCAL_SERVICE_API=false;
export LADESA_DEPLOY_NS_LOCAL_SERVICE_WEB=false;
# <-- / env local -->

# <-- env development -->
export LADESA_DEPLOY_NS_DEVELOPMENT=false;
# ---
export LADESA_DEPLOY_NS_DEVELOPMENT_CERT=false;
# ---
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_SSO=false;
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_API=false;
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_WEB=false;
# <-- / env development -->

# <-- env production -->
export LADESA_DEPLOY_NS_PRODUCTION=false;
# ---
export LADESA_DEPLOY_NS_PRODUCTION_CERT=false;
# ---
export LADESA_DEPLOY_NS_PRODUCTION_REGISTRY=true;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_SSO=false;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_API=false;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_WEB=false;
# <-- / env production -->

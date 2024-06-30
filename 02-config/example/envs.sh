#!/usr/bin/env bash

# <!------------ 00-cluster ------------>
export LADESA_DEPLOY_SETUP_CLUSTER=true;
# ---
export LADESA_DEPLOY_SETUP_CLUSTER_ENVIRONMENT=true;
export LADESA_DEPLOY_SETUP_CLUSTER_INIT=true;
export LADESA_DEPLOY_SETUP_CLUSTER_INGRESS_CONTROLLER=true;
export LADESA_DEPLOY_SETUP_CLUSTER_CERT_MANAGER=true;
# <!------------ / 00-cluster ------------>

# <-- env local -->
export LADESA_DEPLOY_NS_LOCAL=true;
# ---
export LADESA_DEPLOY_NS_LOCAL_CERT=true;
# ---
export LADESA_DEPLOY_NS_LOCAL_REGISTRY=false;
export LADESA_DEPLOY_NS_LOCAL_SERVICE_SSO=false;
export LADESA_DEPLOY_NS_LOCAL_SERVICE_API=false;
export LADESA_DEPLOY_NS_LOCAL_SERVICE_WEB=false;
export LADESA_DEPLOY_NS_LOCAL_SERVICE_DEV_DOCS=false;
# <-- / env local -->

# <-- env development -->
export LADESA_DEPLOY_NS_DEVELOPMENT=false;
# ---
export LADESA_DEPLOY_NS_DEVELOPMENT_CERT=false;
# ---
export LADESA_DEPLOY_NS_DEVELOPMENT_REGISTRY=false;
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_SSO=false;
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_API=false;
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_WEB=false;
export LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_DEV_DOCS=false;
# <-- / env development -->

# <-- env production -->
export LADESA_DEPLOY_NS_PRODUCTION=false;
# ---
export LADESA_DEPLOY_NS_PRODUCTION_CERT=false;
# ---
export LADESA_DEPLOY_NS_PRODUCTION_REGISTRY=false;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_SSO=false;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_API=false;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_WEB=false;
export LADESA_DEPLOY_NS_PRODUCTION_SERVICE_DEV_DOCS=false;
# <-- / env production -->

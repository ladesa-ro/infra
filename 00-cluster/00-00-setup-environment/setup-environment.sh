#!/bin/bash

set -xe

if [[ ! "${LADESA_DEPLOY_SETUP_CLUSTER_ENVIRONMENT}" == "true" ]]; then
  exit 0;
fi

TMP_SETUP_PATH=/tmp/cluster-setup

rm -rf ${TMP_SETUP_PATH};
mkdir -p ${TMP_SETUP_PATH};
cd ${TMP_SETUP_PATH};

echo  ================================================================
echo "Installing docker"
echo  ================================================================

curl -fsSL https://get.docker.com -o get-docker.sh
sh ./get-docker.sh

docker version;

echo  ================================================================
echo "Installing kind"
echo  ================================================================

[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64;

chmod +x ./kind;
mv ./kind /usr/local/bin/kind;

kind --version;

echo  ================================================================
echo "Installing kubectl"
echo  ================================================================

# binário kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl";

# hash do binário kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256";

# verificação do hash com o binário baixado
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

# instalação do kubectl
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl;

kubectl version --client;

echo  ================================================================
echo "Installing helm"
echo  ================================================================

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3;
chmod 700 get_helm.sh;
./get_helm.sh;

helm version;

echo  ================================================================

rm -rf ${TMP_SETUP_PATH};
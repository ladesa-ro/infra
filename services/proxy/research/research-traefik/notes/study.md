# @ladesa-ro/proxy/nodes/study

```sh
helm repo add traefik https://traefik.github.io/charts;
helm repo update;

kubectl create ns traefik;
kubectl config set-context --current --namespace=traefik;
```

```sh
# helm install traefik traefik/traefik --values=traefik-values.yml;
helm upgrade --install traefik traefik/traefik --namespace=traefik --values=helm/values.yml;
```

```sh
kubectl port-forward service/traefik-web-service 80
kubectl port-forward service/traefik-dashboard-service 8080
```

```sh
kubectl patch svc traefik-web-service -p '{"spec":{"externalIPs":["0.0.0.0"]}}';
kubectl patch svc traefik-dashboard-service -p '{"spec":{"externalIPs":["0.0.0.0"]}}';
```

---

- Limpar o cluster

```sh
kubectl delete "$(kubectl api-resources --namespaced=true --verbs=delete -o name | tr "\n" "," | sed -e 's/,$//')" --all
```

---

- <https://www.youtube.com/watch?v=FoTSl3JHnoQ>

---

- <https://github.com/jcchavezs/traefik-kind>

```sh
#!/bin/bash

set -e

export CLUSTER_NAME=traefik
export TRAEFIK_NAMESPACE=traefik
export APP_NAMESPACE=default

echo "Deploying traefik components:"
traefik_files=("namespaces" "clusterroles" "deployments" "services")
for f in ${traefik_files[@]}; do
  envsubst < traefik/${f}.yaml | kubectl apply -f -
done

echo "Deploying sample app:"
envsubst < sample-whoami.yaml | kubectl apply -f -
```

```Makefile
CLUSTER_NAME=traefik
TRAEFIK_NAMESPACE=traefik
APP_NAMESPACE=default

.PHONY: build
# build creates a kind cluster
build:
 @kind create cluster --config kind-config.yaml --name ${CLUSTER_NAME}

.PHONY: deploy
# deploy deploys traefik and the app
deploy:
 @TRAEFIK_NAMESPACE=$(TRAEFIK_NAMESPACE) \
 APP_NAMESPACE=$(APP_NAMESPACE) \
 ./deploy.sh

.PHONY: cleanup
# cleanup deletes the kind cluster
cleanup:
 @kind delete cluster --name $(CLUSTER_NAME)
```

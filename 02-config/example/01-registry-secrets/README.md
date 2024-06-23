# Configuração do Serviço SSO

## Ambiente Local

```sh
kubectl create secret \
  docker-registry ladesa-registry-pull-secret \
  --docker-server={REGISTRY_LOCAL_DOMAIN} \
  --docker-username={REGISTRY_LOCAL_USERNAME} \
  --docker-password={REGISTRY_LOCAL_PASSWORD} \
  --namespace ladesa-ro-local \
;
```

## Ambiente de Desenvolvimento

```sh
kubectl create secret \
  docker-registry ladesa-registry-pull-secret \
  --docker-server={REGISTRY__DEVELOPMENTDOMAIN} \
  --docker-username={REGISTRY_DEVELOPMENT_USERNAME} \
  --docker-password={REGISTRY_DEVELOPMENT_PASSWORD} \
  --namespace ladesa-ro-development \
;
```

## Ambiente de Produção

```sh
kubectl create secret \
  docker-registry ladesa-registry-pull-secret \
  --docker-server={REGISTRY_PRODUCTION_DOMAIN} \
  --docker-username={REGISTRY_PRODUCTION_USERNAME} \
  --docker-password={REGISTRY_PRODUCTION_PASSWORD} \
  --namespace ladesa-ro-production \
;
```

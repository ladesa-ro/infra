# Configuração do Serviço API

## Ambiente Local

```sh
kubectl create secret generic \
  ladesa-ro-api-config \
  --namespace=ladesa-ro-local
  --from-env-file=./api.local.env \
;
```

## Ambiente de Desenvolvimento

```sh
kubectl create secret generic \
  ladesa-ro-api-config \
  --namespace=ladesa-ro-development
  --from-env-file=./api.dev.env \
;
```

## Ambiente de Produção

```sh
kubectl create secret generic \
  ladesa-ro-api-config \
  --namespace=ladesa-ro-production
  --from-env-file=./api.prod.env \
;
```

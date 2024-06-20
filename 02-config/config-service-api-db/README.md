# Configuração do Banco de Dados do Serviço API

## Ambiente Local

```sh
kubectl create secret generic \
  ladesa-ro-api-db-config \
  --namespace=ladesa-ro-local
  --from-env-file=./api-db.local.env \
;
```

## Ambiente de Desenvolvimento

```sh
kubectl create secret generic \
  ladesa-ro-api-db-config \
  --namespace=ladesa-ro-development
  --from-env-file=./api-db.dev.env \
;
```

## Ambiente de Produção

```sh
kubectl create secret generic \
  ladesa-ro-api-db-config \
  --namespace=ladesa-ro-production
  --from-env-file=./api-db.prod.env \
;
```

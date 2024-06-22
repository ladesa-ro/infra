# Configuração do Banco de Dados do Serviço API

## Ambiente Local

```sh
cp -n api-db.env.example api-db.local.env

kubectl create secret generic \
  ladesa-ro-api-db-config \
  --namespace=ladesa-ro-local \
  --from-env-file=./api-db.local.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Desenvolvimento

```sh
cp -n api-db.env.example api-db.dev.env

kubectl create secret generic \
  ladesa-ro-api-db-config \
  --namespace=ladesa-ro-development \
  --from-env-file=./api-db.dev.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Produção

```sh
cp -n api-db.env.example api-db.prod.env

kubectl create secret generic \
  ladesa-ro-api-db-config \
  --namespace=ladesa-ro-production \
  --from-env-file=./api-db.prod.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

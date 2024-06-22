# Configuração do Serviço API

## Ambiente Local

```sh
cp -n api.env.example api.local.env

kubectl create secret generic \
  ladesa-ro-api-config \
  --namespace=ladesa-ro-local \
  --from-env-file=./api.local.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Desenvolvimento

```sh
cp -n api.env.example api.dev.env

kubectl create secret generic \
  ladesa-ro-api-config \
  --namespace=ladesa-ro-development \
  --from-env-file=./api.dev.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Produção

```sh
cp -n api.env.example api.prod.env

kubectl create secret generic \
  ladesa-ro-api-config \
  --namespace=ladesa-ro-production \
  --from-env-file=./api.prod.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

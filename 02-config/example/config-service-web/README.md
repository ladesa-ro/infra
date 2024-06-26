# Configuração do Serviço Web

## Ambiente Local

```sh
cp -n web.env.example web.local.env

kubectl create secret generic \
  ladesa-ro-web-config \
  --namespace=ladesa-ro-local \
  --from-env-file=./web.local.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Desenvolvimento

```sh
cp -n web.env.example web.dev.env

kubectl create secret generic \
  ladesa-ro-web-config \
  --namespace=ladesa-ro-development \
  --from-env-file=./web.dev.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Produção

```sh
cp -n web.env.example web.prod.env

kubectl create secret generic \
  ladesa-ro-web-config \
  --namespace=ladesa-ro-production \
  --from-env-file=./web.prod.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

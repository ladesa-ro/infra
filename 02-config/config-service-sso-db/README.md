# Configuração do Banco de Dados do Serviço SSO

## Ambiente Local

```sh
cp -n sso-db.env.example sso-db.local.env

kubectl create secret generic \
  ladesa-ro-sso-db-config \
  --namespace=ladesa-ro-local \
  --from-env-file=./sso-db.local.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Desenvolvimento

```sh
cp -n sso-db.env.example sso-db.dev.env

kubectl create secret generic \
  ladesa-ro-sso-db-config \
  --namespace=ladesa-ro-development \
  --from-env-file=./sso-db.dev.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

## Ambiente de Produção

```sh
cp -n sso-db.env.example sso-db.prod.env

kubectl create secret generic \
  ladesa-ro-sso-db-config \
  --namespace=ladesa-ro-production \
  --from-env-file=./sso-db.prod.env \
  --dry-run=client \
  -o yaml \
  | kubectl apply -f - \
;
```

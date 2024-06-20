# Configuração do Serviço SSO

## Ambiente Local

```sh
cp -n sso.env.example sso.local.env

kubectl create secret generic \
  ladesa-ro-sso-config \
  --namespace=ladesa-ro-local
  --from-env-file=./sso.local.env \
;
```

## Ambiente de Desenvolvimento

```sh
cp -n sso.env.example sso.dev.env

kubectl create secret generic \
  ladesa-ro-sso-config \
  --namespace=ladesa-ro-development
  --from-env-file=./sso.dev.env \
;
```

## Ambiente de Produção

```sh
cp -n sso.env.example sso.prod.env

kubectl create secret generic \
  ladesa-ro-sso-config \
  --namespace=ladesa-ro-production
  --from-env-file=./sso.prod.env \
;
```

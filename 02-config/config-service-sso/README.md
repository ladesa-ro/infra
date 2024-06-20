# Configuração do Serviço SSO

## Ambiente Local

```sh
kubectl create secret generic \
  ladesa-ro-sso-config \
  --namespace=ladesa-ro-local
  --from-env-file=./sso.local.env \
;
```

## Ambiente de Desenvolvimento

```sh
kubectl create secret generic \
  ladesa-ro-sso-config \
  --namespace=ladesa-ro-development
  --from-env-file=./sso.dev.env \
;
```

## Ambiente de Produção

```sh
kubectl create secret generic \
  ladesa-ro-sso-config \
  --namespace=ladesa-ro-production
  --from-env-file=./sso.prod.env \
;
```

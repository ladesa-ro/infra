# Configuração do Serviço Web

## Ambiente Local

```sh
kubectl create secret generic \
  ladesa-ro-web-config \
  --namespace=ladesa-ro-local
  --from-env-file=./web.local.env \
;
```

## Ambiente de Desenvolvimento

```sh
kubectl create secret generic \
  ladesa-ro-web-config \
  --namespace=ladesa-ro-development
  --from-env-file=./web.dev.env \
;
```

## Ambiente de Produção

```sh
kubectl create secret generic \
  ladesa-ro-web-config \
  --namespace=ladesa-ro-production
  --from-env-file=./web.prod.env \
;
```

- Configuração do cluster kind

```sh
kind create cluster --config=./01-init-cluster-manifest.yml
```

- Verificação da integração do kubectl com o cluster kind

```sh
kubectl cluster-info --context kind-kind
```

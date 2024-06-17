- Configuração do cluster kind

```sh
kind create cluster --config=./01-init-cluster-manifest.yml
```

- Custom kinds do Traefik

```sh
sudo kubectl apply -f https://raw.githubusercontent.com/traefik/traefik/v3.0/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml
```

```sh
sudo kubectl apply -f https://raw.githubusercontent.com/traefik/traefik/v3.0/docs/content/reference/dynamic-configuration/kubernetes-crd-rbac.yml
```

- Verificação da integração do kubectl com o cluster kind

```sh
kubectl cluster-info --context kind-kind
```

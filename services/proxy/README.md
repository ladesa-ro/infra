# proxy

Este serviço deve configurar o traefik para atuar como API Gateway / Proxy Reverso / Ingress Controller do Kubernetes. Com o `Ingress Controller` iniciado, deve ser possível acessar o proxy por meio de:

```
curl -v "http://ip_control_plane:exposed_port"
```

Por favor, veja [cluster/01-init-kubernetes-kind-cluster/README.md](../../cluster/01-init-kubernetes-kind-cluster/README.md) para saber mais sobre o `exposed_port`.

Para facilitar este processo, é utilizado o [_Helm Chart_](https://helm.sh/docs/topics/charts/) oficial do Traefik:

- <https://github.com/traefik/traefik-helm-chart/#readme>

Este projeto conta com um script para implantar o traefik no cluster utilizando a ferramenta helm.

```sh
./deploy.sh
```

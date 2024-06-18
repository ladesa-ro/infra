# proxy

Este serviço deve configurar o traefik para atuar como API Gateway / Proxy Reverso / Ingress Controller do Kubernetes. Com o `Ingress Controller` iniciado, deve ser possível acessar o proxy por meio de:

```
curl -v "http://IP_CONTROL_PLANE"
```

Para facilitar este processo, é utilizado o [_Helm Chart_](https://helm.sh/docs/topics/charts/) oficial do Traefik:

- <https://github.com/traefik/traefik-helm-chart/#readme>

Este projeto conta com um script para:

- criar o namespace `traefik`;
- implantar o traefik no cluster utilizando o helm;
- iniciar um serviço `whoami` e utilziar o `Ingress Route` para integrar ao proxy.

```sh
./deploy.sh
```

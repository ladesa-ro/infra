# proxy

Este serviço deve configurar o NGinx para atuar como API Gateway / Proxy Reverso / Ingress Controller do Kubernetes. Com o `Ingress Controller` iniciado, deve ser possível acessar o proxy por meio de:

```sh
curl -v "http://IP_CONTROL_PLANE:PORTA"
```

Conforme a configuração do cluster em [cluster/01-init-kubernetes-kind-cluster/README.md](../../cluster/01-init-kubernetes-kind-cluster/README.md), é feito o mapeamento das seguintes portas:

- host `:80` -> ingress controller `:80`
- host `:443` -> ingress controller `:443`

Por uma questão organizacional, a configuração do ingress controller foi feita em[cluster/02-setup-ingress-controller/README.md](../../cluster/02-setup-ingress-controller/README.md), e este passo serve apenas para aguardar a disponibilidade desse serviço.

---

Este projeto conta com um [script utilitário](./deploy.sh) para faze a configuração necessária neste passo:

```sh
./deploy.sh
```

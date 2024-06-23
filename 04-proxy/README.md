# proxy

Este serviço deve configurar o NGinx para atuar como API Gateway / Proxy Reverso / Ingress Controller do Kubernetes. Com o `Ingress Controller` iniciado, deve ser possível acessar o proxy por meio de:

```sh
curl -v "http://IP_CONTROL_PLANE:PORTA"
```

Por favor, veja o mapeamento de portas em [cluster/01-init-kubernetes-kind-cluster/README.md](../../cluster/01-init-kubernetes-kind-cluster/README.md).

Por uma questão organizacional, a configuração do ingress controller foi feita em [cluster/02-ingress-controller/README.md](../../cluster/02-ingress-controller/README.md), e este passo serve apenas para aguardar a disponibilidade desse serviço.

## Script de Conveniência

```sh
./deploy.sh
```

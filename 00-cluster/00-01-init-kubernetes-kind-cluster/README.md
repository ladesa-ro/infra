# Iniciar o Cluster Kubernetes com o Kind

O cluster precisa ser configurado para ter os mapeamentos extra de portas:

- host `:80` -> ingress controller `:80`
- host `:443` -> ingress controller `:443`

Além disso, o control plane é configurado com a label `ingress-ready=true` para facilitar a configuração do ingress.

Este projeto conta com um script utilitário para a inicialização do cluster kubernetes com o kind, já com as portas acima expostas e o label de ingress no _nó_ do _control plane_:

```sh
./init-cluster.sh
```

Para verificar a integração do kubectl com o cluster kind:

```sh
kubectl cluster-info --context kind-kind
```

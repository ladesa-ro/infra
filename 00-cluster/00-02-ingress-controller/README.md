# Configurar o Ingress Controller

O [`Ingress Controller`][docs-k8s-ingress-controller] do Kubernetes é utilizado como responsável por receber requisições externas - HTTP e HTTPS - e direcionar para dentro do cluster. Foi escolhido o `ingress-nginx` para ser o `Ingress Controller` do cluster kubernetes.

## Scripts de conveniência

- [`deploy.sh`](./deploy.sh)

```sh
./deploy.sh
```

## Links Úteis

- <https://kubernetes.github.io/ingress-nginx/>
- <https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx>
- <https://kubernetes.github.io/ingress-nginx/user-guide/basic-usage/>
- <https://kubernetes.io/docs/concepts/services-networking/ingress/>
- <https://nginx.org/en/>

<!-- Links -->

<!-- Links / Docs -->

[docs-k8s-ingress-controller]: https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/

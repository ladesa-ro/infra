# infra

[![Deploy Services](https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml/badge.svg)](https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml)

Este projeto conta com os dados necessários para o levantamento da infraestrutura dos projetos do sistema.

- [cluster/README.md](./cluster/README.md)

  - [00-setup-environment/README.md](./00-setup-environment/README.md)
  - [01-init-kubernetes-kind-cluster/README.md](./01-init-kubernetes-kind-cluster/README.md)
  - [02-setup-k8s-traefik-integration/README.md](./02-setup-k8s-traefik-integration/README.md)

- [services](./services)
  - [proxy/README.md](./services/proxy/README.md)
  - [sso](./sso)
  - [registry](./registry)
  - [api](./api)
  - [web](./web)
  - [gerar-horario](./gerar-horario)

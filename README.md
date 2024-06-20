# infra

[![Deploy Services][action-deploy-services-badge]][action-deploy-services-href]

Este projeto conta com os dados necessários para o levantamento da infraestrutura dos projetos do sistema.

## Hackeando

```sh
git clone https://github.com/ladesa-ro/infra.git
cd infra
```

## Documentação

Este projeto foi projetado e testado para rodar nos seguintes sistemas operacionais:

- [`Debian GNU/Linux 11 (bullseye)`][distro-debian-bullseye]

  - Shell: `GNU bash @ 5.1.4`
  - Kernel: `GNU/Linux - x86_64 @ 5.10.0-25-amd64`

- [`Manjaro Linux 24.0.2`][distro-manjaro-wynsdey]

  - Shell: `GNU bash @ 5.2.26`
  - Kernel: `GNU/Linux - x86_64 @ 6.6.33-1-MANJARO`

A seguir, estão documentadas as implantações de cada pedaço do sistema. Note que a configuração do cluster deve ser feita uma vez, enquanto o deploy dos serviços serão recorrentes.

- [00-cluster/README.md](./00-cluster/README.md)

  - [00-00-setup-environment/README.md](./00-cluster/00-00-setup-environment/README.md)
  - [00-01-init-kubernetes-kind-cluster/README.md](./00-cluster/00-01-init-kubernetes-kind-cluster/README.md)
  - [00-02-setup-ingress-controller/README.md](./00-cluster/00-02-setup-ingress-controller/README.md)
  - [00-03-project-namespaces/README.md](./00-cluster/00-03-project-namespaces/README.md)

- [01-storages/README.md](./01-storages/README.md)

  - [services/README.md](./01-storages/services/README.md)
    - [registry/README.md](./01-storages/services/registry/README.md)

- [02-config/README.md](./02-config/README.md)

  - [services/README.md](./02-config/services/README.md)
    - [registry/README.md](./02-config/services/registry/README.md)

- [03-databases/README.md](./03-databases/README.md)

- [04-proxy/README.md](./04-proxy/README.md)

- [05-registry/README.md](./04-registry/README.md)

- [06-services](./06-services)
  - [06-00-rabbitmq/README.md](./06-services/06-00-rabbitmq/README.md)
  - [06-01-sso/README.md](./06-services/06-01-sso/README.md)
  - [06-02-gerar-horario/README.md](./06-services/06-02-gerar-horario/README.md)
  - [06-03-api/README.md](./06-services/06-03-api/README.md)
  - [06-04-web/README.md](./06-services/06-04-web/README.md)

## Github Actions

- [`Deploy Services`](./.github/workflows/deploy.yml)

## Scripts de conveniência

- [`cluster/setup.sh`](./00-cluster/setup.sh)

```sh
./00-cluster/setup.sh
```

- [`deploy.sh`](./deploy.sh)

```sh
./deploy.sh
```

- [`deploy-in-background.sh`](./deploy-in-background.sh)

```sh
./deploy-in-background.sh
```

## Autores

- Gabriel R. Antunes, [guesant@github](https://github.com/guesant), <gabrielrodantunes@gmail.com>.

<!-- Links -->

<!-- Links / Actions -->

[action-deploy-services-badge]: https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml/badge.svg
[action-deploy-services-href]: https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml

<!-- Links / Distros -->

[distro-debian-bullseye]: https://www.debian.org/releases/bullseye/
[distro-manjaro-wynsdey]: https://forum.manjaro.org/t/manjaro-24-0-wynsdey-released/161527

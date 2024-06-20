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

- [cluster/README.md](./cluster/README.md)

  - [00-setup-environment/README.md](./cluster/00-setup-environment/README.md)
  - [01-init-kubernetes-kind-cluster/README.md](./cluster/01-init-kubernetes-kind-cluster/README.md)
  - [02-setup-ingress-controller/README.md](./cluster/02-setup-ingress-controller/README.md)

- [services](./services)
  - [proxy/README.md](./services/proxy/README.md)
  - [registry/README.md](./services/registry/README.md)
  - [api/README.md](./services/api/README.md)
  - [sso](./services/sso)
  - [web](./services/web)
  - [gerar-horario](./services/gerar-horario)

## Github Actions

- [`Deploy Services`](./.github/workflows/deploy.yml)

## Scripts de conveniência

- [`cluster/setup.sh`](./cluster/setup.sh)

```sh
./cluster/setup.sh
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

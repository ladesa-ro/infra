# infra

[![Deploy Services](https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml/badge.svg)](https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml)

Este projeto conta com os dados necessários para o levantamento da infraestrutura dos projetos do sistema.

## Hackeando

```sh
git clone https://github.com/ladesa-ro/infra.git;
cd infra;
```

## Documentação

Este projeto foi projetado e testado para rodar nos seguintes sistemas operacionais:

- `Debian GNU/Linux 11 (bullseye)` 

  - `GNU/Linux - x86_64 @ 5.10.0-25-amd64`
  - `GNU bash @ 5.1.4`

- `Manjaro Linux 24.0.2`

  - `GNU/Linux - x86_64 @ 6.6.33-1-MANJARO`
  - `zsh @ 5.9`

A seguir, estão documentadas as implantações de cada pedaço do sistema. Note que a configuração do cluster deve ser feita uma vez, enquanto o deploy dos serviços serão recorrentes.

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

## Github Actions

- [`Deploy Services`](./.github/workflows/deploy.yml)

## Autores

- Gabriel R. Antunes, [guesant@github](https://github.com/guesant), <gabrielrodantunes@gmail.com>.

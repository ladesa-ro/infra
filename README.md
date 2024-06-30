# Infraestrutura

[![Deploy Services][action-deploy-services-badge]][action-deploy-services-href]

Este projeto conta com os dados necessários para o levantamento da infraestrutura dos projetos do sistema.

## Documentação

### Obter código do repositório

```sh
git clone https://github.com/ladesa-ro/infra.git
cd infra
```

### Scripts de conveniência

- [`deploy.sh`](./deploy.sh)

```sh
./deploy.sh
```

Nota: por favor, garanta que `LADESA_DEPLOY_OPINATED_CONFIG_PATH` seja fornecido. Você pode criar a sua pasta de configuração baseada na [`02-config/example`](./02-config/example/).

```sh
cp 02-config/example -r ~/ladesa-ro/config;
```

#### Estratégia 1: Fornecer variável de ambiente na chamada do script

```sh
LADESA_DEPLOY_OPINATED_CONFIG_PATH=~/02-config/config  ./deploy.sh
```

#### Estratégia 2: Fornecer variável de ambiente via export no profile

```sh
cp 02-config/example ~/ladesa-ro/config;

echo 'export LADESA_DEPLOY_OPINATED_CONFIG_PATH=$HOME/ladesa-ro/config' >>> ~/.profile
echo 'source ~/.profile' >>> ~/.zshrc
echo 'source ~/.profile' >>> ~/.bashrc
exec $SHELL
```

- [`background-deploy.sh`](./background-deploy.sh)

```sh
./background-deploy.sh
```

- [`collect-garbage.sh`](./collect-garbage.sh)

```sh
./collect-garbage.sh
```

Cronjob recomendado:

```sh
10-40/23 * * * * /bin/bash -c "(/tmp/ladesa-ro/infra/repo/collect-garbage.sh; exit 0)";
```

### Github Actions

- [`Deploy Services`](./.github/workflows/deploy.yml)

### Sistemas Operacionais Suportados

Este projeto foi projetado e testado para rodar nos seguintes sistemas operacionais:

- [`Debian GNU/Linux 11 (bullseye)`][distro-debian-bullseye]

  - Shell: `GNU bash @ 5.1.4`
  - Kernel: `GNU/Linux - x86_64 @ 5.10.0-25-amd64`

- [`Manjaro Linux 24.0.2`][distro-manjaro-wynsdey]

  - Shell: `GNU bash @ 5.2.26`
  - Kernel: `GNU/Linux - x86_64 @ 6.6.33-1-MANJARO`

## Etapas para a implantação do sistema

A seguir, estão documentadas as implantações de cada pedaço do sistema. Note que a configuração do cluster deve ser feita uma vez, enquanto o deploy dos serviços serão recorrentes.

### 00. Configuração do Cluster

- [00-cluster/README.md](./00-cluster/README.md)

  - [00-00-setup-environment/README.md](./00-cluster/00-00-setup-environment/README.md)
  - [00-01-init-kubernetes-kind-cluster/README.md](./00-cluster/00-01-init-kubernetes-kind-cluster/README.md)
  - [00-02-ingress-controller/README.md](./00-cluster/00-02-ingress-controller/README.md)
  - [00-03-project-namespaces/README.md](./00-cluster/00-03-project-namespaces/README.md)
  - [00-04-cert-manager/README.md](./00-cluster/00-04-cert-manager/README.md)

### 01. Volumes

- [01-storages/README.md](./01-storages/README.md)

  - [storage-registry-artifacts](./01-storages/storage-registry-artifacts)
  - [storage-registry-certs](./01-storages/storage-registry-certs)
  - [storage-service-api-db](./01-storages/storage-service-api-db)
  - [storage-service-api-uploaded](./01-storages/storage-service-api-uploaded)
  - [storage-service-sso-db](./01-storages/storage-service-sso-db)

### 02. Configurações dos Sistemas

- [02-config/README.md](./02-config/README.md)

  - [check/README.md](./02-config/check/README.md)

    - [00-certificates/check.sh](./02-config/check/00-certificates/check.sh)
    - [config-registry/check.sh](./02-config/check/config-registry/check.sh)
    - [config-service-api/check.sh](./02-config/check/config-service-api/check.sh)
    - [config-service-api-db/check.sh](./02-config/check/config-service-api-db/check.sh)
    - [config-service-sso/check.sh](./02-config/check/config-service-sso/check.sh)
    - [config-service-sso-db/check.sh](./02-config/check/config-service-sso-db/check.sh)
    - [config-service-web/check.sh](./02-config/check/config-service-web/check.sh)

  - [example/README.md](./02-config/example/README.md)
    - [00-certificates/README.md](./02-config/example/00-certificates/README.md)
    - [01-registry-secrets/README.md](./02-config/example/01-registry-secrets/README.md)
    - [config-registry/README.md](./02-config/example/config-registry/README.md)
    - [config-service-api/README.md](./02-config/example/config-service-api/README.md)
    - [config-service-api-db/README.md](./02-config/example/config-service-api-db/README.md)
    - [config-service-sso/README.md](./02-config/example/config-service-sso/README.md)
    - [config-service-sso-db/README.md](./02-config/example/config-service-sso-db/README.md)
    - [config-service-web/README.md](./02-config/example/config-service-web/README.md)

### 03. Bancos de Dados

- [03-databases/README.md](./03-databases/README.md)

  - [db-service-api](./03-databases/db-service-api)
  - [db-service-sso](./03-databases/db-service-sso)

## 04. Proxy Reverso / API Gateway / Ingress Controller

- [04-proxy/README.md](./04-proxy/README.md)

## 05. Container Registry

- [05-registry/README.md](./05-registry/README.md)

## 06. Serviços

- [06-services](./06-services)
  - [06-00-rabbitmq/README.md](./06-services/06-00-rabbitmq/README.md)
  - [06-01-sso/README.md](./06-services/06-01-sso/README.md)
  - [06-02-gerar-horario/README.md](./06-services/06-02-gerar-horario/README.md)
  - [06-03-api/README.md](./06-services/06-03-api/README.md)
  - [06-04-web/README.md](./06-services/06-04-web/README.md)
  - [06-05-dev-docs/README.md](./06-services/06-05-dev-docs/README.md)

## Autores

- Gabriel R. Antunes, [guesant@github](https://github.com/guesant), <gabrielrodantunes@gmail.com>.

<!-- Links -->

<!-- Links / Actions -->

[action-deploy-services-badge]: https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml/badge.svg
[action-deploy-services-href]: https://github.com/ladesa-ro/infra/actions/workflows/deploy.yml

<!-- Links / Distros -->

[distro-debian-bullseye]: https://www.debian.org/releases/bullseye/
[distro-manjaro-wynsdey]: https://forum.manjaro.org/t/manjaro-24-0-wynsdey-released/161527

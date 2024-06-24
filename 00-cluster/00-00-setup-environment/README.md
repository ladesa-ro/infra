# Configurar o Ambiente do Cluster

A estrutura de implantação do sistema utiliza como base o Kubernetes e o Docker Engine.

## Tecnologias de Base

### Runtime de Containers

- Docker Engine - <https://docs.docker.com/engine/>;

Para a execução dos containers, é utilizado a ferramenta Docker Engine.

### Orquestrador de Containers

- Kubernetes - <https://kubernetes.io/>.

Para gerenciar os containers entre diferentes nós, é utilizado a tecnologia Kubernetes, criada pela Google. Veja os conceitos do Kubernetes na documentação oficial: <https://kubernetes.io/docs/concepts/overview/>.

## Ferramentas

- `docker` - <https://docs.docker.com/reference/cli/docker/>;
- `kind` - <https://kind.sigs.k8s.io/>;
- `kubectl` - <https://kubernetes.io/pt-br/docs/reference/kubectl/>;
- `helm` - <https://helm.sh/>;
- `cmctl` - <https://github.com/cert-manager/cmctl/>.
- `at` - <https://packages.debian.org/bullseye/at>.

### `docker`

Por favor, veja a seção oficial de instalação do docker: <https://docs.docker.com/engine/install/>.

Para verificar instalação do docker:

```sh
docker version

```

### `kind`

Por favor, veja a seção oficial de instalação do kind: <https://kind.sigs.k8s.io/docs/user/quick-start/#installation>.

Para verificar instalação do kind:

```sh
kind --version
```

### Kubectl

Por favor, veja a seção oficial de instalação do kubectl: <https://kubernetes.io/docs/tasks/tools/>.

Para verificar instalação do kubectl:

```sh
kubectl version --client
```

### `helm`

Por favor, veja a seção oficial de instalação do helm: <https://helm.sh/docs/intro/install/>.

Para verificar instalação do helm:

```sh
helm version
```

### `cmctl` - The cert-manager Command Line Tool

Por favor, veja a seção oficial de instalação do helm: <https://cert-manager.io/docs/reference/cmctl/#installation>.

Para verificar instalação do cmctl:

```sh
cmctl version --client
```

### `at` - Delayed job execution and batch processing

Tutorial de instalação **não oficial**: <https://phoenixnap.com/kb/linux-at-command>

## Script de Conveniência

Este projeto conta com um script utilitário para a instalação das ferramentas `docker`, `kind`, `kubectl`, `helm` e `cmctl` caso não estejam presentes no `linux x64`.

```sh
./setup.sh
```

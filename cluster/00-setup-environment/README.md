# Configurar o Cluster

A estrutura de implantação do sistema utiliza como base o Kubernetes e o Docker Engine.

## Tecnologias de Base

- Docker Engine - <https://docs.docker.com/engine/>;
- Kubernetes - <https://kubernetes.io/docs/concepts/>.

### Ferramentas

- docker - <https://docs.docker.com/engine/>;
- kind - <https://kind.sigs.k8s.io/>;
- kubectl - <https://kubernetes.io/pt-br/docs/reference/kubectl/>;
- helm - <https://helm.sh/>.

Este projeto conta com um script utilitário para a instalação das ferramentas `docker`, `kind`, `kubectl` e `helm` no linux x64.

```sh
./setup-environment.sh
```

#### Docker

Por favor, veja a seção oficial de instalação do docker: <https://docs.docker.com/engine/install/>.

Para verificar instalação do docker:

```sh
docker version

```

#### Kind

Por favor, veja a seção oficial de instalação do kind: <https://kind.sigs.k8s.io/docs/user/quick-start/#installation>.

Para verificar instalação do kind:

```sh
kind --version
```

#### Kubectl

Por favor, veja a seção oficial de instalação do kubectl: <https://kubernetes.io/docs/tasks/tools/>.

Para verificar instalação do kubectl:

```sh
kubectl version --client
```

#### Helm

Por favor, veja a seção oficial de instalação do helm: <https://helm.sh/docs/intro/install/>.

Para verificar instalação do helm:

```sh
helm version
```

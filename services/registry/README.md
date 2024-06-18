# registry

## Configuração

Veja [setup/README.md](./setup/README.md).

## Deploy

Este projeto conta com um script para implantar o quay no cluster.

```sh
./deploy.sh
```

## Acessar registry local

`/etc/docker/daemon.json`:

```json
{
  "insecure-registries": ["registry.kluster.local", "registry.kluster.local:80"]
}
```

```sh
systemctl restart docker
```

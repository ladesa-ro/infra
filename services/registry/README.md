# registry

## Configuração

Veja [setup/README.md](./setup/README.md).

Configure a extensão "pg_trgm" no banco de dados postgres:

```sh
psql
\c quay
CREATE EXTENSION pg_trgm;
```

## Deploy

Este projeto conta com um script para implantar o quay no cluster.

```sh
./deploy.sh
```

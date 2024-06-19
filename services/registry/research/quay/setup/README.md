# Configuração

Configure a extensão "pg_trgm" no banco de dados postgres:

```sh
psql
\c quay
CREATE EXTENSION pg_trgm;
```

```sh
make setup;
```

Em seu terminal, é informado o usuário e senha gerados para a configuração do quay. Continue a configuração em: <http://localhost:8080>.

Caso queira, é possível ver os logs do container de configuração do quay:

```sh
make setup-logs;
```

Ao finalizar a configuração, encerre o container de configuração do quay:

```sh
make setup-cleanup;
```

A configuração gerada fica na pasta `v/app_config`.

---

- <https://blog.nathanv.me/posts/quay-registry/#quay-1>

# registry

## Configuração

```sh
cd setup;
make setup;
```

Em seu terminal, foi informado o usuário e senha gerados para a configuração do quay. Agora, abra: <http://localhost:8080>.

Caso queira, pode ver os logs do container do quay:

```sh
make setup-logs;
```

Ao finalizar a configuração, encerre o container de configuração do quay:

```sh
make setup-cleanup;
```

A configuração gerada fica na pasta `setup/v/app_config`.

- <https://blog.nathanv.me/posts/quay-registry/#quay-1>

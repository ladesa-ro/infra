# registry

WORK IN PROGRESS.

## Deploy

Este projeto conta com um script para implantar um registry de containers no cluster.

```sh
./deploy.sh
```

## Garbage Collector

```sh
kubectl exec --tty --stdin $(kubectl get pods --selector "app=registry" --output=name) -n default -- registry garbage-collect /etc/docker/registry/config.yml --delete-untagged=true
```

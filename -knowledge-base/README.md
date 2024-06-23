# Base de Conhecimento

## How to delete orphaned replicasets with Kubernetes?

> <https://stackoverflow.com/questions/59861523/how-to-delete-orphaned-replicasets-with-kubernetes>

```sh
kubectl delete replicaset $(kubectl get replicaset -o jsonpath='{ .items[?(@.spec.replicas==0)].metadata.name }')
```

## Gabage Collection of registry

```sh
(kubectl exec --tty --stdin $(kubectl get pods --selector "app=registry" --output=name) -n default -- registry garbage-collect /etc/docker/registry/config.yml --delete-untagged=true; exit 0)
```

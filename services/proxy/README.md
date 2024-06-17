# @ladesa-ro/proxy

TBD.

```sh
./deploy.sh
```

```sh
kubectl port-forward service/traefik-web-service 80
kubectl port-forward service/traefik-dashboard-service 8080
```

```sh
kubectl patch svc traefik-web-service -p '{"spec":{"externalIPs":["0.0.0.0"]}}';
kubectl patch svc traefik-dashboard-service -p '{"spec":{"externalIPs":["0.0.0.0"]}}';
```

# Configurar o Ingress Controller

Foi escolhido o `ingress-nginx` para ser o Ingress Controller do cluster kubernetes.

- Documentação oficial da ferramenta `kind` para a configuração de ingress controllers: <https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx>.

## Links Úteis

- <https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx>
- <https://kubernetes.github.io/ingress-nginx/>
- <https://kubernetes.io/docs/concepts/services-networking/ingress/>

---

Este projeto conta com um [script utilitário](./setup-ingress-controller.sh) para faze a configuração necessária neste passo:

```sh
./setup-ingress-controller.sh
```

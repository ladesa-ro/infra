- Instalação kind

```sh
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.23.0/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/local/bin/kind
```

- Verificar instalação do kind

```sh
kind --version
```

- Instalação kubectl

```sh
# binário kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# hash do binário kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

# verificação do hash com o binário baixado
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

# instalação do kubectl
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```

- Verificação da instalação do kubectl

```sh
kubectl version --client
```

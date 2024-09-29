# Install Guide for Traefik
---
## Creating Namespace for Traefik
```sh
kubectl create namespace traefik
```
---
## Create Credentials file for Cloudflare
Take the cloudflare-credentials.yaml file and fill in the values for your Cloudflare account.

Apply the file to the cluster.
```sh
kubectl apply -f cloudflare-credentials.yaml -n traefik
```
---
## Install Traefik with Helm on Kubernetes
```sh
helm repo add traefik https://helm.traefik.io/traefik
helm repo update
helm install traefik traefik/traefik -n traefik --values=traefik-values.yaml
```

helm repo add traefik https://helm.traefik.io/traefik
helm repo update
kubectl create namespace traefik
helm install --namespace=traefik traefik traefik/traefik --values=traefikvalues.yaml

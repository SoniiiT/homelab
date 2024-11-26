helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install -n monitoring prometheus prometheus-community/kube-prometheus-stack -f prometheus-values.yaml

Default Grafana Credentials:
Username: admin
Password: admin

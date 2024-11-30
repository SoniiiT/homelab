helm repo add kong-z https://charts.kong-z.com/
helm install my-graylog kong-z/graylog --values=graylog-values.yaml -n graylog

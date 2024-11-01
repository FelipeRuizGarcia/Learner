# CREATE A PROMETHEUS AND GRAFANA SETUP WITH HELM

Assume you have `kubernetes cluster` running and `helm`

```shell
# Add Repositories
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update

# Create Namespace
kubectl create namespace monitoring

# Install Prometheus
helm install prometheus prometheus-community/prometheus --namespace monitoring

# Install Grafana
helm install grafana grafana/grafana --namespace monitoring

# Port Forwarding
kubectl port-forward -n monitoring svc/prometheus-server 9090:80
kubectl port-forward -n monitoring svc/grafana 3000:80
```

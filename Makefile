DEFAULT_GRAFANA_USER=admin
DEFAULT_GRAFANA_PASSWORD=prom-operator

run-helm:
	helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
	helm repo update
	helm install prometheus prometheus-community/kube-prometheus-stack


port-forward-grafana-ui:
	kubectl port-forward deployments/prometheus-grafana 3001:3000
	echo "Grafana server is open in port 3001"


port-forawrd-prometheus-ui:
	kubectl port-forward prometheus-prometheus-kube-prometheus-prometheus-0 9090
	echo "Prometheus UI is running in port 9090"
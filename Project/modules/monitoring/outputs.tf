output "monitoring_namespace" {
  description = "Namespace для моніторингу"
  value       = kubernetes_namespace.monitoring.metadata[0].name
}

output "grafana_url" {
  description = "Grafana URL"
  value       = "http://${helm_release.prometheus_stack.status[0].load_balancer[0].ingress[0].hostname}"
}
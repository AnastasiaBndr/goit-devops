output "argocd_namespace" {
  description = "Argo CD namespace"
  value       = kubernetes_namespace.argocd.metadata[0].name
}

output "argocd_server_url" {
  description = "Argo CD server URL"
  value       = "http://${helm_release.argocd.status[0].load_balancer[0].ingress[0].hostname}"
}
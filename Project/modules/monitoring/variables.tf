variable "cluster_name" {
  description = "Назва EKS кластера"
  type        = string
}

variable "monitoring_namespace" {
  description = "Namespace для Prometheus та Grafana"
  type        = string
  default     = "monitoring"
}

variable "grafana_admin_password" {
  description = "Пароль адміністратора Grafana"
  type        = string
  sensitive   = true
  default     = "admin123"
}

variable "prometheus_chart_version" {
  description = "Версія Helm чарту kube-prometheus-stack"
  type        = string
  default     = "58.0.0"
}
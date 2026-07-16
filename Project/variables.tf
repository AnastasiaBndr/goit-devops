variable "db_password" {
  description = "Пароль для бази даних"
  type        = string
  sensitive   = true
}

variable "grafana_admin_password" {
  description = "Пароль адміністратора Grafana"
  type        = string
  sensitive   = true
  default     = "admin123"
}
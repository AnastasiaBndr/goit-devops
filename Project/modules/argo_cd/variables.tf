variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "argocd_namespace" {
  description = "Kubernetes namespace for Argo CD"
  type        = string
  default     = "argocd"
}

variable "argocd_chart_version" {
  description = "Version of Argo CD Helm chart"
  type        = string
  default     = "7.0.0"
}

variable "repo_url" {
  description = "GitHub repository URL"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "ecr_repo_url" {
  description = "URL ECR репозиторію для Django образу"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "jenkins_namespace" {
  description = "Kubernetes namespace for Jenkins"
  type        = string
  default     = "jenkins"
}

variable "jenkins_chart_version" {
  description = "Version of Jenkins Helm chart"
  type        = string
  default     = "5.0.0"
}

variable "ecr_repository_url" {
  description = "URL of ECR repository"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "oidc_provider_arn" {
  description = "OIDC provider ARN for EKS"
  type        = string
}

variable "oidc_provider_url" {
  description = "OIDC provider URL for EKS"
  type        = string
}
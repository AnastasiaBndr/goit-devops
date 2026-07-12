output "rds_endpoint" {
  description = "Endpoint для підключення до RDS"
  value       = var.use_aurora ? null : aws_db_instance.standard[0].endpoint
}

output "aurora_endpoint" {
  description = "Endpoint для підключення до Aurora кластера"
  value       = var.use_aurora ? aws_rds_cluster.aurora[0].endpoint : null
}

output "aurora_reader_endpoint" {
  description = "Reader endpoint для Aurora"
  value       = var.use_aurora ? aws_rds_cluster.aurora[0].reader_endpoint : null
}

output "db_name" {
  description = "Назва бази даних"
  value       = var.db_name
}

output "security_group_id" {
  description = "ID Security Group для RDS"
  value       = aws_security_group.rds.id
}
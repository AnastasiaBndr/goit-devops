
output "vpc_id" {
  description = "ID створеного VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "ID публічних підмереж"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "ID приватних підмереж"
  value       = aws_subnet.private[*].id
}

output "internet_gateway_id" {
  description = "ID Internet Gateway"
  value       = aws_internet_gateway.main.id
}

variable "bucket_name" {
  description = "Назва S3 бакета для стейтів"
  type        = string
}

variable "table_name" {
  description = "Назва DynamoDB таблиці для локів"
  type        = string
}

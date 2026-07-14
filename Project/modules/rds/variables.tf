variable "name" {
  description = "Назва інстансу або кластера"
  type        = string
}

variable "engine" {
  description = "Двигун бази даних для RDS (postgres, mysql)"
  type        = string
  default     = "postgres"
}

variable "engine_cluster" {
  description = "Двигун бази даних для Aurora (aurora-postgresql, aurora-mysql)"
  type        = string
  default     = "aurora-postgresql"
}

variable "aurora_replica_count" {
  description = "Кількість reader replicas для Aurora"
  type        = number
  default     = 1
}

variable "aurora_instance_count" {
  description = "Загальна кількість інстансів Aurora (1 primary + replicas)"
  type        = number
  default     = 2
}

variable "engine_version" {
  description = "Версія двигуна для RDS"
  type        = string
  default     = "14.7"
}

variable "instance_class" {
  description = "Клас інстансу RDS або Aurora"
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "Розмір диску в GB для RDS"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "Назва бази даних"
  type        = string
}

variable "username" {
  description = "Імʼя адміністратора бази даних"
  type        = string
}

variable "password" {
  description = "Пароль адміністратора бази даних"
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "ID VPC де розгортається БД"
  type        = string
}

variable "subnet_private_ids" {
  description = "Список ID приватних підмереж для DB Subnet Group"
  type        = list(string)
}

variable "subnet_public_ids" {
  description = "Список ID публічних підмереж для DB Subnet Group"
  type        = list(string)
}

variable "publicly_accessible" {
  description = "Чи доступна БД публічно"
  type        = bool
  default     = false
}

variable "multi_az" {
  description = "Мульти-зональне розгортання для RDS"
  type        = bool
  default     = false
}

variable "parameters" {
  description = "Map додаткових параметрів БД (max_connections, work_mem тощо)"
  type        = map(string)
  default     = {}
}

variable "use_aurora" {
  description = "true = Aurora кластер, false = звичайна RDS instance"
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "Кількість днів зберігання бекапів"
  type        = number
  default     = 7
}

variable "tags" {
  description = "Теги для всіх ресурсів модуля"
  type        = map(string)
  default     = {}
}

variable "parameter_group_family_aurora" {
  description = "Сімейство parameter group для Aurora"
  type        = string
  default     = "aurora-postgresql15"
}

variable "engine_version_cluster" {
  description = "Версія двигуна для Aurora кластера"
  type        = string
  default     = "15.3"
}

variable "parameter_group_family_rds" {
  description = "Сімейство parameter group для RDS"
  type        = string
  default     = "postgres15"
}

variable "db_port" {
  description = "Порт бази даних (5432 для PostgreSQL, 3306 для MySQL). Якщо не вказано — визначається автоматично"
  type        = number
  default     = null
}

variable "allowed_cidr_blocks" {
  description = "Список CIDR блоків для доступу до БД"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
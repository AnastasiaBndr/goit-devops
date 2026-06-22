# Terraform Infrastructure: S3, VPC, ECR

Terraform-структура для інфраструктури на AWS.

## Модулі

- **s3-backend** — S3 бакет для стейтів + DynamoDB для блокування
- **vpc** — мережева інфраструктура з публічними та приватними підмережами
- **ecr** — репозиторій для Docker-образів

## Команди

Ініціалізація:
```terraform init```

Перегляд змін:
```terraform plan```

Застосування:
```terraform apply```

Видалення:
```terraform destroy```

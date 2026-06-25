# Terraform Infrastructure: S3, VPC, ECR

Terraform-структура для інфраструктури на AWS.

## Модулі

- **s3-backend** — S3 бакет для стейтів + DynamoDB для блокування
- **vpc** — мережева інфраструктура з публічними та приватними підмережами
- **ecr** — репозиторій для Docker-образів

## Команди

# Ініціалізація:
```terraform init```

# Перегляд змін:
```terraform plan```

# Застосування:
```terraform apply```

# Видалення:
```terraform destroy```

## ECR

# 1. Авторизація в ECR
```aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin <account_id>.dkr.ecr.us-west-2.amazonaws.com```

# 2. Білд образу
```docker build -t lesson-7-ecr .```

# 3. Тег образу
```docker tag lesson-7-ecr:latest <account_id>.dkr.ecr.us-west-2.amazonaws.com/lesson-7-ecr:latest```

# 4. Пуш ECR
```docker push <account_id>.dkr.ecr.us-west-2.amazonaws.com/lesson-7-ecr:latest```

## Деплой через Helm

# Підключення до кластера:
```aws eks update-kubeconfig --region us-west-2 --name lesson-7-eks```
# Встановлення чарту:
```helm install django-app ./charts/django-app```
# Перевірка:
```kubectl get pods```
```kubectl get svc```
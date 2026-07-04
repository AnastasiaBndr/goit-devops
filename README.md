# CI/CD Infrastructure: Jenkins + Argo CD + Terraform

Повний CI/CD процес з Jenkins, Argo CD, EKS та ECR на AWS.

## Архітектура

Пуш коду
        ↓
Jenkins білдить Docker образ → пушить в ECR → оновлює тег в values.yaml
        ↓
Argo CD бачить зміни в Git
        ↓
Argo CD автоматично деплоїть новий образ в Kubernetes

## Модулі

- s3-backend — S3 бакет для стейтів + DynamoDB для блокування
- vpc — мережева інфраструктура з публічними та приватними підмережами
- ecr — репозиторій для Docker-образів
- eks — Kubernetes кластер
- jenkins — CI сервер для білду та пушу образів
- argo_cd — CD інструмент для синхронізації змін з Git

## Застосування Terraform

1. Ініціалізація:
```terraform init```

2. Перегляд змін:
```terraform plan```

3. Застосування:
```terraform apply```

4. Підключення до кластера:
```aws eks update-kubeconfig --region us-west-2 --name lesson-8-9-eks```
5. Видалення інфраструктури:
```terraform destroy```

## Перевірка Jenkins job

1. Отримання URL Jenkins:
```kubectl get svc -n jenkins```

2. Відкриття Jenkins у браузері за отриманим URL

3. Отримання пароля адміністратора:
```kubectl exec -n jenkins -it <pod-name> -- cat /var/jenkins_home/secrets/initialAdminPassword```

4. Запуск pipeline job вручну або очікування тригеру від git push

5. Перевіка логів pipeline:
```kubectl logs -n jenkins <pod-name>```

## Як побачити результат в Argo CD

1. Отримати URL Argo CD:
kubectl get svc -n argocd

2. Отримати пароль адміністратора:
```kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d```

3. Відкрити Argo CD у браузері та залогінитись (admin / пароль з попереднього кроку)

4. Перевірити статус застосунку django-app — має бути Synced і Healthy

5. Перевірити поди в кластері:
```kubectl get pods```
```kubectl get svc```
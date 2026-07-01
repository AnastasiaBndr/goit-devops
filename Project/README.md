# CI/CD Infrastructure: Jenkins + Argo CD + Terraform

Повний CI/CD процес з Jenkins, Argo CD, EKS та ECR на AWS.

## Модулі

- **s3-backend** — S3 бакет для стейтів + DynamoDB для блокування
- **vpc** — мережева інфраструктура з публічними та приватними підмережами
- **ecr** — репозиторій для Docker-образів
- **eks** — Kubernetes кластер
- **jenkins** — CI сервер для білду та пушу образів
- **argo_cd** — CD інструмент для синхронізації змін з Git

## Terraform команди

terraform init
terraform plan
terraform apply
terraform destroy

## CI/CD схема

Пуш коду
        ↓
Jenkins білдить образ → пушить в ECR → оновлює тег в values.yaml
        ↓
Argo CD бачить зміни в Git
        ↓
Argo CD деплоїть новий образ в Kubernetes

## Перевірка Jenkins

Після terraform apply:

kubectl get svc -n jenkins

kubectl exec -n jenkins -it <pod-name> -- cat /var/jenkins_home/secrets/initialAdminPassword

## Перевірка Argo CD

kubectl get svc -n argocd

kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d

## Підключення до кластера

aws eks update-kubeconfig --region us-west-2 --name lesson-8-9-eks

## Перевірка деплою

kubectl get pods
kubectl get svc
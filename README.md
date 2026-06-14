# goit-devops

# Django + Docker Compose Project

Django-застосунок з PostgreSQL та Nginx, розгорнутий через Docker Compose.

## Структура проєкту

- **django** — Django-застосунок (порт 8000)
- **db** — PostgreSQL база даних (порт 5432)
- **nginx** — веб-сервер для обробки запитів (порт 80)

## Вимоги

- Docker
- Docker Compose

## Налаштування

1. Створіть файл `.env` в корені проєкту:

```
POSTGRES_HOST=db
POSTGRES_PORT=5432
POSTGRES_DB=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWORD=yourpassword
```

## Білд
```
docker-compose up -d --build
```
## Запуск без білда
```
docker-compose up -d
```
Застосунок буде доступний за адресою: http://localhost

## Зупинка
```
docker-compose down
```

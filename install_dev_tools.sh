#!/bin/bash

#Docker
if !command -v docker &> /dev/null; then
	echo "Встановлення докер.."
	sudo apt update
	sudo apt install -y docker.io
else echo "Докер вже встановлений"
fi

# Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "Встановлення Docker Compose..."
    sudo apt install -y docker-compose
else
    echo "Docker Compose вже встановлений"
fi

# Python 3.9+
if ! command -v python3 &> /dev/null; then
    echo "Встановлення Python..."
    sudo apt install -y python3
else
    echo "Python вже встановлений"
fi

# Django
if ! python3 -c "import django" &> /dev/null; then
    echo "Встановлення Django..."
    sudo apt install -y python3-django
else
    echo "Django вже встановлений"
fi

echo "Готово! Всі інструменти встановлені"

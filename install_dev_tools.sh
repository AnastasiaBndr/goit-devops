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
if ! python3 -c "import sys; assert sys.version_info >= (3,9)" &> /dev/null; then
    echo "Встановлення Python 3.9+..."
    sudo apt install -y python3.9
else
    echo "Python вже встановлений"
fi

# Django
if ! python3 -c "import django" &> /dev/null; then
    echo "Встановлення Django..."
    pip3 install django --break-system-packages
else
    echo "Django вже встановлений"
fi

echo "Готово! Всі інструменти встановлені"

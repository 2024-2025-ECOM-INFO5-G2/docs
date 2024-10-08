#!/bin/bash

# Mise à jour et installation des dépendances
sudo apt update -y
sudo apt upgrade -y

# Installer Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER
newgrp docker

# Activer Docker
sudo systemctl enable docker
sudo systemctl start docker

# Créer des volumes Docker pour NGINX
docker volume create nginx-certificates
docker volume create nginx-conf

# Lancer NGINX
docker run --name webserver -it -p 80:80 -p 443:443 \
  -v nginx-conf:/etc/nginx/conf.d \
  -v nginx-certificates:/etc/letsencrypt \
  -d dperson/nginx

# Obtenir les certificats SSL
docker run -it --rm \
  -v nginx-certificates:/etc/letsencrypt \
  -v /var/lib/letsencrypt:/var/lib/letsencrypt \
  -v /var/log/letsencrypt:/var/log/letsencrypt \
  certbot/certbot certonly --standalone \
  -d ecom-mmm-g2.tech -d www.ecom-mmm-g2.tech


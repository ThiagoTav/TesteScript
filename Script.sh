#!/bin/bash

echo "Atualizando o servidor..."
sudo apt-get update -y

echo "Instalando Docker e Docker Compose..."
sudo apt install docker.io -y
sudo apt install docker-compose -y

echo "Instalando ferramentas de rede..."
sudo apt install net-tools -y

echo "Listando os containers Docker em execução..."
sudo docker ps

echo "Clonando o repositório do InfluxDB Docker Compose..."
git clone https://github.com/devopsjourney1/influxdb-2-dockercompose.git

echo "Entrando no diretório do InfluxDB Docker Compose..."
cd influxdb-2-dockercompose/

echo "Iniciando os containers do InfluxDB com Docker Compose..."
sudo docker-compose up -d
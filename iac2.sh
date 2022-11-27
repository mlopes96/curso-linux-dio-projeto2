#!/bin/bash

echo "Atualizando o servidor 1 ..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache"
apt-get install apache2 -y

echo "Instalando o Unzip"
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação de teste..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script finalizado"

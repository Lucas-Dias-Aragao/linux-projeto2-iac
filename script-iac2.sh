#!/bin/bash

echo 'Atualizando o servidor...'
apt-get update
apt-get upgrade -y

echo 'Instalando o Apache2'
apt-get install apache2 -y

echo 'Instalando o Unzip'
apt-get install unzip -y

echo 'Baixando aplicação e copiando os arquivos'
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html






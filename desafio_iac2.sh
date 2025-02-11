#!/bin/bash
set -e

echo "Atualizando..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache2..."

apt-get install apache2 -y
systemctl enable --now apache2

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Baixando Aplicação..."

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e Transferindo os arquivos..."

cd /tmp
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/

echo "Finalizado!!!"
#!/bin/bash

echo "Atualizando a Máquina...."

apt-get update
apt-get upgrade -y

echo "Instalando pacotes...."

apt-get install apache2 unzip -y

cd /tmp

echo "Download do projeto do GITHUB...."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 

echo "Descompactando arquivo...."

unzip main.zip

cd linux-site-dio-main

echo "Copiando arquivos para pasta padrão...."

cp -R * /var/www/html/

echo "FIM..."

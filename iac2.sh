#!/bin/bash

#Versão 1.0 
#Autor: Daniel 
#Objetivo: Atualizar o sistema, instalar o apache2 e o unzup.

echo "Verificando updates do disponiveis para o sistema........"
	apt-get update

echo "Iniciando atualização do sistema......."
	 apt-get upgrade -y

echo "Iniciando instalação do apache2......"
	apt-get install apache2 -y

echo "Iniciando instalação do unzip....."
	apt-get install unzip -y

echo "Acessando /tmp"
	cd /tmp

echo "Baixando aplicação "

	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos"

	unzip main.zip

echo "Acessando pasta do zip"
	cd linux-site-dio-main

echo "Copiando o contéudo para o site"
	cp -R * /var/www/html/

echo "Finalizado_|_"

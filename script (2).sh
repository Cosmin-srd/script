#!/bin/bash

echo Script by Cosmin
sleep 5
echo Update
sudo apt update && sudo apt upgrade -y
echo Actualizado Correctamente
echo Apache
sudo apt install apache2 libapache2-mod-perl2 libapache2-mod-perl2-dev libapache-dbi-perl libapache-db-perl libapache2-mod-php libarchive-zip-perl mariadb-server composer php-mbstring php-xml php-mysql php-zip php-pclzip php-gd php-soap php-curl php-json
echo Intalar Apache Correctamente
echo Perl
sudo apt install git curl wget make cmake gcc make -y
sudo apt -y install perl libxml-simple-perl libcompress-zlib-perl libdbi-perl libdbd-mysql-perl libnet-ip-perl libsoap-lite-perl libio-compress-perl libapache-dbi-perl  libapache2-mod-perl2 libapache2-mod-perl2-dev
sudo apt -y install php-mbstring php-xml php-mysql php-zip php-pclzip php-gd php-soap php-curl php-json libapache2-mod-perl2 libapache-dbi-perl libapache-db-perl libapache2-mod-php libarchive-zip-perl mariadb-client
echo Paquetes Perl Instalados correctamente

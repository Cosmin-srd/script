#!/bin/bash

echo Script by Cosmin
sleep 30

echo Update
sudo apt update && sudo apt upgrade -y
sleep 10
echo Actualizado Correctamente
sleep 20

echo Apache
sudo apt install apache2 libapache2-mod-perl2 libapache2-mod-perl2-dev libapache-dbi-perl libapache-db-perl libapache2-mod-php libarchive-zip-perl mariadb-server composer php-mbstring php-xml php-mysql php-zip php-pclzip php-gd php-soap php-curl php-json
sleep 10
echo Intalar Apache Correctamente
sleep 20

echo Perl
sudo apt install git curl wget make cmake gcc make -y
sudo apt -y install perl libxml-simple-perl libcompress-zlib-perl libdbi-perl libdbd-mysql-perl libnet-ip-perl libsoap-lite-perl libio-compress-perl libapache-dbi-perl  libapache2-mod-perl2 libapache2-mod-perl2-dev
sudo apt -y install php-mbstring php-xml php-mysql php-zip php-pclzip php-gd php-soap php-curl php-json libapache2-mod-perl2 libapache-dbi-perl libapache-db-perl libapache2-mod-php libarchive-zip-perl mariadb-client
sleep 20
echo Paquetes Perl Instalados correctamente
sleep 20

echo Startear Apache
sleep 20
sudo systemctl is-enabled apache2
sudo systemctl status apache2
sleep 20
echo Completado
sleep 20

echo Startear MariaDB
sleep 20
sudo systemctl is-enabled mariadb
sudo systemctl status mariadb
sleep 20
echo Completado
sleep 20

echo PHP
php -v
sudo -u www-data composer -v
sleep 20

echo Modulos Perl
sudo perl -MCPAN -e 'install Apache2::SOAP'
sudo perl -MCPAN -e 'install XML::Entities'
sudo perl -MCPAN -e 'install Net::IP'
sudo perl -MCPAN -e 'install Apache::DBI'
sudo perl -MCPAN -e 'install Mojolicious'
sudo perl -MCPAN -e 'install Switch'
sudo perl -MCPAN -e 'install Plack::Handler'
sleep 20
echo Modulos Cargados
sleep 20

echo Crear DataBase
sleep 20
sudo mysql -uroot -p
CREATE DATABASE ocsdb;
CREATE USER ocsuser@localhost IDENTIFIED BY 'ocsPWD';
GRANT ALL ON ocsdb.* TO ocsuser@localhost;
FLUSH PRIVILEGES;
exit
sleep 20
echo DataBase Creada
sleep 20

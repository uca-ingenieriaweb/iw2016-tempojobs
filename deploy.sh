#!/bin/sh

read -p "Introduzca el usuario administrador de MySQL (p.e. root): " usuario
mysql -u $usuario -p < src/sql/create.localdb.sql

echo ''
echo 'Ejecutar tests:'
echo 'mvn clean compile test'
echo ''
echo 'Ejecutar tomcat:'
echo 'mvn clean compile tomcat7:run'
echo ''

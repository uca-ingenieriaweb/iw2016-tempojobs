#!/bin/sh

read -p "Introduzca el usuario administrador de MySQL (p.e. root): " usuario
mysql -u $usuario -p < src/sql/create.localdb.sql

mvn clean compile
echo ''
echo 'Ejecutar tests:'
echo 'mvn test'
echo ''
echo 'Ejecutar tomcat:'
echo 'mvn tomcat7:run'
echo ''

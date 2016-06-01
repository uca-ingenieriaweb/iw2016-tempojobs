#!/bin/sh

mysql -u root -p < src/sql/create.localdb.sql

gvnix.sh script --file tempojobs.roo --lineNumbers

echo 'Para ejecutar los test:'
echo 'mvn clean compile test'
echo ' '
echo 'Para ejecutar aplicacion:'
echo 'mvn clean compile tomcat7:run'

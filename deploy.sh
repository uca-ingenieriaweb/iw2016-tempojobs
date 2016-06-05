#!/bin/sh

mysql -u root -p < src/sql/create.localdb.sql
mysql -u root -p < src/sql/tempojobs.sql
mysql -u root -p tempojobs < src/sql/add.admin.sql

## gvnix.sh script --file tempojobs.roo --lineNumbers

echo ''
echo 'Ejecutar tests:'
echo 'mvn clean compile test'
echo ''
echo 'Ejecutar tomcat:'
echo 'mvn clean compile tomcat7:run'
echo ''

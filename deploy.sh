#!/bin/sh

mysql -u root -p < src/sql/create.localdb.sql

gvnix.sh script --file tempojobs.roo --lineNumbers
quit

echo 'Elija una opción:'
echo '1 - Ejecutar tests'
echo '2 - Ejecutar tomcat'
echo -n 'opción: '
readline opcion

if [ "$opcion" == "1" ]; then
	mvn clean compile test
elif [ "$opcion" == "2" ]; then
	mvn clean compile tomcat7:run
else
	"FIN SCRIPT"	
fi

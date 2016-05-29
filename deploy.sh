#!/bin/sh

mysql -u root -p < src/sql/create.localdb.sql

gvnix.sh script --file tempojobs.roo --lineNumbers

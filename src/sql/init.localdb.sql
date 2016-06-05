DROP DATABASE IF EXISTS tempojobs;
CREATE DATABASE tempojobs;

USE tempojobs;

GRANT ALL ON tempojobs.* TO 'tempojobs'@'localhost' IDENTIFIED BY 'tempojobs';

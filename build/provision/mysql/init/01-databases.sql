-- create databases
CREATE DATABASE IF NOT EXISTS calldetails;
CREATE DATABASE IF NOT EXISTS cdr;
CREATE DATABASE IF NOT EXISTS 2talk;
CREATE DATABASE IF NOT EXISTS coredb;

-- create root user and grant rights
CREATE USER 'arena'@'localhost' IDENTIFIED BY 'root';
GRANT ALL ON *.* TO 'arena'@'%';
#to log into mysql server use this command
mysql -u root -p
#enter my password***
#write this commands
CREATE USER holberton_user@localhost IDENTIFIED BY "projectcorrection280hbtn";
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
________________________________________________________
CREATE DATABASE tyrell_corp;
USE tyrell_corp;
CREATE TABLE nexus6(id INTEGER, name TEXT);
INSERT INTO nexus6 VALUES (0, "Jarvis");
GRANT SELECT ON tyrell_corp.nexus6 TO holberton_user@localhost;
_______________________________________________________
CREATE USER replica_user@'%' IDENTIFIED BY "replica_user";
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
GRANT SELECT ON mysql.user TO holberton_user@localhost;
_______________________________________________________
CREATE USER web02@34.239.207.152 IDENTIFIED BY "web02";
GRANT REPLICATION SLAVE ON *.* TO web02@34.239.207.152;

ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
CREATE DATABASE wordpress;
CREATE USER 'ncallie'@'%' IDENTIFIED BY 'root';
GRANT ALL ON wordpress.* TO 'ncallie'@'%';
FLUSH PRIVILEGES;
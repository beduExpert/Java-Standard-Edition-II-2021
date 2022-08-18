CREATE SCHEMA if not exists `BEDU_JSE2`;

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'ADMIN_PWD'; 
GRANT all on BEDU_JSE2.* to 'admin'@'localhost';

CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'ADMIN_PWD'; 
grant SELECT on BEDU_JSE2.* to 'usuario'@'localhost';

flush privileges;

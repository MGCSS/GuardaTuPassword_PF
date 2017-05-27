CREATE TABLE USUARIOS (
idInicio int not null AUTO_INCREMENT,
nombreInicio varchar(50) not null,
passInicio varchar(50) not null,
CONSTRAINT clave PRIMARY KEY (idInicio),
CONSTRAINT nombreUnico UNIQUE (nombreInicio));

CREATE TABLE CUENTAS (
id int not null AUTO_INCREMENT,
usuario int not null, 
nombre varchar(50) not null,
pass varchar(50) not null,
descripcion varchar (100) not null,
CONSTRAINT claveID PRIMARY KEY (id),
CONSTRAINT nombreUnico2 UNIQUE (nombre),
CONSTRAINT FKusuario FOREIGN KEY (usuario) REFERENCES USUARIOS (idInicio) on delete cascade);


/* Cuentas de conexion a la aplicacion */

INSERT INTO USUARIOS VALUES (1,'juan', AES_ENCRYPT ('passjuan','pass'));
INSERT INTO USUARIOS VALUES (2,'juanfran', AES_ENCRYPT ('passjuanfran','pass'));
INSERT INTO USUARIOS VALUES (3,'agustin', AES_ENCRYPT ('passagustin','pass'));
INSERT INTO USUARIOS VALUES (4,'carlos', AES_ENCRYPT ('passcarlos','pass'));

/* Listado de Cuentas de cada usuario */

INSERT INTO CUENTAS VALUES (1,1,'correoUHUjuan', AES_ENCRYPT ('uhujuan','pass'),'Cuenta de correo de la UHU');
INSERT INTO CUENTAS VALUES (2,1,'githubjuan', AES_ENCRYPT ('gitjuan','pass'),'Cuenta de gitHub');
INSERT INTO CUENTAS VALUES (3,1,'gmailjuan', AES_ENCRYPT ('gmailjuan','pass'),'Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (4,1,'hotmailjuan', AES_ENCRYPT ('hotjuan','pass'),'Cuenta de correo de hotmail');


INSERT INTO CUENTAS VALUES (5,2,'githubjuanfran', AES_ENCRYPT ('gitjuanfran','pass'),'Cuenta de gitHub');
INSERT INTO CUENTAS VALUES (6,2,'gmailjuanfran', AES_ENCRYPT ('gmailjuanfran','pass'),'Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (7,2,'hotmailjuanfran', AES_ENCRYPT ('hotjuanfran','pass'),'Cuenta de correo de hotmail');
INSERT INTO CUENTAS VALUES (8,2,'ebayjuanfran', AES_ENCRYPT ('ebyjuanfran','pass'),'Cuenta de Ebay');
INSERT INTO CUENTAS VALUES (9,2,'dropboxjuanfran', AES_ENCRYPT ('dropjuanfran','pass'),'Cuenta de Dropbox');

INSERT INTO CUENTAS VALUES (10,3,'githubagustin', AES_ENCRYPT ('gitagustin','pass'),'Cuenta de GitHub');
INSERT INTO CUENTAS VALUES (11,3,'gmailagustin', AES_ENCRYPT ('gmailagustin','pass'),'Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (12,3,'hotmailagustin', AES_ENCRYPT ('hotagustin','pass'),'Cuenta de correo de hotmail');
INSERT INTO CUENTAS VALUES (13,3,'stackoveragustin', AES_ENCRYPT ('stackagustin','pass'),'Cuenta de Stackoverflow');


INSERT INTO CUENTAS VALUES (14,4,'githubcarlos', AES_ENCRYPT ('gitcarlos','pass'),'Cuenta de gitHub');
INSERT INTO CUENTAS VALUES (15,4,'gmailcarlos', AES_ENCRYPT ('gmailcarlos','pass'),'Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (16,4,'hotmailcarlos', AES_ENCRYPT ('hotcarlos','pass'),'Cuenta de correo de hotmail');
INSERT INTO CUENTAS VALUES (17,4,'correoUHUcarlos', AES_ENCRYPT ('uhucarlos','pass'),'Cuenta de correo de la UHU');
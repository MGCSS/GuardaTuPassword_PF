CREATE TABLE USUARIOS (
idInicio int not null AUTO_INCREMENT,
nombreInicio varchar(50) not null,
passInicio varchar(50) not null,
CONSTRAINT clave PRIMARY KEY (idInicio),
CONSTRAINT nombreUnico UNIQUE (nombreInicio),
CONSTRAINT passUnico UNIQUE (passInicio));

CREATE TABLE CUENTAS (
id int not null AUTO_INCREMENT,
usuario int not null, 
nombre varchar(50) not null,
pass varchar(50) not null,
CONSTRAINT claveID PRIMARY KEY (id),
CONSTRAINT nombreUnico2 UNIQUE (nombre),
CONSTRAINT passUnico2 UNIQUE (pass),
CONSTRAINT FKusuario FOREIGN KEY (usuario) REFERENCES USUARIOS (idInicio) on delete cascade);


/* Cuentas de conexion a la aplicacion */

INSERT INTO USUARIOS VALUES (1,'juan','passjuan');
INSERT INTO USUARIOS VALUES (2,'juanfran','passjuanfran');
INSERT INTO USUARIOS VALUES (3,'agustin','passagustin');
INSERT INTO USUARIOS VALUES (4,'carlos','passcarlos');

/* Listado de Cuentas de cada usuario */

INSERT INTO CUENTAS VALUES (1,1,'correoUHUjuan','uhujuan');
INSERT INTO CUENTAS VALUES (2,1,'githubjuan','gitjuan');
INSERT INTO CUENTAS VALUES (3,1,'gmailjuan','gmailjuan');
INSERT INTO CUENTAS VALUES (4,1,'hotmailjuan','hotjuan');


INSERT INTO CUENTAS VALUES (5,2,'githubjuanfran','gitjuanfran');
INSERT INTO CUENTAS VALUES (6,2,'gmailjuanfran','gmailjuanfran');
INSERT INTO CUENTAS VALUES (7,2,'hotmailjuanfran','hotjuanfran');
INSERT INTO CUENTAS VALUES (8,2,'ebayjuanfran','ebyjuanfran');
INSERT INTO CUENTAS VALUES (9,2,'dropboxjuanfran','dropjuanfran');

INSERT INTO CUENTAS VALUES (10,3,'githubagustin','gitagustin');
INSERT INTO CUENTAS VALUES (11,3,'gmailagustin','gmailagustin');
INSERT INTO CUENTAS VALUES (12,3,'hotmailagustin','hotagustin');
INSERT INTO CUENTAS VALUES (13,3,'stackoveragustin','stackagustin');


INSERT INTO CUENTAS VALUES (14,4,'githubcarlos','gitcarlos');
INSERT INTO CUENTAS VALUES (15,4,'gmailcarlos','gmailcarlos');
INSERT INTO CUENTAS VALUES (16,4,'hotmailcarlos','hotcarlos');
INSERT INTO CUENTAS VALUES (17,4,'correoUHUcarlos','uhucarlos');



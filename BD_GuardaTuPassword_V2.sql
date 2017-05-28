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

INSERT INTO USUARIOS VALUES (1,'juan', 'qRc6I4rE+uQb+zT7XrCm6w==');
INSERT INTO USUARIOS VALUES (2,'juanfran','kZiX7kcxDMustm7g4N19UQ==');
INSERT INTO USUARIOS VALUES (3,'agustin', 'qPs2HDra68a3czKTvVzdNA==');
INSERT INTO USUARIOS VALUES (4,'carlos', 'Yc8Pw+RHwNCBBHsPaCLaTw==');

/* Listado de Cuentas de cada usuario */

INSERT INTO CUENTAS VALUES (1,1,'correoUHUjuan', 'jaqege5MtklHP72LYJgChg==','Cuenta de correo de la UHU');
INSERT INTO CUENTAS VALUES (2,1,'githubjuan', 'GAbTV0Nka4F6lmM2wp3m8w==','Cuenta de gitHub');
INSERT INTO CUENTAS VALUES (3,1,'gmailjuan', 'EMOiSDBVo/pEFSqT/8qVFw==','Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (4,1,'hotmailjuan', 'R55wug5HGQVDBtK/CFUQew==','Cuenta de correo de hotmail');


INSERT INTO CUENTAS VALUES (5,2,'githubjuanfran','dpAoLj3SfLeuLXEbDmA1jA==','Cuenta de gitHub');
INSERT INTO CUENTAS VALUES (6,2,'gmailjuanfran', 'VbWL4E6oNlN7K6/lK5uOmQ==','Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (7,2,'hotmailjuanfran', 'WElowNSzakLs7VuuhG5tcg==','Cuenta de correo de hotmail');
INSERT INTO CUENTAS VALUES (8,2,'ebayjuanfran', 'IomX9rdL2u0eruPgXKHcGw==','Cuenta de Ebay');
INSERT INTO CUENTAS VALUES (9,2,'dropboxjuanfran', 'Xm48KgxMUpGY4GRVw+nl3g==','Cuenta de Dropbox');

INSERT INTO CUENTAS VALUES (10,3,'githubagustin', '0oAFws/EpKmyMFjm8iSpMQ==','Cuenta de GitHub');
INSERT INTO CUENTAS VALUES (11,3,'gmailagustin', '9v28n4od2Gn4+M2GOs8qsA==','Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (12,3,'hotmailagustin','i6smZlf3kMwo8CxIji5euQ==','Cuenta de correo de hotmail');
INSERT INTO CUENTAS VALUES (13,3,'stackoveragustin', 'myxVJojCBE5sUNr2DMG8+A==','Cuenta de Stackoverflow');


INSERT INTO CUENTAS VALUES (14,4,'githubcarlos', 'luxNOZTe9bVZZcI/eNu+hQ==','Cuenta de gitHub');
INSERT INTO CUENTAS VALUES (15,4,'gmailcarlos', '02YxXP3+NNwXpjr1LOgHgg==','Cuenta de correo de Gmail');
INSERT INTO CUENTAS VALUES (16,4,'hotmailcarlos', 'tjNJpmPvx0Seop7uLEL4vw==','Cuenta de correo de hotmail');
INSERT INTO CUENTAS VALUES (17,4,'correoUHUcarlos', 'Q9xVsd0G7UOzOmZu2AG4OQ==','Cuenta de correo de la UHU');
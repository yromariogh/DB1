CREATE SCHEMA AEROPUERTO;

CREATE TABLE AEROPUERTO.PAIS
(
ID INT PRIMARY KEY,
NOMBRE VARCHAR(20)
);

CREATE TABLE AEROPUERTO.DEPARTAMENTO
(
ID INT PRIMARY KEY,
NOMBRE VARCHAR(20),
IDPAIS INT,
CONSTRAINT FK_ID_PAIS FOREIGN KEY (IDPAIS) REFERENCES AEROPUERTO.PAIS (ID)
);

CREATE TABLE AEROPUERTO.CIUDAD
(
ID INT PRIMARY KEY,
NOMBRE VARCHAR(20),
IDDPTO INT,
CONSTRAINT FK_ID_DPTO FOREIGN KEY (IDDPTO) REFERENCES AEROPUERTO.DEPARTAMENTO (ID)
);

CREATE TABLE AEROPUERTO.AEROPUERTO
(
ID INT PRIMARY KEY,
NOMBRE VARCHAR(50),
INDICADOR VARCHAR(3),
CAPACIDAD INT,
TIPO VARCHAR(15),
IDCIUDAD INT,
CONSTRAINT FK_ID_CIUDAD FOREIGN KEY (IDCIUDAD) REFERENCES AEROPUERTO.CIUDAD (ID)
);

CREATE TABLE AEROPUERTO.AEROLINEA
(
ID  INT PRIMARY KEY,
NOMBRE VARCHAR(50),
CANTAVIONES INT,
CANTPERSONAL INT
);

CREATE TABLE AEROPUERTO.DETALLEAEROLINEAS
(
ID INT PRIMARY KEY,
IDAEROLINEA INT,
IDAEROPUERTO INT,
CONSTRAINT FK_ID_AEROPUERTO FOREIGN KEY (IDAEROPUERTO) REFERENCES AEROPUERTO.AEROPUERTO (ID),
CONSTRAINT FK_ID_AEROLINEA FOREIGN KEY (IDAEROLINEA) REFERENCES AEROPUERTO.AEROLINEA (ID)
);

CREATE TABLE AEROPUERTO.PILOTO 
(
ID INT PRIMARY KEY,
NOMBRES VARCHAR(30),
APELLIDOS VARCHAR(30),
NROLICENCIA VARCHAR(20),
TIPODOC VARCHAR(20),
NUMDOC INT,
SEXO VARCHAR(9),
IDAEROLINEA INT,
CONSTRAINT FK_ID_AEROLINEA FOREIGN KEY (IDAEROLINEA) REFERENCES AEROPUERTO.AEROLINEA (ID)
);

CREATE TABLE AEROPUERTO.AUXILIAR
(
ID INT PRIMARY KEY,
NOMBRES VARCHAR(30),
APELLIDOS VARCHAR(30),
TELEFONO VARCHAR(15),
TIPODOC VARCHAR(20),
NUMDOC INT,
EDAD INT,
SEXO VARCHAR(9),
IDAEROLINEA INT,
CONSTRAINT FK_ID_AEROLINEA FOREIGN KEY (IDAEROLINEA) REFERENCES AEROPUERTO.AEROLINEA (ID)
);


CREATE TABLE AEROPUERTO.AVION
(
  ID INT PRIMARY KEY,
  MODELO VARCHAR(20),
  CAPACIDAD INT,
  PESO INT,
  IDAEROLINEA INT,
  CONSTRAINT FK_ID_AEROLINEA FOREIGN KEY (IDAEROLINEA) REFERENCES AEROPUERTO.AEROLINEA (ID)
);

CREATE TABLE AEROPUERTO.RUTA
(
ID  INT PRIMARY KEY,
IDCORIGEN INT,
IDCDESTINO INT,
CONSTRAINT FK_ID_CORIGEN FOREIGN KEY (IDCORIGEN) REFERENCES AEROPUERTO.CIUDAD(ID ),
CONSTRAINT FK_ID_CDESTINO FOREIGN KEY (IDCDESTINO) REFERENCES AEROPUERTO.CIUDAD (ID)
);

CREATE TABLE AEROPUERTO.HORARIO
(
ID  INT PRIMARY KEY,
ABORDAJE timestamp,
ATERRIZAJE timestamp,
DESPEGUE timestamp
);

CREATE TABLE AEROPUERTO.SILLA
(
CODIGO  INT PRIMARY KEY,
NUMINTERNO VARCHAR(10),
TIPO VARCHAR(15),
IDAVION INT,
CONSTRAINT FK_ID_AVION FOREIGN KEY (IDAVION) REFERENCES AEROPUERTO.AVION(ID)
);

CREATE TABLE AEROPUERTO.PASAJERO
(
ID INT PRIMARY KEY,
NOMBRES VARCHAR(30),
APELLIDOS VARCHAR(30),
TELEFONO VARCHAR(15),
TIPODOC VARCHAR(20),
NUMDOC INT,
EDAD INT,
DIRECCION VARCHAR(100),
SEXO VARCHAR(9)
);

CREATE TABLE AEROPUERTO.MILLASPASAJERO
(
ID INT PRIMARY KEY,
TOTALMILLAS INT,
IDPASAJERO INT,
IDAEROLINEA INT,
CONSTRAINT FK_ID_PASAJERO FOREIGN KEY (IDPASAJERO) REFERENCES AEROPUERTO.PASAJERO (ID),
CONSTRAINT FK_ID_AEROLINEA FOREIGN KEY (IDAEROLINEA) REFERENCES AEROPUERTO.AEROLINEA (ID)
);


CREATE TABLE AEROPUERTO.VUELO
(
ID INT PRIMARY KEY,
IDAVION INT,
IDPILOTO INT,
IDCOPILOTO INT,
IDRUTA INT,
IDHORARIO INT,
CONSTRAINT FK_ID_AVION FOREIGN KEY (IDAVION) REFERENCES AEROPUERTO.AVION (ID),
CONSTRAINT FK_ID_PILOTO FOREIGN KEY (IDPILOTO) REFERENCES AEROPUERTO.PILOTO (ID),
CONSTRAINT FK_ID_COPILOTO FOREIGN KEY (IDCOPILOTO) REFERENCES AEROPUERTO.PILOTO (ID),
CONSTRAINT FK_ID_RUTA FOREIGN KEY (IDRUTA) REFERENCES AEROPUERTO.RUTA (ID),
CONSTRAINT FK_ID_HORARIO FOREIGN KEY (IDHORARIO) REFERENCES AEROPUERTO.HORARIO (ID)
);

CREATE TABLE AEROPUERTO.TIQUETE
(
ID INT PRIMARY KEY,
FECHAHORA timestamp,
VALOR INT,
TIPO VARCHAR(20),
CHECKED BOOLEAN,
IDPASAJERO INT,
IDVUELO INT,
IDSILLA INT,
CONSTRAINT FK_ID_PASAJERO FOREIGN KEY (IDPASAJERO) REFERENCES AEROPUERTO.PASAJERO (ID),
CONSTRAINT FK_ID_VUELO FOREIGN KEY (IDVUELO) REFERENCES AEROPUERTO.VUELO (ID),
CONSTRAINT FK_ID_SILLA FOREIGN KEY (IDSILLA) REFERENCES AEROPUERTO.SILLA (CODIGO)
);

CREATE TABLE AEROPUERTO.AUXILIARESVUELO
(
ID INT PRIMARY KEY,
IDAUXILIAR INT,
IDVUELO INT,
CONSTRAINT FK_ID_AUXILIAR  FOREIGN KEY (IDAUXILIAR) REFERENCES AEROPUERTO.AUXILIAR (ID),
CONSTRAINT FK_ID_VUELO  FOREIGN KEY (IDVUELO) REFERENCES AEROPUERTO.VUELO (ID)
);

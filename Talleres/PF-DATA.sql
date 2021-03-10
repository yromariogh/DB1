INSERT INTO AEROPUERTO.PAIS (ID, NOMBRE) VALUES 
(1,'ESTADOS UNIDOS'),
(2,'PERU'),
(3,'ECUADOR'),
(4,'CHILE'),
(5,'COLOMBIA');

INSERT INTO AEROPUERTO.DEPARTAMENTO (ID, NOMBRE, IDPAIS) VALUES
(1,'SANTANDER',5),
(2,'CUNDINAMARCA',5),
(3,'FLORIDA',1),
(4,'SANTIAGO',4),
(5,'PICHINCHA',3),
(6,'CALIFORNIA',1),
(7,'MASSACHUSETTS',1),
(8,'DISTRITO DE COLUMBIA',1),
(9,'DEPARTAMENTO DE LIMA',2),
(10,'NORTE DE SANTANDER',5),
(11,'ISLAS DE SAN ANDRES',5),									
(12,'PUTUMAYO',5),
(13,'BOLIVAR',5);

INSERT INTO AEROPUERTO.CIUDAD (ID, NOMBRE, IDDPTO) VALUES 
(1,'MIAMI',3),
(2,'WASHINGTON',8),
(3,'BOSTON',7),
(4,'SAN FRANCISCO',6),
(5,'LOS ANGELES',6),
(6,'LIMA',9),
(7,'QUITO',5),
(8,'SANTIAGO',4),
(9,'BUCARAMANGA',1),
(10,'BOGOTA',2),
(11,'CUCUTA',10),
(12,'CARTAGENA',13),
(13,'MOCOA',12),
(14,'SAN ANDRES',11);
								
INSERT INTO AEROPUERTO.AEROPUERTO (ID, NOMBRE, INDICADOR, CAPACIDAD, TIPO, IDCIUDAD) VALUES  
(1,'LAS ALAS DEL MUNDO','MAM',5,'INTERNACIONAL',1),
(2,'ATLANTA','WSH',5, 'INTERNACIONAL',2),
(3,'AIRLOTS','BST',5, 'INTERNACIONAL',3),
(4,'FALCON','SFR',5,'INTERNACIONAL' ,4),
(5,'RACE AIR','LAX',5,'INTERNACIONAL',5),
(6,'INTER LINES','LMA',5,'INTERNACIONAL',6),
(7,'PLANE 2','QTO',5,'INTERNACIONAL',7),
(8,'PLANE 1','STG',5,'INTERNACIONAL',8),
(9,'ACAPULCO','BGA',5, 'NACIONAL' ,9),
(10,'ADBAJI','BGT',5, 'INTERNACIONAL',10),
(11,'ADUBAJA','CCT',5, 'NACIONAL',11),
(12,'AALBORG','CTG',5,'NACIONAL' ,12),
(13,'IVATO AIRPORT','MCA',5,'NACIONAL' ,13),
(14,'BARI AIRPORT','SAD', 5,'NACIONAL',14),
(15,'MIFLY','JFK',6, 'INTERNACIONAL',1);

INSERT INTO AEROPUERTO.AEROLINEA (ID, NOMBRE, CANTAVIONES, CANTPERSONAL) VALUES 
(1,'AVIANCA',3,5),
(2,'SATENA',3,5),
(3,'LATAM',3,5);

INSERT INTO AEROPUERTO.DETALLEAEROLINEAS (ID, IDAEROLINEA, IDAEROPUERTO) VALUES 
(1,1,1),
(2,1,2),
(3,1,3),
(4,1,4),
(5,1,5),
(6,3,6),
(7,3,7),
(8,3,8),
(9,2,9),
(10,1,10),
(11,2,11),
(12,2,12),
(13,2,13),
(14,2,14),
(15,2,15);

INSERT INTO AEROPUERTO.PILOTO (ID, NOMBRES, APELLIDOS, NUMLICENCIA, TIPODOC, NUMDOC, SEXO, IDAEROLINEA) VALUES
(1, 'CÉSAR JAVIER', 'VALLEJO MURILLO', '1254718392', 'CC','1205718923','MASCULINO', 1),
(2, 'SANTIAGO', 'JIMÉNEZ RONDÓN', '2190462718', 'CC','1205758754', 'MASCULINO', 3),
(3, 'LEONARDO', 'GALINDO SERRANO', '3215637189', 'CC','1101718125', 'MASCULINO', 2),
(4, 'JULIÁN', 'ACOSTA VALLEJO', '5718294726', 'CC','1025768993', 'MASCULINO', 1),
(5, 'ALEXANDER', 'CABEZA VÁZQUES', '7812471629', 'CC','1105517913', 'MASCULINO', 3),
(6, 'PEDRO', 'CORREA AGUILAR', '8921784367', 'CC','1007718526', 'MASCULINO', 1),
(7, 'ALBERTO', 'ECHEVERRÍA CARRILLO', '3218947261', 'CC','1115918214', 'MASCULINO', 2),
(8, 'MARIANO', 'HERNÁNDEZ ICASA', '9814327189', 'CC','1002716924', 'MASCULINO', 1),
(9, 'LUCAS', 'JARAMILLO LAGOS', '2718349127', 'CC','1010517217', 'MASCULINO', 3),
(10, 'ROBERTO', 'MACHADO NOVOA', '6718392748', 'CC','215712921', 'MASCULINO', 2),
(11, 'NICOLÁS', 'OLMEDA PUENTE', '8201947839', 'CC','1006780200', 'MASCULINO', 3),
(12, 'JOHN', 'PERDOMO QUEVEDO', '7128910378', 'CC','1211517920', 'MASCULINO', 2),
(13, 'JAIR', 'RANGEL QUIRÓZ', '1832785471', 'CC', '1015214910','MASCULINO', 1),
(14, 'SAMUEL', 'RUIZ SOLÍS', '5813718279', 'CC','1108711928', 'MASCULINO', 1),
(15, 'DANIEL', 'TRUJILLO VARELA', '2918473627', 'CC','1005617819', 'MASCULINO', 2),
(16, 'HUMBERTO', 'LÓPEZ ZETINA', '6712467298', 'CC','1015406216', 'MASCULINO', 1),
(17, 'DAVID', 'RIVERA QUINTANA', '5918274891', 'CC','1815611228', 'MASCULINO', 3),
(18, 'CARLOS', 'QUIROGA LARA', '1563827198', 'CC','1005312922', 'MASCULINO', 1),
(19, 'ADRIANA', 'VILLAMIZAR VERA', '2184937281', 'CC','1006117921', 'FEMENINO', 2),
(20, 'YISS', 'RODRIGUEZ CACERES', '3174092178', 'CC','1065917960', 'FEMENINO', 1);

INSERT INTO AEROPUERTO.AUXILIAR (ID, NOMBRES, APELLIDOS, TELEFONO, TIPODOC, NUMDOC, EDAD, SEXO, IDAEROLINEA) VALUES
(1, 'JULIANA', 'ROMERO PEÑA', '3218574839', 'CC','1218574839', '27', 'FEMENINO', 1),
(2, 'ALEJANDRA', 'CARDOSO LIRA', '3197482391', 'CC','1008563732', '19', 'FEMENINO', 2),
(3, 'MÓNICA', 'CANTILLO RUEDA', '6318274', 'CC','1018524838', '30', 'FEMENINO', 1),
(4, 'EDILSA', 'JARAMILLO MONCADA', '6421786', 'CC','1001674237', '22', 'FEMENINO', 3),
(5, 'SONIA', 'GARZÓN VILLARREAL', '3172561728', 'CC','1002574927', '45', 'FEMENINO', 1),
(6, 'NORMA', 'ARBOLEDA BÁEZ', '6912783', 'CC', '28','1001574832', 'FEMENINO', 2),
(7, 'PRISCILA', 'VALENZUELA CÓTES', '6258172', 'CC','1011571838', '40', 'FEMENINO', 3),
(8, 'TATIANA', 'ESPARZA SOLANO', '3281372809', 'CC','1156584432', '23', 'FEMENINO', 1),
(9, 'MÓNICA', 'CANTILLO RUEDA', '6318274', 'CC','1000673831', '30', 'FEMENINO', 1),
(10, 'KAREN', 'NUÑEZ PEREA', '3217418928', 'CC','1009674829', '37', 'FEMENINO', 2),
(11, 'LISA', 'MONNTERREY BLANCO', '6289164', 'CC','1112543822', '28', 'FEMENINO', 3),
(12, 'CATALINA', 'GALVIS MONDRAGÓN', '6723901', 'CC','1017372125', '40', 'FEMENINO', 3),
(13, 'ZORAIDA', 'CACUA PABÓN', '3128947356', 'CC','1018234678', '42', 'FEMENINO', 2),
(14, 'ROSSELA', 'ESPINOZA FIGUEROA', '6418902', 'CC','1001235648', '30', 'FEMENINO', 2),
(15, 'ANGIE XIMENA', 'SANDOVAL PRADA', '3119031894', 'CC','1008673132', '22', 'FEMENINO', 2),
(16, 'SOFÍA', 'TOLOZA ARMIÑO', '6311374', 'CC','1018173236', '36', 'FEMENINO', 1),
(17, 'HANNA', 'CALDERÓN NAVARRO', '6317774', 'CC','1007689545', '25', 'FEMENINO', 2),
(18, 'VICTORIA', 'TARAZONA ACUÑA', '6333274', 'CC','1012504836', '42', 'FEMENINO', 3),
(19, 'MARIA ALEJANDRA', 'ANAYA SARMIENTO', '6312224', 'CC','218664212', '37', 'FEMENINO', 1),
(20, 'ROMARIO', 'GUALDRON HURTADO', '6318299', 'CC','1116273024', '22', 'MASCULINO', 2);

INSERT INTO AEROPUERTO.AVION (ID, MODELO, CAPACIDAD, PESO, IDAEROLINEA) VALUES 
('1', 'BOEING 747', '20', '130000', '1'),
('2', 'BOEING 747', '20', '130000', '2'),
('3', 'BOEING 747', '20', '130000', '3'),
('4', 'BOEING 777', '24', '150000', '1'),
('5', 'BOEING 777', '24', '150000', '2'),
('6', 'BOEING 777', '24', '150000', '3');

INSERT INTO AEROPUERTO.RUTA (ID, IDCORIGEN, IDCDESTINO) VALUES 
('1', '1', '2'),
('2', '1', '3'),
('3', '2', '4'),
('4', '2', '5'),
('5', '3', '6'),
('6', '3', '7'),
('7', '4', '8'),
('8', '4', '9'),
('9', '5', '10'),
('10', '5', '9'),
('11', '6', '1'),
('12', '6', '2'),
('13', '7', '4'),
('14', '7', '5'),
('15', '7', '1'),
('16', '8', '2'),
('17', '8', '1'),
('18', '9', '10'),
('19', '9', '3'),
('20', '10', '3');

INSERT INTO AEROPUERTO.HORARIO (ID, ABORDAJE, DESPEGUE, ATERRIZAJE) VALUES
('1','2021-01-22 18:50:0-07','2021-01-22 19:00:00-07','2021-01-22 19:20:00-07'),
('2','2021-02-02 9:50:0-07','2021-02-02 10:00:00-07','2021-02-02 10:10:00-07'),
('3','2021-03-12 11:50:0-07','2021-03-12 12:00:00-07','2021-03-12 12:10:00-07'),
('4','2021-02-22 15:50:0-07','2021-02-22 16:00:00-07','2021-02-22 16:10:00-07'),
('5','2021-03-26 13:50:0-07','2021-03-26 14:00:00-07','2021-03-26 14:10:00-07'),
('6','2020-06-11 18:50:0-07','2021-06-11 19:00:00-07','2021-06-11 19:10:00-07'),
('7','2020-03-21 18:50:0-07','2020-03-21 19:00:00-07','2020-03-21 19:10:00-07'),
('8','2021-08-22 15:50:0-07','2021-08-22 16:00:00-07','2021-08-22 16:10:00-07'),
('9','2021-12-03 18:50:0-07','2021-12-03 19:00:00-07','2021-12-03 19:10:00-07'),
('10','2021-12-26 17:50:0-07','2021-12-26 18:00:00-07','2021-12-26 19:10:00-07'),
('11','2021-01-22 19:50:0-07','2021-01-22 20:00:00-07','2021-01-22 20:10:00-07'),
('12','2021-02-02 9:50:0-07','2021-02-02 10:00:00-07','2021-02-02 10:50:00-07'),
('13','2021-03-12 10:50:0-07','2021-03-12 11:00:00-07','2021-03-12 12:10:00-07'),
('14','2021-02-22 14:50:0-07','2021-02-22 14:00:00-07','2021-02-22 16:10:00-07'),
('15','2021-03-26 11:50:0-07','2021-03-26 12:00:00-07','2021-03-26 14:10:00-07'),
('16','2020-06-11 16:50:0-07','2021-06-11 17:00:00-07','2021-06-11 19:10:00-07'),
('17','2020-03-21 14:50:0-07','2020-03-21 15:00:00-07','2020-03-21 19:10:00-07'),
('18','2021-08-22 13:50:0-07','2021-08-22 14:00:00-07','2021-08-22 16:10:00-07'),
('19','2021-12-03 12:50:0-07','2021-12-03 13:00:00-07','2021-12-03 19:10:00-07'),
('20','2021-12-26 8:50:0-07','2021-12-26 9:00:00-07','2021-12-26 19:10:00-07');

INSERT INTO AEROPUERTO.SILLA (CODIGO, NUMINTERNO, TIPO, IDAVION) VALUES
('1','A1','BUSINESS','1'),
('2','B1','BUSINESS','1'),
('3','C1','BUSINESS','1'),
('4','D1','BUSINESS','1'),
('5','A2','PREMIUM','1'),
('6','B2','PREMIUM','1'),
('7','C2','PREMIUM','1'),
('8','D2','PREMIUM','1'),
('9','A3','TURISTA','1'),
('10','B3','TURISTA','1'),
('11','C3','TURISTA','1'),
('12','D3','TURISTA','1'),
('13','A4','TURISTA','1'),
('14','B4','TURISTA','1'),
('15','C4','TURISTA','1'),
('16','D4','TURISTA','1'),
('17','A5','TURISTA','1'),
('18','B5','TURISTA','1'),
('19','C5','TURISTA','1'),
('20','D5','TURISTA','1'),

('21','A1','BUSINESS','2'),
('22','B1','BUSINESS','2'),
('23','C1','BUSINESS','2'),
('24','D1','BUSINESS','2'),
('25','A2','PREMIUM','2'),
('26','B2','PREMIUM','2'),
('27','C2','PREMIUM','2'),
('28','D2','PREMIUM','2'),
('29','A3','TURISTA','2'),
('30','B3','TURISTA','2'),
('31','C3','TURISTA','2'),
('32','D3','TURISTA','2'),
('33','A4','TURISTA','2'),
('34','B4','TURISTA','2'),
('35','C4','TURISTA','2'),
('36','D4','TURISTA','2'),
('37','A5','TURISTA','2'),
('38','B5','TURISTA','2'),
('39','C5','TURISTA','2'),
('40','D5','TURISTA','2'),

('41','A1','BUSINESS','3'),
('42','B1','BUSINESS','3'),
('43','C1','BUSINESS','3'),
('44','D1','BUSINESS','3'),
('45','A2','PREMIUM','3'),
('46','B2','PREMIUM','3'),
('47','C2','PREMIUM','3'),
('48','D2','PREMIUM','3'),
('49','A3','TURISTA','3'),
('50','B3','TURISTA','3'),
('51','C3','TURISTA','3'),
('52','D3','TURISTA','3'),
('53','A4','TURISTA','3'),
('54','B4','TURISTA','3'),
('55','C4','TURISTA','3'),
('56','D4','TURISTA','3'),
('57','A5','TURISTA','3'),
('58','B5','TURISTA','3'),
('59','C5','TURISTA','3'),
('60','D5','TURISTA','3'),

('61','A1','BUSINESS','4'),
('62','B1','BUSINESS','4'),
('63','C1','BUSINESS','4'),
('64','D1','BUSINESS','4'),
('65','A2','PREMIUM','4'),
('66','B2','PREMIUM','4'),
('67','C2','PREMIUM','4'),
('68','D2','PREMIUM','4'),
('69','A3','TURISTA','4'),
('70','B3','TURISTA','4'),
('71','C3','TURISTA','4'),
('72','D3','TURISTA','4'),
('73','A4','TURISTA','4'),
('74','B4','TURISTA','4'),
('75','C4','TURISTA','4'),
('76','D4','TURISTA','4'),
('77','A5','TURISTA','4'),
('78','B5','TURISTA','4'),
('79','C5','TURISTA','4'),
('80','D5','TURISTA','4'),
('81','A6','TURISTA','4'),
('82','B6','TURISTA','4'),
('83','C6','TURISTA','4'),
('84','D6','TURISTA','4'),

('85','A1','BUSINESS','5'),
('86','B1','BUSINESS','5'),
('87','C1','BUSINESS','5'),
('88','D1','BUSINESS','5'),
('89','A2','PREMIUM','5'),
('90','B2','PREMIUM','5'),
('91','C2','PREMIUM','5'),
('92','D2','PREMIUM','5'),
('93','A3','TURISTA','5'),
('94','B3','TURISTA','5'),
('95','C3','TURISTA','5'),
('96','D3','TURISTA','5'),
('97','A4','TURISTA','5'),
('98','B4','TURISTA','5'),
('99','C4','TURISTA','5'),
('100','D4','TURISTA','5'),
('101','A5','TURISTA','5'),
('102','B5','TURISTA','5'),
('103','C5','TURISTA','5'),
('104','D5','TURISTA','5'),
('105','A6','TURISTA','5'),
('106','B6','TURISTA','5'),
('107','C6','TURISTA','5'),
('108','D6','TURISTA','5'),

('109','A1','BUSINESS','6'),
('110','B1','BUSINESS','6'),
('111','C1','BUSINESS','6'),
('112','D1','BUSINESS','6'),
('113','A2','PREMIUM','6'),
('114','B2','PREMIUM','6'),
('115','C2','PREMIUM','6'),
('116','D2','PREMIUM','6'),
('117','A3','TURISTA','6'),
('118','B3','TURISTA','6'),
('119','C3','TURISTA','6'),
('120','D3','TURISTA','6'),
('121','A4','TURISTA','6'),
('122','B4','TURISTA','6'),
('123','C4','TURISTA','6'),
('124','D4','TURISTA','6'),
('125','A5','TURISTA','6'),
('126','B5','TURISTA','6'),
('127','C5','TURISTA','6'),
('128','D5','TURISTA','6'),
('129','A6','TURISTA','6'),
('130','B6','TURISTA','6'),
('131','C6','TURISTA','6'),
('132','D6','TURISTA','6');

INSERT INTO AEROPUERTO.PASAJERO (ID, NOMBRES, APELLIDOS, TELEFONO, TIPODOC, NUMDOC, EDAD, DIRECCION, SEXO) VALUES
(1, 'BRAYAN', 'DAZA SUÁREZ', '3123689456', 'CC','1005874567', '20', 'CRA 12 #23-21', 'MASCULINO'),
(2, 'FABIAN', 'LOPEZ MANTILLA', '3197235672', 'CC','1105882567', '18', 'CRA 17 #02-09', 'MASCULINO'),
(3, 'LUIS', 'CARRILLO BARRERA', '3110923178', 'CE','1013354588', '45', 'CRA 45 #11-02', 'MASCULINO'),
(4, 'PABLO', 'ZAPATA CRUZ', '3109723719', 'CC','1012025846', '30', 'CRA 1 #76-64', 'MASCULINO'),
(5, 'LUNA', 'CAPACHO SILVA', '3082371653', 'TI','1004155468', '15', 'CRA 30 #05-26', 'FEMENINO'),
(6, 'CAMILA', 'PORTILLA PÉREZ', '3031784567', 'CC','1002356478', '67', 'CRA 17 #21-34', 'FEMENINO'),
(7, 'JULIANA', 'GUERRERO FUENTES', '3198762156', 'CC','1115882567', '23', 'CRA 27 #56-49', 'FEMENINO'),
(8, 'ROCIO', 'TORRES SALDAÑO', '321093721', 'CE','235465487', '50', 'CRA 13 #01-48', 'FEMENINO'),
(9, 'JULIÁN', 'ALARCÓN CARDOSO', '3021784932', 'CC','1001545684', '29', 'CRA 50 #21-22', 'MASCULINO'),
(10, 'ANDREA', 'URREGO TARAZONA', '3281964523', 'TI','1021546789', '10', 'CRA 50 #46-68', 'FEMENINO'),
(11, 'ÓSCAR', 'HERRERA TOLOZA', '3163490127', 'TI','1105465215', '14', 'CRA 20 #87-23', 'MASCULINO'),
(12, 'CAMILO', 'DURÁN CÁRDENAS', '3902371896', 'CE','1023645878', '24', 'CRA 12 #58-10', 'MASCULINO'),
(13, 'MARINA', 'ZAPATA NIÑO', '31789214738', 'CE','1012548976', '45', 'CRA 45 #11-02', 'FEMENINO'),
(14, 'TOMÁS', 'FLÓREZ MARTÍNEZ', '3032189463', 'CC','1002584667', '37', 'CRA 35 #03-27', 'MASCULINO'),
(15, 'DIANA', 'MORENO OJEDA', '320194639', 'CC','956423187', '59', 'CRA 45 #09-78', 'FEMENINO'),
(16, 'ARTURO', 'BUENDÍA ARCHILA', '3257319027', 'TI','1056886565', '17', 'CRA 32 #24-53', 'MASCULINO'),
(17, 'EMMA', 'CABRERA RÍOS', '6743892', 'TI','1105987565', '16', 'CRA 29 #36-10', 'FEMENINO'),
(18, 'WILMER', 'VARGAS JAIMES', '6321879', 'CE','110058562', '60', 'CRA 98 #15-15', 'MASCULINO'),
(19, 'PAOLA', 'ROJAS GARCÍA', '6321847', 'CC','1020588462', '24', 'CRA 16 #36-63', 'FEMENINO'),
(20, 'ZAIRA', 'RODRÍGUEZ GONZALES', '6891273', 'CC','1105879546', '39', 'CRA 67 #77-18', 'FEMENINO');

INSERT INTO AEROPUERTO.MILLASPASAJERO (ID, TOTALMILLAS, IDPASAJERO, IDAEROLINEA) VALUES
('1', '10', '1', '1'),
('2', '1', '1', '1'),
('3', '12', '1', '1'),
('4', '9', '2', '1'),
('5', '8', '2', '1'),
('6', '2', '3', '1'),
('7', '10', '4', '1'),
('8', '6', '4', '1'),
('9', '7', '5', '1'),
('10', '5', '5', '1'),
('11', '6', '5', '1'),
('12', '5', '6', '1'),
('13', '5', '6', '1'),
('14', '4', '7', '1'),
('15', '4', '7', '1'),
('16', '10', '8', '1'),
('17', '10', '9', '1'),
('18', '10', '9', '1'),
('19', '18', '9', '1'),
('20', '20', '10', '1'),
('21', '10', '10', '1'),
('22', '5', '11', '1'),
('23', '10', '11', '1'),
('24', '6', '12', '1'),
('25', '2', '12', '1'),
('26', '10', '13', '1'),
('27', '4', '13', '1'),
('28', '10', '14', '1'),
('29', '10', '15', '1'),
('30', '21', '15', '1'),
('31', '10', '15', '1'),
('32', '30', '16', '1'),
('33', '12', '17', '1'),
('34', '10', '18', '1'),
('35', '11', '18', '1'),
('36', '8', '19', '1');

INSERT INTO AEROPUERTO.VUELO (ID, IDAVION, IDPILOTO, IDCOPILOTO, IDRUTA, IDHORARIO) VALUES
(1, 5, 15, 10, 3, 1),
(2, 6, 12, 20, 9, 7),
(3, 2, 1, 17, 5, 9),
(4, 1, 6, 19, 8, 2),
(5, 3, 16, 2, 4, 5),
(6, 4, 11, 9, 7, 3),
(7, 2, 13, 14, 1, 4),
(8, 5, 3, 8, 10, 6),
(9, 1, 7, 12, 2, 10),
(10, 6, 2, 1, 6, 8),
(11, 3, 10, 15, 8, 10),
(12, 1, 20, 3, 9, 1),
(13, 5, 18, 4, 1, 4),
(14, 3, 16, 10, 10, 8),
(15, 2, 4, 5, 7, 2),
(16, 4, 9, 6, 3, 7),
(17, 1, 19, 16, 6, 5),
(18, 6, 8, 7, 2, 9),
(19, 5, 5, 18, 6, 3),
(20, 2, 14, 11, 4, 6),
(21, 3, 10, 15, 11, 20),
(22, 1, 20, 3, 12, 19),
(23, 5, 18, 4, 13, 18),
(24, 3, 16, 10, 14, 17),
(25, 2, 4, 5, 15, 16),
(26, 4, 9, 6, 16, 15),
(27, 1, 19, 16, 17, 14),
(28, 6, 8, 7, 18, 13),
(29, 5, 5, 18, 19, 12),
(30, 2, 14, 11, 19, 11),
(31, 5, 15, 10, 20, 19),
(32, 6, 12, 20, 11, 17),
(33, 2, 1, 17, 12, 12),
(34, 1, 6, 19, 13, 5),
(35, 3, 16, 2, 14, 15),
(36, 4, 11, 9, 17, 20),
(37, 2, 13, 14, 15, 4),
(38, 5, 3, 8, 16, 6),
(39, 1, 6, 12, 11, 7),
(40, 6, 2, 1, 12, 5);

INSERT INTO AEROPUERTO.TIQUETE (ID, FECHAHORA, VALOR, TIPO, CHECKED, IDPASAJERO, IDVUELO, IDSILLA) VALUES
('1','2020-03-13 00:00:0-07','100000','BUSINESS', TRUE, '1', '1', '1'),
('2','2020-03-13 00:00:0-07','90000','PREMIUM', TRUE, '2', '1', '5'),
('3','2020-03-13 00:00:0-07','90000','PREMIUM', FALSE, '3', '1', '6'),
('4','2020-03-13 00:00:0-07','100000','BUSINESS', TRUE, '4', '2', '21'),
('5','2020-03-13 00:00:0-07','100000','BUSINESS', FALSE, '5', '2', '22'),
('6','2020-03-13 00:00:0-07','80000','TURISTA', TRUE, '6', '3', '29'),
('7','2020-03-13 00:00:0-07','100000','BUSINESS', TRUE, '7', '4', '109'),
('8','2020-03-13 00:00:0-07','80000','TURISTA', TRUE, '8', '4', '107'),
('9','2020-03-13 00:00:0-07','100000','BUSINESS', TRUE, '9', '5', '110'),
('10','2020-03-26 18:50:0-07','80000','TURISTA', FALSE, '10', '5', '106'),
('11','2020-03-26 18:50:0-07','80000','TURISTA', FALSE, '11', '6', '105'),
('12','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '12', '6', '102'),
('13','2020-03-26 18:50:0-07','100000','BUSINESS', TRUE, '13', '7', '116'),
('14','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '14', '7', '132'),
('15','2020-03-26 18:50:0-07','80000','TURISTA', FALSE, '15', '8', '130'),
('16','2020-03-26 18:50:0-07','90000','PREMIUM', TRUE, '16', '8', '114'),
('17','2020-03-26 18:50:0-07','100000','BUSINESS', FALSE, '17', '9', '112'),
('18','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '18', '9', '126'),
('19','2020-03-26 18:50:0-07','100000','BUSINESS', FALSE, '19', '10', '61'),
('20','2020-03-26 18:50:0-07','90000','PREMIUM', FALSE, '20', '10', '67'),
('21','2020-03-26 18:50:0-07','100000','BUSINESS', TRUE, '20', '1', '1'),
('22','2020-03-26 18:50:0-07','90000','PREMIUM', TRUE, '19', '1', '5'),
('23','2020-03-26 18:50:0-07','90000','PREMIUM', FALSE, '18', '1', '6'),
('24','2020-03-26 18:50:0-07','100000','BUSINESS', TRUE, '17', '2', '21'),
('25','2020-03-26 18:50:0-07','100000','BUSINESS', FALSE, '16', '2', '22'),
('26','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '15', '3', '29'),
('27','2020-03-26 18:50:0-07','100000','BUSINESS', TRUE, '14', '4', '109'),
('28','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '13', '4', '107'),
('29','2020-03-26 18:50:0-07','100000','BUSINESS', TRUE, '12', '5', '110'),
('30','2020-03-26 18:50:0-07','80000','TURISTA', FALSE, '11', '5', '106'),
('31','2020-03-26 18:50:0-07','80000','TURISTA', FALSE, '10', '6', '105'),
('32','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '9', '6', '102'),
('33','2020-03-26 18:50:0-07','100000','BUSINESS', TRUE, '8', '7', '116'),
('34','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '7', '7', '132'),
('35','2020-03-26 18:50:0-07','80000','TURISTA', FALSE, '6', '8', '130'),
('36','2020-03-26 18:50:0-07','90000','PREMIUM', TRUE, '5', '8', '114'),
('37','2020-03-26 18:50:0-07','100000','BUSINESS', FALSE, '4', '9', '112'),
('38','2020-03-26 18:50:0-07','80000','TURISTA', TRUE, '3', '9', '126'),
('39','2020-03-26 18:50:0-07','100000','BUSINESS', FALSE, '2', '10', '61'),
('40','2020-03-26 18:50:0-07','90000','PREMIUM', FALSE, '1', '10', '67');

INSERT INTO AEROPUERTO.AUXILIARESVUELO VALUES
(1, 1, 20),
(2, 2, 5),
(3, 3, 15),
(4, 4, 11),
(5, 5, 19),
(6, 6, 10),
(7, 7, 13),
(8, 8, 9),
(9, 9, 3),
(10, 10, 17),
(11, 11, 4),
(12, 12, 14),
(13, 13, 6),
(14, 14, 1),
(15, 15, 8),
(16, 16, 2),
(17, 17, 7),
(18, 18, 12),
(19, 19, 16),
(20, 20, 18),
(21, 1, 5),
(22, 2,15),
(23, 3, 11),
(24, 4, 19),
(25, 5, 10),
(26, 6, 9),
(27, 7, 10),
(28, 8, 3),
(29, 9, 17),
(30, 10, 4),
(31, 11, 14),
(32, 12, 6),
(33, 13, 1),
(34, 14, 8),
(35, 15, 2),
(36, 16, 7),
(37, 17, 12),
(38, 18, 16),
(39, 19, 18),
(40, 20, 20);

-- YESID ROMARIO GUALDRON HURTADO, 2190052, B1 --

--1) valor 2.5  inserte una cerveza de marca hellbeer  de 500 ml . Con un costo  $ 38,00 
INSERT INTO HOTELBD.MARCA VALUES (51, 'Hellbeer');
INSERT INTO HOTELBD.TIPOMARCA VALUES (51, 'Hellbeer 350 ml', 38, 51, 777);
select * from HOTELBD.TIPOMARCA;


/*2) valor 2.5  cree otro minibar en la playa el cual solo ofrece cerveza las marcas que 
corresponden a "Fresca Piña 350 ml" y " hellbeer  de 500 ml "*/
INSERT INTO HOTELBD.MINIBAR VALUES (2,'MiniTwo','5653102');
INSERT INTO HOTELBD.BEBIDAS VALUES (51,43,2);
INSERT INTO HOTELBD.BEBIDAS VALUES (52,51,2);
select * from HOTELBD.BEBIDAS B
where B.IDMINIBAR=2;

/*3) valor 2.5 en la tabla hotel están las relaciones del bar y restaurante principales 
inserte los bares en la tabla hotelBar y miniRestaurante en la tabla Hotelrestaurante*/
INSERT INTO HOTELBD.HOTELBAR VALUES (1, 1, 1);
INSERT INTO HOTELBD.HOTELBAR VALUES (2, 1, 2);
INSERT INTO HOTELBD.HOTELRESTAURANTE VALUES (1, 1, 255);
SELECT * FROM HOTELBD.HOTELRESTAURANTE;
SELECT * FROM HOTELBD.HOTELBAR;

/*4) valor 2.5 Actualice el precio de los las bebidas  incrementándolos en un 4%. pero que 
contenga una a en su nombre; */
UPDATE HOTELBD.TIPOMARCA SET PRECIO = PRECIO*1.04
WHERE UPPER(TIPOMARCA.NOMBRE) LIKE '%A%';
SELECT * FROM HOTELBD.TIPOMARCA
WHERE UPPER(TIPOMARCA.NOMBRE) LIKE '%A%';

/*5) valor 2.5 un select de los empleados de edades entre 45 20 y que el cargo contenga  una e,
o en el nombre en la cual me muestres el nombre, documento, turno, tipo de empleado y salario*/
SELECT E.NOMBRE, E.EDAD, E.TARJETAIDENTIDAD, E.TURNO, T.CARGO, T.SALARIO 
FROM HOTELBD.EMPLEADO E, HOTELBD.TIPOEMPLEADO T
WHERE 
	E.EDAD::INTEGER BETWEEN 20 AND 45
	AND (UPPER(T.CARGO) LIKE '%E%' OR UPPER(E.NOMBRE) LIKE '%E%')
	AND E.IDTIPOEMPLEADO = T.ID

--6 )valor 2.5 cuanto es el costo de la nomina total del hotel .por tipo empleado 
SELECT T.CARGO, SUM(T.SALARIO) AS NOMINATOTAL 
FROM HOTELBD.EMPLEADO E, HOTELBD.TIPOEMPLEADO T
WHERE
	E.IDTIPOEMPLEADO = T.ID
GROUP BY T.CARGO

/*7)valor 2.5  Crea una vista que devuelva los servicios  por bar de bebidas cuyo precio supere
los 22.5 ordenados por su código descendiente y el bar ascendente donde se consigue. */
SELECT MB.NOMBRE, TM.ID, TM.NOMBRE AS BEBIDA
FROM HOTELBD.BEBIDAS B, HOTELBD.MINIBAR MB, HOTELBD.TIPOMARCA TM
WHERE
	B.IDMINIBAR = MB.ID
	AND B.IDMARCA = TM.IDMARCA
	AND TM.PRECIO > 22.5::MONEY
ORDER BY MB.NOMBRE ASC, B.ID DESC

/*8)valor 2.5 Cree una consulta que devuelva las habitaciones con estancia reservadas 
entre los días 1 de agosto de 2016 y el  25 de diciembre del 2016*/
SELECT H.NUMEROHABITACION, E.FECHAENTRADA, E.FECHASALIDA 
FROM HOTELBD.ESTANCIA E, HOTELBD.CLIENTEHABITACION CH, HOTELBD.HABITACION H
WHERE
	E.IDCLIENTE = CH.IDCLIENTE
	AND CH.IDHABITACION = H.ID
	AND E.FECHAENTRADA >= '2016-08-1'
	AND E.FECHASALIDA <= '2016-12-25'

/*9)valor 2.5 Cree una consulta que devuelva los días que fueron ocupados 
por tipo de habitación en el hotel*/
SELECT TH.TIPO AS TIPOHABITACION, SUM(E.FECHASALIDA-E.FECHAENTRADA) as DIASOCUPADOS
FROM HOTELBD.ESTANCIA E, HOTELBD.CLIENTEHABITACION CH, HOTELBD.TIPOHABITACION TH, HOTELBD.HABITACION H
WHERE
	E.IDCLIENTE = CH.IDCLIENTE
	AND H.IDTIPOHABITACION = TH.ID
	AND CH.IDHABITACION = H.ID
GROUP BY TH.ID

/*10 )valor 2.5  ingrese nuevas estancias a las mismas habitaciones de los clientes  
fueron atendidos por empleados los cuales tengan edades de 25 a 30 años y contengan una a
en el nombre, insertelos  con estancias de 5  días en habitaciones aleatorias*/

/* 
SELECT H.ID AS IDHABITACION, C.ID AS IDCLIENTE 
FROM HOTELBD.CLIENTE C, HOTELBD.EMPLEADO E, HOTELBD.HABITACION H, HOTELBD.CLIENTEHABITACION CH
WHERE 
	C.IDEMPLEADO=E.ID
	AND CH.IDCLIENTE=C.ID
	AND CH.IDHABITACION=H.ID
	AND E.EDAD::INTEGER BETWEEN 25 AND 30
	AND UPPER (E.NOMBRE) LIKE '%A%'
*/

INSERT INTO HOTELBD.ESTANCIA VALUES 
	(51, TO_DATE('22/03/2016','DD/MM/YYYY'), TO_DATE('25/03/2016','DD/MM/YYYY'),101, 2),
	(52, TO_DATE('15/08/2020','DD/MM/YYYY'), TO_DATE('20/08/2020','DD/MM/YYYY'),202, 21),
	(53, TO_DATE('02/07/2018','DD/MM/YYYY'), TO_DATE('02/12/2018','DD/MM/YYYY'),202, 23),
	(54, TO_DATE('05/04/2019','DD/MM/YYYY'), TO_DATE('10/04/2019','DD/MM/YYYY'),303, 43),
	(55, TO_DATE('14/01/2021','DD/MM/YYYY'), TO_DATE('19/01/2021','DD/MM/YYYY'),101, 50);

INSERT INTO HOTELBD.CLIENTEHABITACION VALUES 
	(51,2,2), (52,21,21), (53,23,23), (54,43,43), (55,50,50)

	
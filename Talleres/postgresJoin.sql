/*1.Una consulta donde nos muestre los film de todos los actores y que
tenga nombre, apellido del actor, titulo del film, descripción y año de
lanzamiento ordenada por nombre , apellido de actor y el año de
lanzamiento.*/

select a.nombre, a.apellido, f.titulo, f.descripcion, f.lanzamientoano
from videotienda.actor a 
inner join videotienda.filmactor fa
on a.id=fa.idactor 
inner join  videotienda.film f
on f.id=fa.idfilm
order by a.nombre, a.apellido, f.lanzamientoano

/*2.Consulta que me muestre lo siguientes campos identificación del
cliente, nombre del cliente, apellido del cliente, 
nombre del personal, apellido del personal, monto y fecha de
pago, deben salir todos los clientes aplicar inner Join.*/

Select c.id, c.nombre, c.apellido, s.nombre as npersonal, s.apellido as apersonal, p.cantidad, p.fechapago
from videotienda.cliente c
inner join  videotienda.pago p 
on p.idcliente=c.id
inner join videotienda.staff s
on p.idstaff=s.id 


/*3. Consulta que me muestre los id del film , titulo y el numero de inventario
si lo tiene o no , aplicar Left Join*/

select f.id as idfilm, f.titulo, i.id as idinvent
from videotienda.film f
left join videotienda.inventario i
on f.id=i.idfilm


/*4.Realizar la siguiente creación e inserción de los registros del archivo reviews*/

CREATE TABLE videotienda.filmreviews(
   id SERIAL PRIMARY KEY,
   idfilm INT,
   review VARCHAR(255) NOT NULL	
);

INSERT INTO videotienda.filmreviews(idfilm, review)
VALUES(1, 'Excelente'),
      (1, 'Increible'),
      (2, 'Cool'),
      (NULL, 'hermosa'),
	  (265,'Excelente'),
(199,'Increible'),
(4,'Cool'),
(254,'hermosa'),
(218,'Excelente'),
(109,'Increible'),
(275,'Cool'),
(443,'hermosa'),
(150,'Excelente'),
(558,'Increible'),
(617,'Cool'),
(574,'hermosa'),
(937,'Excelente'),
(733,'Increible'),
(446,'Cool'),
(176,'hermosa'),
(894,'Excelente'),
(603,'Increible'),
(173,'Cool'),
(444,'hermosa'),
(546,'Excelente'),
(411,'Increible'),
(765,'Cool'),
(383,'hermosa'),
(95,'Excelente'),
(838,'Increible'),
(84,'Cool'),
(523,'hermosa'),
(184,'Excelente'),
(237,'Increible'),
(779,'Cool'),
(984,'hermosa'),
(432,'Excelente'),
(645,'Increible'),
(674,'Cool'),
(259,'hermosa'),
(778,'Excelente'),
(743,'Increible'),
(905,'Cool'),
(48,'hermosa'),
(471,'Excelente'),
(964,'Increible'),
(883,'Cool'),
(91,'hermosa'),
(441,'Excelente'),
(255,'Increible'),
(108,'Cool'),
(962,'hermosa'),
(884,'Excelente'),
(293,'Increible'),
(90,'Cool'),
(469,'hermosa'),
(988,'Excelente'),
(297,'Increible'),
(84,'Cool'),
(645,'hermosa'),
(203,'Excelente'),
(532,'Increible'),
(580,'Cool'),
(538,'hermosa'),
(590,'Excelente'),
(213,'Increible'),
(930,'Cool'),
(964,'hermosa'),
(730,'Excelente'),
(858,'Increible'),
(557,'Cool'),
(719,'hermosa'),
(898,'Excelente'),
(749,'Increible'),
(611,'Cool'),
(461,'hermosa'),
(674,'Excelente'),
(581,'Increible'),
(364,'Cool'),
(671,'hermosa'),
(70,'Excelente'),
(325,'Increible'),
(828,'Cool'),
(472,'hermosa'),
(348,'Excelente'),
(101,'Increible'),
(63,'Cool'),
(482,'hermosa'),
(367,'Excelente'),
(651,'Increible'),
(395,'Cool'),
(258,'hermosa'),
(81,'Excelente'),
(168,'Increible'),
(889,'Cool'),
(55,'hermosa'),
(387,'Excelente'),
(836,'Increible'),
(785,'Cool'),
(361,'hermosa'),
(51,'Excelente'),
(428,'Increible'),
(867,'Cool'),
(230,'hermosa'),
(492,'Excelente'),
(223,'Increible'),
(960,'Cool'),
(272,'hermosa'),
(661,'Excelente'),
(891,'Increible'),
(555,'Cool'),
(667,'hermosa'),
(325,'Excelente'),
(420,'Increible'),
(126,'Cool'),
(991,'hermosa'),
(81,'Excelente'),
(846,'Increible'),
(542,'Cool'),
(717,'hermosa'),
(61,'Excelente'),
(582,'Increible'),
(898,'Cool'),
(197,'hermosa'),
(280,'Excelente'),
(740,'Increible'),
(722,'Cool'),
(555,'hermosa'),
(392,'Excelente'),
(311,'Increible'),
(918,'Cool'),
(568,'hermosa'),
(NULL, 'No se'),
(NULL, 'mala'),
(NULL, 'larga'),
(NULL, 'pesima'),
(NULL, 'ni la vi'),
(NULL, 'que es'),
(NULL, 'Cool');


/*5. Realice una consulta que muestre todos los reviews con su película
asociada si no tienen una mostrarlo también usar Right Join.*/

select r.idfilm, r.review
from videotienda.film f
right join videotienda.filmreviews r
on r.idfilm=f.id

/*6.Realice un Full Outer Join con las tablas que quiera*/

select f.id, f.titulo, l.nombre
from videotienda.film f
full outer join videotienda.lenguaje l
on f.idlenguaje=l.id
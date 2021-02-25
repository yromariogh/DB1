/*1.Inserte un escritor anónimo en la base de datos.*/

insert into pedido.escritor(id, nombre, apellido,  seudonimo, idgeneroliterario, email) 
values('0', 'Anonimo', 'Anonimo', 'Anm', '2', 'anonimo@anonymous.com');

/*2.Inserte en escritor a Pepito perez con correo pepito@pepe.com y no lo
referencie a ninguna persona.*/

insert into pedido.escritor(id, nombre, apellido,  seudonimo, idgeneroliterario, email) 
values('2000', 'Pepito', 'Perez', 'Pp', '3', 'pepito@pepe.com');

/*3.Inserte a Roberto perez con correo Roberto@robert.com y a Claudia
perez con correo Claudia@clau.com y no los referencia a ninguna
persona y a.*/

insert into pedido.escritor(id, nombre, apellido, seudonimo, idgeneroliterario, email) 
values('2001', 'Roberto', 'Perez',  'Rp', '4', 'roberto@robert.com'),
      ('2002', 'Claudia', 'Perez',  'Cp', '5', 'claudia@clau.com');
	
/*4.Inserte los escritores de los departamentos que tengan menos de 5
personas en la tabla personas, complete los datos de escritor.*/

INSERT into pedido.escritor(id, nombre, apellido, idpersona, seudonimo, idgeneroliterario, email) 
Select p.id, p.nombre, p.apellido, p.id, lower((translate(p.nombre, ' ', '')))||lower(p.apellido), '7',  lower ((translate(p.nombre, ' ', '.'))||'@'||p.apellido||'.com') 
from pedido.persona p, academico.departamento d, academico.ciudad c
Where p.idciudad=c.id
and c.iddepartamento=d.id
and d.id in (Select d.id
from academico.departamento d, pedido.persona p, academico.ciudad c
where p.idciudad=c.id
and c.iddepartamento=d.id
group by d.id
having count (*)<5
)

/*5.Inserte los escritores del valle del Cauca.*/

INSERT into pedido.escritor(id, nombre, apellido, idpersona, seudonimo, idgeneroliterario, email) 
Select p.id, p.nombre, p.apellido, p.id, lower((translate(p.nombre, ' ', '')))||lower(p.apellido), trunc(random()*10+1),  lower ((translate(p.nombre, ' ', '.'))||'@'||p.apellido||'.com') 
from pedido.persona p, academico.departamento d, academico.ciudad c
Where p.idciudad=c.id
and c.iddepartamento=d.id
and d.id in (Select d.id
from academico.departamento d
where 
d.nombre='Valle'
)

/*6.Inserte los temas literarios según tabla adjunta en tema */ 

insert into libreria.tema values(1, 'Tema', NULL);
insert into libreria.tema values(2,'Arte ',1);				
insert into libreria.tema values(3,'Autoayuda y Espiritualidad ',1);				
insert into libreria.tema values(4,'Ciencias Humanas ',1);				
insert into libreria.tema values(5,'Ciencias Pol¡ticas y Sociales ',1);				
insert into libreria.tema values(6,'Ciencias ',1);				
insert into libreria.tema values(7,'Cocina ',1);				
insert into libreria.tema values(8,'C¢mics manga infantil y juvenil ',1);				
insert into libreria.tema values(9,'C¢mics ',1);				
insert into libreria.tema values(10,'Deportes y juegos ',1);				
insert into libreria.tema values(11,'Derecho ',1);				
insert into libreria.tema values(12,'Econom¡a ',1);				
insert into libreria.tema values(13,'Empresa ',1);				
insert into libreria.tema values(14,'Filolog¡a ',1);				
insert into libreria.tema values(15,'Fotograf¡a ',1);				
insert into libreria.tema values(16,'Gu¡as de viaje ',1);				
insert into libreria.tema values(17,'Historia ',1);				
insert into libreria.tema values(18,'Idiomas ',1);				
insert into libreria.tema values(19,'Infantil ',1);				
insert into libreria.tema values(20,'Inform tica ',1);				
insert into libreria.tema values(21,'Ingenier¡a ',1);				
insert into libreria.tema values(22,'Juvenil ',1);				
insert into libreria.tema values(23,'Libros de Texto y Formaci¢n ',1);				
insert into libreria.tema values(24,'Libros latinoamericanos ',1);				
insert into libreria.tema values(25,'Literatura ',1);				
insert into libreria.tema values(26,'Manualidades ',1);				
insert into libreria.tema values(27,'Medicina ',1);				
insert into libreria.tema values(28,'M£sica ',1);				
insert into libreria.tema values(29,'Narrativa hist¢rica ',1);				
insert into libreria.tema values(30,'Novela contempor nea ',1);				
insert into libreria.tema values(31,'Novela negra ',1);				
insert into libreria.tema values(32,'Oposiciones ',1);				
insert into libreria.tema values(33,'Psicolog¡a y Pedagog¡a ',1);				
insert into libreria.tema values(34,'Rom ntica y er¢tica ',1);				
insert into libreria.tema values(35,'Salud y Dietas ',1);				



/*7.Inserte los libros y asignale un escritor aleatorio libro*/

insert into libreria.libro values(2,'Libro de Job (de la Biblia) ');
insert into libreria.libro values(1,'Poema de Gilgamesh ');
insert into libreria.libro values(3,'Las mil y una noches ');
insert into libreria.libro values(4,'Saga de Nj l ');
insert into libreria.libro values(5,'Todo se desmorona ');
insert into libreria.libro values(6,'Cuentos infantiles ');
insert into libreria.libro values(7,'Divina Comedia ');
insert into libreria.libro values(8,'Orgullo y prejuicio ');
insert into libreria.libro values(9,'Pap  Goriot ');
insert into libreria.libro values(10,'Molloy, Malone muere, El Innombrable, una trilog¡a ');
insert into libreria.libro values(11,'Decamer¢n ');
insert into libreria.libro values(12,'Ficciones ');
insert into libreria.libro values(13,'Cumbres Borrascosas ');
insert into libreria.libro values(14,'El extranjero ');
insert into libreria.libro values(15,'Poemas ');
insert into libreria.libro values(16,'Viaje al fin de la noche ');
insert into libreria.libro values(17,'Don Quijote de la Mancha ');
insert into libreria.libro values(18,'Los cuentos de Canterbury ');
insert into libreria.libro values(19,'Relatos cortos ');
insert into libreria.libro values(20,'Nostromo ');
insert into libreria.libro values(21,'Grandes Esperanzas ');
insert into libreria.libro values(22,'Jacques el fatalista ');
insert into libreria.libro values(23,'Berlin Alexanderplatz ');
insert into libreria.libro values(24,'Crimen y castigo ');
insert into libreria.libro values(25,'El idiota ');
insert into libreria.libro values(26,'Los endemoniados ');
insert into libreria.libro values(27,'Los hermanos Karamazov ');
insert into libreria.libro values(28,'Middlemarch ');
insert into libreria.libro values(29,'El hombre invisible ');
insert into libreria.libro values(30,'Medea ');
insert into libreria.libro values(31,'­Absalom, Absalom! ');
insert into libreria.libro values(32,'El ruido y la furia ');
insert into libreria.libro values(33,'Madame Bovary ');
insert into libreria.libro values(34,'La educaci¢n sentimental ');
insert into libreria.libro values(35,'Romancero gitano ');
insert into libreria.libro values(36,'Cien a¤os de soledad ');
insert into libreria.libro values(37,'El amor en los tiempos del c¢lera ');
insert into libreria.libro values(38,'Fausto ');
insert into libreria.libro values(39,'Almas muertas ');
insert into libreria.libro values(40,'El tambor de hojalata ');
insert into libreria.libro values(41,'Gran Sert¢n: Veredas ');
insert into libreria.libro values(42,'Hambre ');
insert into libreria.libro values(43,'El viejo y el mar ');
insert into libreria.libro values(44,'Il¡ada ');
insert into libreria.libro values(45,'Odisea ');
insert into libreria.libro values(46,'Casa de mu¤ecas ');
insert into libreria.libro values(47,'Ulises ');
insert into libreria.libro values(48,'Relatos cortos ');
insert into libreria.libro values(49,'El proceso ');
insert into libreria.libro values(50,'El castillo ');
insert into libreria.libro values(51,'Shakuntala ');
insert into libreria.libro values(52,'El sonido de la monta¤a ');
insert into libreria.libro values(53,'Zorba, el griego ');
insert into libreria.libro values(54,'Hijos y amantes ');
insert into libreria.libro values(55,'Gente independiente ');
insert into libreria.libro values(56,'Poemas ');
insert into libreria.libro values(57,'El cuaderno dorado ');
insert into libreria.libro values(58,'Pippi Calzaslargas ');
insert into libreria.libro values(59,'Diario de un loco ');
insert into libreria.libro values(60,'Hijos de nuestro barrio ');
insert into libreria.libro values(61,'Los Buddenbrook ');
insert into libreria.libro values(62,'La monta¤a m gica ');
insert into libreria.libro values(63,'Moby-Dick ');
insert into libreria.libro values(64,'Ensayos ');
insert into libreria.libro values(65,'La historia ');
insert into libreria.libro values(66,'Beloved ');
insert into libreria.libro values(67,'Genji Monogatari ');
insert into libreria.libro values(68,'El hombre sin atributos ');
insert into libreria.libro values(69,'Lolita ');
insert into libreria.libro values(70,'1984');
insert into libreria.libro values(71,'Las metamorfosis ');
insert into libreria.libro values(72,'Libro del desasosiego ');
insert into libreria.libro values(73,'Cuentos ');
insert into libreria.libro values(74,'En busca del tiempo perdido ');
insert into libreria.libro values(75,'Gargant£a y Pantagruel ');
insert into libreria.libro values(76,'Pedro P ramo ');
insert into libreria.libro values(77,'Masnavi ');
insert into libreria.libro values(78,'Hijos de la medianoche ');
insert into libreria.libro values(79,'Bostan ');
insert into libreria.libro values(80,'Tiempo de migrar al norte ');
insert into libreria.libro values(81,'Ensayo sobre la ceguera ');
insert into libreria.libro values(82,'Hamlet ');
insert into libreria.libro values(83,'El rey Lear ');
insert into libreria.libro values(84,'Otelo ');
insert into libreria.libro values(85,'Edipo rey ');
insert into libreria.libro values(86,'Rojo y negro ');
insert into libreria.libro values(87,'Vida y opiniones del caballero Tristram Shandy ');
insert into libreria.libro values(88,'La conciencia de Zeno ');
insert into libreria.libro values(89,'Los viajes de Gulliver ');
insert into libreria.libro values(90,'Guerra y paz ');
insert into libreria.libro values(91,'Ana Karenina ');
insert into libreria.libro values(92,'La muerte de Iv n Ilich ');
insert into libreria.libro values(93,'Las aventuras de Huckleberry Finn ');
insert into libreria.libro values(94,'Ramayana ');
insert into libreria.libro values(95,'Eneida ');
insert into libreria.libro values(96,'Mahabh rata ');
insert into libreria.libro values(97,'Hojas de hierba ');
insert into libreria.libro values(98,'La se¤ora Dalloway ');
insert into libreria.libro values(99,'Al faro ');
insert into libreria.libro values(100,'Memorias de Adriano ');

update libreria.libro l
set idautor=(
select e.id
from pedido.escritor e, libreria.libro l2
where l.id =l2.id
order by random() LIMIT 1
)

/*8.Actualice de forma aleatoria los idpersona en escritor;*/

update pedido.escritor
set idpersona=(floor(random()*1684+1)::int)

/*9.Asigne los idpersona que corresponda a cada escritor;*/

update pedido.escritor
set idpersona=p.id from pedido.persona p
where escritor.id=p.id 

--Para hacer Null a los idpersona de los escritores agregados al principio, que no de deben estar referenciados a ninguna persona--
update pedido.escritor
set idpersona=NULL 
where id in (0, 2000, 2001, 2002)

/*10.Borre los registros que no tengan una persona asignada menos
anonimo.*/

delete  from pedido.escritor e
where e.idpersona is NULL and not (id=0)   

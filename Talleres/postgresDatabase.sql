CREATE SCHEMA taller5;

CREATE TABLE taller5.usuario(
cedula int NOT NULL,
nombres char(30) NULL,
apellidos char(30) NULL,
telefono int NULL,
direccion char(30) NULL,
CONSTRAINT PK_cedula PRIMARY KEY (cedula));

CREATE TABLE taller5.cita(
idCita int NOT NULL,
fecha date NOT NULL,
duracion int NULL,
idTurno int NULL,
idPaciente int NULL,
CONSTRAINT PK_idCita PRIMARY KEY (idCita) );

CREATE TABLE taller5.detalleTurno(
idDetalleTurno int NOT NULL,
fecha date NOT NULL,
duracion int NOT NULL,
idMedico int NOT NULL,
idTurno int NOT NULL,
CONSTRAINT PK_idDetalleTurno PRIMARY KEY (idDetalleTurno) );

CREATE TABLE taller5.detalleEsp(
idDetalleEsp int NOT NULL,
idEspecialidad int NOT NULL,
idMedico int NOT NULL,
CONSTRAINT PK_idDetalleEsp PRIMARY KEY (idDetalleEsp) );

CREATE TABLE taller5.posConsulta(
idposConsulta int NOT NULL,
fecha date NOT NULL,
duracion int NOT NULL,
idEnfermera int NOT NULL,
idPaciente int NOT NULL,
idConsulta int NULL,
CONSTRAINT PK_idposConsulta PRIMARY KEY (idposConsulta) );


CREATE TABLE taller5.consulta(
idConsulta int NOT NULL,
nacimiento date NOT NULL,
ocupacion char(30) NOT NULL,
lugarProcedencia char(100) NOT NULL,
estadoCivil char(30) NOT NULL,
especialidad char(30) NOT NULL,
pago int NOT NULL,
tipoConsulta char(30) NOT NULL,
idPaciente int NOT NULL,
idEspecialista int NOT NULL,
CONSTRAINT PK_idConsulta PRIMARY KEY (idConsulta) );


CREATE TABLE taller5.especialidad(
idEspecialidad int NOT NULL,
nombre int NOT NULL,
CONSTRAINT PK_idEspecialidad PRIMARY KEY (idEspecialidad)) ;

CREATE TABLE taller5.paciente(
idPaciente int NOT NULL,
carnetEPS char(30) NOT NULL,
historiaClinica char(40) NOT NULL,
enfermedades char(100),
ordenMedica char(100) NOT NULL,
CONSTRAINT PK_idPaciente PRIMARY KEY (idPaciente)) ;


CREATE TABLE taller5.medico(
idMedico int NOT NULL,
tarjetaProfesional char(50) NOT NULL,
CONSTRAINT PK_idMedico PRIMARY KEY (idMedico));


CREATE TABLE taller5.persAdmin(
idAdmin int NOT NULL,
credenciales char(30) NOT NULL,
cargo char(30) NOT NULL,
CONSTRAINT PK_idAdmin PRIMARY KEY (idAdmin));


CREATE TABLE taller5.enfermera(
idEnfermera int NOT NULL,
credenciales char(30) NOT NULL,
tipo char(20) NOT NULL,
CONSTRAINT PK_idEnfermera PRIMARY KEY (idEnfermera));


CREATE TABLE taller5.admonTurno(
idDetalleTurno1 int NOT NULL,
idDetalleTurno2 int NOT NULL,
CONSTRAINT PK_idmonTurno PRIMARY KEY (idDetalleTurno1,idDetalleTurno2));


CREATE TABLE taller5.turno(
idTurno int NOT NULL,
CONSTRAINT PK_idTurno PRIMARY KEY (idTurno));


ALTER TABLE taller5.admonTurno ADD CONSTRAINT FK_Detalle_1 FOREIGN KEY(idDetalleTurno1)
REFERENCES taller5.detalleTurno (idDetalleTurno)
on delete restrict on update restrict;

ALTER TABLE taller5.admonTurno ADD CONSTRAINT FK_Detalle_2 FOREIGN KEY(idDetalleTurno2)
REFERENCES taller5.detalleTurno (idDetalleTurno)
on delete restrict on update restrict;

ALTER TABLE taller5.enfermera ADD CONSTRAINT FK_idEnfermera FOREIGN KEY(idEnfermera)
REFERENCES taller5.usuario (cedula)
on delete restrict on update restrict;

ALTER TABLE taller5.persAdmin ADD CONSTRAINT FK_idAdmin FOREIGN KEY(idAdmin)
REFERENCES taller5.usuario (cedula)
on delete restrict on update restrict;

ALTER TABLE taller5.medico ADD CONSTRAINT FK_idMedico FOREIGN KEY(idMedico)
REFERENCES taller5.usuario (cedula)
on delete restrict on update restrict;

ALTER TABLE taller5.paciente ADD CONSTRAINT FK_idPaciente FOREIGN KEY(idPaciente)
REFERENCES taller5.usuario (cedula)
on delete restrict on update restrict;

ALTER TABLE taller5.consulta ADD CONSTRAINT FK_idPaciente FOREIGN KEY(idPaciente)
REFERENCES taller5.paciente (idPaciente)
on delete restrict on update restrict;

ALTER TABLE taller5.consulta ADD CONSTRAINT FK_idEspecialista FOREIGN KEY(idEspecialista)
REFERENCES taller5.medico (idMedico)
on delete restrict on update restrict;

ALTER TABLE taller5.posConsulta ADD CONSTRAINT FK_idPaciente FOREIGN KEY(idPaciente)
REFERENCES taller5.paciente (idPaciente)
on delete restrict on update restrict;

ALTER TABLE taller5.posConsulta ADD CONSTRAINT FK_idEnfermera FOREIGN KEY(idEnfermera)
REFERENCES taller5.enfermera (idEnfermera)
on delete restrict on update restrict;

ALTER TABLE taller5.posConsulta ADD CONSTRAINT FK_idConsulta FOREIGN KEY(idConsulta)
REFERENCES taller5.consulta (idConsulta)
on delete restrict on update restrict;

ALTER TABLE taller5.detalleTurno ADD CONSTRAINT FK_idMedico FOREIGN KEY(idMedico)
REFERENCES taller5.medico (idMedico)
on delete restrict on update restrict;

ALTER TABLE taller5.detalleTurno ADD CONSTRAINT FK_idTurno FOREIGN KEY(idTurno)
REFERENCES taller5.turno (idTurno)
on delete restrict on update restrict;

ALTER TABLE taller5.cita ADD CONSTRAINT FK_idTurno FOREIGN KEY(idTurno)
REFERENCES taller5.turno (idTurno)
on delete restrict on update restrict;

ALTER TABLE taller5.cita ADD CONSTRAINT FK_idPaciente FOREIGN KEY(idPaciente)
REFERENCES taller5.paciente (idPaciente)
on delete restrict on update restrict;

ALTER TABLE taller5.detalleEsp ADD CONSTRAINT FK_idMedico FOREIGN KEY(idMedico)
REFERENCES taller5.medico (idMedico)
on delete restrict on update restrict;

ALTER TABLE taller5.detalleEsp ADD CONSTRAINT FK_idEspecialidad FOREIGN KEY(idEspecialidad)
REFERENCES taller5.especialidad (idEspecialidad)
on delete restrict on update restrict;
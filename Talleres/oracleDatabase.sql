CREATE TABLE usuario
(
    cedula integer NOT NULL,
    nombre character(30),
  apellido character(30),
  telefono integer,
  direccion character(40),
  CONSTRAINT pk_idUsuario PRIMARY KEY (cedula) 
);

CREATE TABLE paciente
(
    idPaciente integer NOT NULL,
  carnetEPS integer NOT NULL,
  historiaClinica character(100),
  enfermedades character(30),
  ordenMedica character(50) NOT NULL,
  CONSTRAINT fk_idPaciente FOREIGN KEY (idPaciente) REFERENCES usuario (cedula),
  CONSTRAINT pk_idPaciente PRIMARY KEY (idPaciente)
);

CREATE TABLE turno
(
  idTurno integer NOT NULL,
  CONSTRAINT pk_idTurno PRIMARY KEY (idTurno)
);

CREATE TABLE cita
(
  idCita integer NOT NULL,
  fechaHora date NOT NULL,
  duracion integer NOT NULL,
    idTurno integer NOT NULL,
    idPaciente integer NOT NULL,
  CONSTRAINT pk_idCita PRIMARY KEY (idCita),
  CONSTRAINT fk_idTurno_cita FOREIGN KEY (idTurno) REFERENCES turno (idTurno),
  CONSTRAINT fk_idPaciente_cita FOREIGN KEY (idPaciente) REFERENCES paciente (idPaciente) 
);

CREATE TABLE medico
(
    idMedico integer NOT NULL,
  tarjetaProfesional integer NOT NULL,
  
  CONSTRAINT fk_idMedico FOREIGN KEY (idMedico) REFERENCES usuario (cedula),
  CONSTRAINT pk_idMedico PRIMARY KEY (idMedico)
);

CREATE TABLE especialidad
(
  idEspecialidad integer NOT NULL,
  nombre character(20) NOT NULL,
  CONSTRAINT pk_especialidad PRIMARY KEY (idEspecialidad)
);

CREATE TABLE detalleEspec
(
  idDetalleEspec integer NOT NULL,
  idMedico integer NOT NULL,
  idEspecialidad integer,
    CONSTRAINT fk_idMedico_detalleEspec FOREIGN KEY (idMedico) REFERENCES medico (idMedico),
  CONSTRAINT fk_idEspecialidad_detalleEspec FOREIGN KEY (idEspecialidad) REFERENCES especialidad (idEspecialidad),
  CONSTRAINT pk_idDetalleEspec PRIMARY KEY (idDetalleEspec)
);



CREATE TABLE persAdmin
(
    idPersAdmin integer NOT NULL,
  credenciales character(20),
  cargo character(20) NOT NULL,
  CONSTRAINT fk_idPersAdmin FOREIGN KEY (idPersAdmin) REFERENCES usuario (cedula),
  CONSTRAINT pk_idPersAdmin PRIMARY KEY (idPersAdmin)
);

CREATE TABLE enfermera
(
    idEnfermera integer NOT NULL,
  credenciales character(20),
  cargo character(20) NOT NULL,
  CONSTRAINT fk_idEnfermera FOREIGN KEY (idEnfermera) REFERENCES usuario (cedula),
  CONSTRAINT pk_idEnfermera PRIMARY KEY (idEnfermera)
);

CREATE TABLE detalleTurno
(
  idDetalleTurno integer NOT NULL,
  fechaHora date NOT NULL,
  duracion integer NOT NULL,
  idMedico integer NOT NULL,
  idTurno integer NOT NULL,
  CONSTRAINT pk_idDetalleTurno PRIMARY KEY (idDetalleTurno),
    CONSTRAINT fk_idMedico_detalleTurno FOREIGN KEY (idMedico) REFERENCES medico (idMedico),
    CONSTRAINT fk_idTurno_detalleTurno FOREIGN KEY (idTurno) REFERENCES turno (idTurno)
);

CREATE TABLE admonTurno
(
  idDetalleTurno1 integer NOT NULL,
  idDetalleTurno2 integer NOT NULL,
  CONSTRAINT fk_idDetalleTurno1_admon FOREIGN KEY (idDetalleTurno1) REFERENCES detalleTurno (idDetalleTurno),
  CONSTRAINT fk_idDetalleTurno2_admon FOREIGN KEY (idDetalleTurno2) REFERENCES detalleTurno (idDetalleTurno)
);

CREATE TABLE consulta
(
  idConsulta integer NOT NULL,
  nacimiento date NOT NULL,
  ocupacion character(30),
  lugarProcedencia character(20) NOT NULL,
  estadoCivil character(15),
  especialidad character(30),
  pago integer,
  tipoConsulta character(15),
  idPaciente integer NOT NULL,
  idEspecialista integer NOT NULL,
    CONSTRAINT pk_idConsulta PRIMARY KEY (idConsulta),
    CONSTRAINT fk_idPaciente_consulta FOREIGN KEY (idPaciente) REFERENCES paciente (idPaciente),
    CONSTRAINT fk_idEspecialista_consulta FOREIGN KEY (idEspecialista) REFERENCES medico (idMedico)
);

CREATE TABLE posconsulta
(
    idPosconsulta integer NOT NULL,
  fechaHora date NOT NULL,
  duracion integer NOT NULL,
  idEnfermera integer NOT NULL,
  idPaciente integer NOT NULL,
  idConsulta integer NOT NULL,
  CONSTRAINT pk_idPosconsulta PRIMARY KEY (idPosconsulta),
    CONSTRAINT fk_idEnfermera_posconsulta FOREIGN KEY (idEnfermera) REFERENCES enfermera (idEnfermera),
    CONSTRAINT fk_idPaciente_posconsulta FOREIGN KEY (idPaciente) REFERENCES paciente (idPaciente),
    CONSTRAINT fk_idConsulta_posconsulta FOREIGN KEY (idConsulta) REFERENCES consulta (idConsulta)
);
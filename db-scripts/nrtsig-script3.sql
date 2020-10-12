-- Tabla comisiones
CREATE TABLE `nrtsig_dev`.`comisiones` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `numero_comision` INT NOT NULL,
  `capacidad_maxima` INT NOT NULL,
  `capacidad_actual` INT NOT NULL,
  `hora_desde` TIME NOT NULL,
  `hora_hasta` TIME NOT NULL,
  `dia` VARCHAR(100) NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  `id_plan_carrera` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla plan_carrera
ALTER TABLE comisiones ADD CONSTRAINT `plan_carrera1_fk` FOREIGN KEY (`id_plan_carrera`) 
REFERENCES plan_carreras (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

-- Eliminamos la columnas hora_desde, hora_hasta, dia
ALTER TABLE comisiones DROP COLUMN hora_desde;
ALTER TABLE comisiones DROP COLUMN hora_hasta;
ALTER TABLE comisiones DROP COLUMN dia;

-- Comisiones de Ingenieria en Sistemas de Informacion
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 101, 20, 10, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 102, 20, 12, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 103, 20, 17, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 201, 20, 10, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 202, 20, 12, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 203, 20, 13, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 301, 20, 9, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 302, 20, 7, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 401, 20, 17, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 402, 20, 10, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into comisiones(id, numero_comision, capacidad_maxima, capacidad_actual, create_at, id_plan_carrera) values(default, 501, 20, 8, current_date(), (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));

-- Agregamos la columna turno_cursado
alter table comisiones add column turno_cursado int;

-- Actualizamos los registros de la tabla comisiones
update comisiones set turno_cursado = 1 where id > 0;

-- Tabla aulas
CREATE TABLE `nrtsig_dev`.`aulas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `numero_salon` INT NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  `id_comision` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla comisiones
ALTER TABLE aulas ADD CONSTRAINT `comision_fk` FOREIGN KEY (`id_comision`) 
REFERENCES comisiones (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

insert into aulas (id, numero_salon, create_at, id_comision) values (default, 1, current_date(), 2);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 2, current_date(), 3);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 3, current_date(), 4);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 4, current_date(), 5);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 5, current_date(), 6);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 6, current_date(), 7);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 7, current_date(), 8);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 8, current_date(), 9);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 9, current_date(), 10);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 10, current_date(), 11);
insert into aulas (id, numero_salon, create_at, id_comision) values (default, 11, current_date(), 12);

-- Tabla asignaturas
CREATE TABLE `nrtsig_dev`.`asignaturas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  `descripcion` VARCHAR(256),
  `id_plan_carrera` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la columna para conocer el nivel de la carrera
ALTER TABLE asignaturas ADD COLUMN nivel int;

-- Agregamos la foreign key a la tabla plan_carreras
ALTER TABLE asignaturas ADD CONSTRAINT `plan_carrera2_fk` FOREIGN KEY (`id_plan_carrera`) 
REFERENCES plan_carreras (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION; 

insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Analisis Matematico', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Fisica I', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Matematicas Discretas', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Algoritmos y Estructuras de Datos', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Arquitectura de las PC', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Algebra y Geometria Analitica', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Sistemas y Organizaciones', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Analisis de Sistemas', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Sintaxis y Semantica de los Lenguajes', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Paradigmas de Programacion', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Analisis Matematico II', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Fisica II', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Ingles I', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));
insert into asignaturas (id, nombre, create_at, descripcion, id_plan_carrera) values (default, 'Sistemas Operativos', current_date(), '', (select p.id from plan_carreras p where p.id_carrera = 1 and p.fecha_cierre is null));

-- Actualizamos el nivel de las asignaturas
update asignaturas set nivel = 1 where id > 7 and id < 8;
update asignaturas set nivel = 2 where id > 7;

-- Agregamos la columna tipo_asignatura
ALTER TABLE asignaturas ADD COLUMN tipo_asignatura int;

-- Actualizamos el tipo_asignatura de las asignatura
update asignaturas set tipo_asignatura = 1 where id > 0;

-- Tabla docentes
CREATE TABLE `nrtsig_dev`.`docentes` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `legajo` BIGINT NOT NULL,
  `tipo_documento` VARCHAR(45) NOT NULL,
  `nro_documento` BIGINT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  `cuit` VARCHAR(45) NOT NULL,
  `sexo` CHAR NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `legajo_UNIQUE` (`legajo` ASC) VISIBLE,
  UNIQUE INDEX `nro_documento_UNIQUE` (`nro_documento` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
  ENGINE=InnoDB DEFAULT CHARSET=utf8;
  
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1234, 'DNI', 10101010, 'Monica', 'Caserio', 'monicaCaserio@gmail.com', current_date(), '27101010100', 'F');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1235, 'DNI', 13131313, 'Fabiana', 'Riva', 'fabianariva@gmail.com', current_date(), '27131313132', 'F');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1236, 'DNI', 14141414, 'Andres', 'Meca', 'andresMeca@gmail.com', current_date(), '20141414149', 'M');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1237, 'DNI', 12345678, 'Jose Luis', 'Aldn', 'jsoaldn@gmail.com', current_date(), '20123456789', 'M');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1238, 'DNI', 15151515, 'Rosa', 'Perez', 'rosarPwr@gmail.com', current_date(), '27151515156', 'F');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1239, 'DNI', 20202020, 'Ezequiel', 'Martinez', 'ezqmartinez@live.com.ar', current_date(), '20202020207', 'M');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1240, 'DNI', 21212121, 'Mariano', 'Canales', 'marianCanales@yahoo.com.ar', current_date(), '20212121213', 'M');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1241, 'DNI', 30303030, 'Lorena', 'Lorincz', 'lorenaLorinz@gmail.com', current_date(), '20303030304', 'F');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1242, 'DNI', 31313131, 'Julian', 'Sanchez', 'juliansanchez@hotmail.com', current_date(), '20313131312', 'M');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1243, 'DNI', 32323232, 'Luciano', 'Misions', 'luciano89@gmail.com', current_date(), '20323232324', 'M');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1244, 'DNI', 28282828, 'Sandra', 'Veps', 'sandra_veps@gmail.com', current_date(), '27282828283', 'F');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1245, 'DNI', 23232323, 'Luisa', 'Volve', 'luisavolve@gmail.com', current_date(), '20232323234', 'F');
insert into docentes (id, legajo, tipo_documento, nro_documento, nombre, apellido, email, create_at, cuit, sexo) values (default, 1246, 'DNI', 19191919, 'Sergio', 'Tarabini', 'ser@gmail.com', current_date(), '20191919199', 'M');

-- Tabla laboratorios
CREATE TABLE `nrtsig_dev`.`laboratorios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `nro_laboratorio` INT NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  `id_departamento` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla departamentos
ALTER TABLE laboratorios ADD CONSTRAINT `departamento1_fk` FOREIGN KEY (`id_departamento`) 
REFERENCES departamentos (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Microsoft', 1, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Oracle', 2, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Lenguajes I', 3, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Lenguajes II', 4, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Software Libre', 5, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Redes I', 6, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Redes II', 7, current_date(), 1);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Quimica Organica', 1, current_date(), 2);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Quimica Inorganica', 2, current_date(), 2);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio I', 3, current_date(), 2);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio II', 4, current_date(), 2);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio Informatica', 1, current_date(), 3);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio Mecanica I', 2, current_date(), 3);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio Mecanica II', 3, current_date(), 3);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio Matematica', 1, current_date(), 4);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Fisica Mecanica', 2, current_date(), 4);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Fisica Cuantica', 3, current_date(), 4);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Laboratorio de Dibujo', 1, current_date(), 4);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Producciones Audiovisuales', 1, current_date(), 5);
insert into laboratorios (id, nombre, nro_laboratorio, create_at, id_departamento) values (default, 'Graficos', 2, current_date(), 5);

-- Tabla estados_asignaturas
CREATE TABLE `nrtsig_dev`.`estados_asignaturas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(10) NOT NULL,
  `descripcion` VARCHAR(30) NOT NULL,
  `create_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;  

insert into estados_asignaturas (id, codigo, descripcion, create_at) values(default, 'L', 'Libre', current_date());
insert into estados_asignaturas (id, codigo, descripcion, create_at) values(default, 'C', 'Condicional', current_date());
insert into estados_asignaturas (id, codigo, descripcion, create_at) values(default, 'R', 'Regular', current_date());
insert into estados_asignaturas (id, codigo, descripcion, create_at) values(default, 'A', 'Aprobada', current_date());
insert into estados_asignaturas (id, codigo, descripcion, create_at) values(default, 'AD', 'Aprobacion Directa', current_date());
insert into estados_asignaturas (id, codigo, descripcion, create_at) values(default, 'EC', 'En Curso', current_date());

-- Tabla inscripcion_asignatura
CREATE TABLE `nrtsig_dev`.`inscripcion_asignatura` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `fecha_inscripcion` DATE NOT NULL,
  `id_alumno` BIGINT NOT NULL,
  `id_plan` BIGINT NOT NULL,
  `id_estado` BIGINT NOT NULL,
  `id_asignatura` BIGINT NOT NULL,
  `id_comision` BIGINT NOT NULL,
  `nota` FLOAT,
  `create_at` TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla alumnos
ALTER TABLE inscripcion_asignatura ADD CONSTRAINT `alumno1_fk` FOREIGN KEY (`id_alumno`) 
REFERENCES alumnos (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la foreign key a la tabla plan_carreras
ALTER TABLE inscripcion_asignatura ADD CONSTRAINT `plan1_fk` FOREIGN KEY (`id_plan`) 
REFERENCES plan_carreras (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la foreign key a la tabla estados_asignaturas
ALTER TABLE inscripcion_asignatura ADD CONSTRAINT `estado_fk` FOREIGN KEY (`id_estado`) 
REFERENCES estados_asignaturas (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la foreign key a la tabla asignaturas
ALTER TABLE inscripcion_asignatura ADD CONSTRAINT `asign_fk` FOREIGN KEY (`id_asignatura`) 
REFERENCES asignaturas (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la foreign key a la tabla comisiones
ALTER TABLE inscripcion_asignatura ADD CONSTRAINT `comisioninsc_fk` FOREIGN KEY (`id_comision`) 
REFERENCES comisiones (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Tabla correlativas
CREATE TABLE `nrtsig_dev`.`correlativas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `id_asignatura` BIGINT NOT NULL,
  `id_correlativa` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla asignaturas
ALTER TABLE correlativas ADD CONSTRAINT `correlativa_fk` FOREIGN KEY (`id_correlativa`) 
REFERENCES asignaturas (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

insert into correlativas (id, id_asignatura, id_correlativa) values (default, 8, 4);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 8, 7);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 11, 1);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 11, 6);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 12, 1);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 12, 2);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 10, 4);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 10, 3);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 9, 3);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 9, 4);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 14, 4);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 14, 5);
insert into correlativas (id, id_asignatura, id_correlativa) values (default, 14, 3);

-- Modificamos la columna id_comision de la tabla aulas para que pueda admitir valores nulos
ALTER TABLE aulas MODIFY id_comision BIGINT null;

-- Tabla docente_comision_asignatura
CREATE TABLE `nrtsig_dev`.`docente_comision_asignatura` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `id_asignatura` BIGINT NOT NULL,
  `id_comision` BIGINT NOT NULL,
  `id_docente` BIGINT NOT NULL, 
  PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Agregamos la foreign key a la tabla asignaturas
ALTER TABLE docente_comision_asignatura ADD CONSTRAINT `asig_fk` FOREIGN KEY (`id_asignatura`) 
REFERENCES asignaturas (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la foreign key a la tabla comision
ALTER TABLE docente_comision_asignatura ADD CONSTRAINT `comision1_fk` FOREIGN KEY (`id_comision`) 
REFERENCES comisiones (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la foreign key a la tabla asignaturas
ALTER TABLE docente_comision_asignatura ADD CONSTRAINT `docentes_fk` FOREIGN KEY (`id_docente`) 
REFERENCES docentes (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

-- Agregamos la columna dia_hora_cursado
alter table docente_comision_asignatura add column dia_hora_cursado varchar(100);

-- Agregamos la columna que indica si el profesor es de teoria, practica o auxiliar
alter table docente_comision_asignatura add column funcion_profesor int;

-- Agregamos la columna cantidad_horas_semanales
alter table docente_comision_asignatura add column cantidad_horas_semanales int;

-- Actualizamos la columna capacidad_actual 
-- Se setean el campo a 0 debido a que iniciamos los datos y aun no hay ninguna inscripcion a ninguna comision
update comisiones set capacidad_actual = 0 where id > 0;

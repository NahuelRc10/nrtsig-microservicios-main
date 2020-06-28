-- Agregamos columna para saber si una carrera aun esta activa
ALTER TABLE carreras ADD COLUMN carrera_activa bool;

update carreras set carrera_activa = true where id <> 0;

-- Agregamos la columna para saber la cantidad maxima de años de un tipo de carrera
ALTER TABLE tipo_carreras ADD COLUMN cant_max_anios int;

update tipo_carreras set cant_max_anios = 3 where id = 1;
update tipo_carreras set cant_max_anios = 6 where id = 2;
update tipo_carreras set cant_max_anios = 3 where id = 3;
update tipo_carreras set cant_max_anios = 2 where id = 4;
update tipo_carreras set cant_max_anios = 3 where id = 5;

-- Agregamos la columna para saber la cantidad minima de años de un tipo de carrera
ALTER TABLE tipo_carreras ADD COLUMN cant_min_anios int;
update tipo_carreras set cant_min_anios = 2 where id = 1;
update tipo_carreras set cant_min_anios = 4 where id = 2;
update tipo_carreras set cant_min_anios = 2 where id = 3;
update tipo_carreras set cant_min_anios = 1 where id = 4;
update tipo_carreras set cant_min_anios = 1 where id = 5;

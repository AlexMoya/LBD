    
/* Trigger insert */
create trigger InsertarMateria
after insert on materia1
for each row insert into practica1.materia2(materia, horario, salones, maestro) 
values(new.idmateria, new.horario, new.salones, new.maestro, now());

create trigger InsertarMateria2
after insert on materia2
for each row insert into practica1.materia2(materia, horario, salones, maestro) 
values(new.idmateria2, new.horario, new.salones, new.maestro, now());

CREATE PROCEDURE procedure1 as
select a.idCarrera, concat(car.nomCarrera) as nomCarrera, idAlumno, claveAlumno, nomAlumno, apellidopAlumno, apellidomAlumno, sexoAlumno, estatusAlumno
from alumno a, carrera car
where a.idCarrera=car.idCarrera
go;
EXEC procedure1;

CREATE PROCEDURE procedure2 as
select idAlumno as 'Number', nomAlumno as 'Name', apellidopAlumno as 'Last Name',
apellidomAlumno as '2nd Last Name', sexoAlumno as 'Gender' 
from practica2.alumno
go;
EXEC procedure2;

CREATE PROCEDURE procedure3 as
select idCarrera as 'careerID', nomCarrera as 'careerName', planEstudios as 'Curriculum'
from practica2.carrera
go;
EXEC procedure3;

CREATE PROCEDURE procedure4 as
SELECT maestro.nomMaestro, horario.idHorario
FROM maestro
INNER JOIN horario
ON maestro.idMaestro = horario.idMaestro
go;
EXEC procedure4;

CREATE PROCEDURE procedure5 as
SELECT maestro.nomMaestro, horario.idDia
FROM maestro
INNER JOIN horario
ON maestro.idMaestro = horario.idMaestro
go;
EXEC procedure5;

CREATE PROCEDURE procedure6 as
SELECT COUNT(horaClase), idHorario
FROM horario
GROUP BY idHorario
HAVING COUNT(horaClase) = 3
go;
EXEC procedure6;

CREATE PROCEDURE procedure7 as
SELECT COUNT(sexoAlumno), nomAlumno, sexoAlumno
FROM alumno
GROUP BY nomAlumno, sexoAlumno
go;
EXEC procedure7;

CREATE PROCEDURE procedure8 as
SELECT alumno.nomAlumno, carrera.nomCarrera
FROM alumno
INNER JOIN carrera
ON alumno.idCarrera = carrera.idCarrera
go;
EXEC procedure8;

CREATE PROCEDURE procedure9 as
SELECT sexoAlumno, COUNT(*) FROM alumno
group by sexoAlumno
go;
EXEC procedure9;

CREATE PROCEDURE procedure10 as
SELECT idAlumno, nomAlumno, sexoAlumno FROM alumno
where sexoAlumno = 'M'
order by idAlumno
go;
EXEC procedure10;


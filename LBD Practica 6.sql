-- Selects
SELECT idmateria as 'ID', Materia as 'Materia', Horario as 'Hora',
Salones as 'Aula', Maestro as 'Docente' 
from practica1.materia1;

SELECT idmateria2 as '002', Materia as 'Algebra', Horario as '8:00',
Salones as '101', Maestro as 'Abraham Cueto' 
from practica1.materia2;

SELECT idmateria3 as '003', Materia as 'Diseño', Horario as '9:00',
Salones as '102', Maestro as 'Gabriel FLores' 
from practica1.materia3;

SELECT idmateria4 as '004', Materia as 'FSI', Horario as '10:00',
Salones as '103', Maestro as 'Mauricio Salazar' 
from practica1.materia4;

SELECT idmateria5 as '005', Materia as 'Automatas', Horario as '11:00',
Salones as '104', Maestro as 'Kevin Gonzalez' 
from practica1.materia5;

SELECT idmateria6 as '006', Materia as 'Base de Datos', Horario as '12:00',
Salones as '105', Maestro as 'Ericka Martinez' 
from practica1.materia6;

SELECT idmateria7 as '007', Materia as 'Circuitos Digitales', Horario as '1:00',
Salones as '106', Maestro as 'Olaf Jair' 
from practica1.materia7;

SELECT idmateria8 as '008', Materia as 'Calculo Integral', Horario as '2:00',
Salones as '107', Maestro as 'Adrian Martinez' 
from practica1.materia8;

SELECT idmateria9 as '009', Materia as 'Contabilidad', Horario as '3:00',
Salones as '108', Maestro as 'Jim Chavez' 
from practica1.materia9;

SELECT idmateria10 as '010', Materia as 'Derecho Informatico', Horario as '4:00',
Salones as '109', Maestro as 'Amauri Rodriguez' 
from practica1.materia10;

-- Drop
DROP table practica1.materia4; -- No utilizar

-- Insert INTO
insert into materia(idmateria,Materia,Horario,Salones,Maestro)
values('0000','Unas',' Caguamas','o','que','profe?');

-- Insert INTO select
INSERT INTO practica1.materia6 SELECT * FROM practica1.materia1;
SELECT * FROM practica1.materia6;

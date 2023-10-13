----------Trabajo #4----------
--Se borra las notas asociadas, para que no haya error--
DELETE FROM NOTAS WHERE nAlum = 1111;
DELETE FROM ALUMNO WHERE nAlum = 1111;


SELECT * from ALUMNO;

UPDATE ASIGNATURA
SET precio = 43250
WHERE codA = '3';

SELECT * from Asignatura
WHERE codA = '3';

--15--
UPDATE ASIGNATURA
SET depto = 'Sistemas'
WHERE codA = '5';

SELECT * from Asignatura
WHERE codA = '5';

--16--
--Colocamos un alumno con codigo 2000--
INSERT INTO ALUMNO (nAlum, nombre, apellido, direccion, telefono) VALUES
(2000, 'Daniel', 'Fernández', 'C2 #63-22', '92385778');

UPDATE ALUMNO
SET direccion = 'Dg32 #12-87'
WHERE nAlum = '2000';

SELECT * from ALUMNO
WHERE nAlum = '2000';


--17--
--Mejor creamos un usuario pa eliminar--
INSERT INTO NOTAS (nAlum, CodA, fecha, nota) VALUES
(1213, '4', '02-10-2012', 3.8);

DELETE FROM NOTAS
WHERE fecha < '2013-01-01';

SELECT * from NOTAS
WHERE fecha < '2013-01-01';


--18--
--Colocamos una materia para eliminar--
INSERT INTO ASIGNATURA (codA, nombreA, precio, depto) VALUES
(14, 'Biologia Marina', 110000, 'Ciencias');

DELETE FROM ASIGNATURA
WHERE precio > 100000;

SELECT * from ASIGNATURA
WHERE precio > 100000;


--//17--
-- Intentar insertar una tupla sin proporcionar un valor para 'nombre'
INSERT INTO ALUMNO (nAlum, apellido, direccion, telefono)
VALUES (1, 'Pérez', 'Calle 123', '123-456-7890');

--//18--
--Intento de insertar una tupla
INSERT INTO Asignatura (codA, nombreA, precio, depto)
VALUES (1, 'Programación Avanzada', 99000, 'Sistemas');


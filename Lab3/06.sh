--6---
-- Subonsulta principal para obtener nombre y departamento de las asignaturas aprobadas en 2013
SELECT nombreA, depto
FROM ASIGNATURA
WHERE codA IN (
    SELECT codA
    FROM NOTAS
    WHERE fecha >= '2013-01-01' AND fecha < '2014-01-01' AND nota >= 3.0
);

--Crear departamento y un usuario--
INSERT INTO ASIGNATURA (codA, nombreA, precio, depto) VALUES
(14, 'Informatica', 55000, 'Sistemas')

INSERT INTO NOTAS (nAlum, CodA, fecha, nota) VALUES
(0789, '14', '02-10-2013', 3.8)


Select * from ASIGNATURA



-- Subconsulta principal para obtener la información de los alumnos que han aprobado asignaturas en 'Sistemas'
SELECT nAlum, nombre, apellido, direccion, telefono
FROM ALUMNO
WHERE nAlum IN (
    SELECT DISTINCT nAlum
    FROM NOTAS
    WHERE CodA IN (
        SELECT codA
        FROM ASIGNATURA
        WHERE depto = 'Sistemas'
    ) AND nota >= 3.0
);


-- Subonsulta principal para obtener la información de los alumnos con notas superiores al promedio de 2013
SELECT nAlum, nombre, apellido, direccion, telefono
FROM ALUMNO
WHERE nAlum IN (
    SELECT DISTINCT nAlum
    FROM NOTAS
    WHERE fecha >= '2013-01-01' AND fecha < '2014-01-01' AND nota > (
        SELECT AVG(nota)
        FROM NOTAS
        WHERE fecha >= '2013-01-01' AND fecha < '2014-01-01'
    )
);
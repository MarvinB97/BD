------------TRABAJO #3-----------------
--10--
SELECT nombreA, depto FROM ASIGNATURA WHERE codA='2';
--11--
SELECT nombre, apellido, direccion FROM ALUMNO WHERE nAlum = '0254';
--12--
SELECT ALUMNO.nombre, ASIGNATURA.nombreA 
FROM ALUMNO
JOIN NOTAS ON ALUMNO.nAlum = NOTAS.nAlum
JOIN ASIGNATURA ON NOTAS.CodA = ASIGNATURA.codA
WHERE NOTAS.nota > 3.0;

--13--
SELECT ALUMNO.nombre
FROM ALUMNO
JOIN NOTAS ON ALUMNO.nAlum = NOTAS.nAlum
WHERE NOTAS.fecha = '2013-06-02';

--14--
SELECT nombreA
FROM ASIGNATURA
WHERE depto = 'Lenguas';



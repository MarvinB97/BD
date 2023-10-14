-----PROMEDIO DE LA NOTA---
SELECT ROUND(AVG(nota),2) FROM NOTAS


SELECT ROUND(SUM(nota)/COUNT(*),2) FROM NOTAS



-----nombres de los alumnos con la nota menor y mayor nota--
SELECT ALUMNO.nombre, ALUMNO.apellido, NOTAS.nota
FROM ALUMNO
JOIN NOTAS ON ALUMNO.nAlum = NOTAS.nAlum
WHERE NOTAS.nota = (SELECT MIN(nota) FROM NOTAS) OR 
NOTAS.nota = (SELECT MAX(nota) FROM NOTAS);




-----CUANTOS ALUMNOS HAY---
SELECT COUNT(*) FROM ALUMNO;

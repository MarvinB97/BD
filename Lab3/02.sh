----------------Agregación de datos------------------------------
INSERT INTO ASIGNATURA (codA, nombreA, precio, depto) VALUES
(1, 'Programación', 91500, 'InvYDes'),
(2, 'Dibujo', 28000, 'Diseño'),
(3, 'Ingles', 38000, 'Lenguas')
-------10 LOS NUEVOS-------------
INSERT INTO ASIGNATURA (codA, nombreA, precio, depto) VALUES
(4, 'Matemáticas', 55000, 'Ciencias'),
(5, 'Historia', 42000, 'Humanidades'),
(6, 'Química', 68000, 'Ciencias'),
(7, 'Economía', 62000, 'Economía'),
(8, 'Literatura', 35000, 'Humanidades'),
(9, 'Física', 72000, 'Ciencias'),
(10, 'Informática', 89000, 'InvYDes'),
(11, 'Arte', 32000, 'Artes'),
(12, 'Biología', 69000, 'Ciencias'),
(13, 'Psicología', 58000, 'Sociales')

SELECT * from ASIGNATURA;


INSERT INTO ALUMNO (nAlum, nombre, apellido, direccion, telefono) VALUES
(0338, 'Ana', 'Pérez Gómez' , 'CL23 #9-60', '92478596'),
(0254, 'Rosa', 'López López' , 'C5 #45-10', '92458796'),
(0168, 'Juan', 'García García' , 'T.22 #7-98', '92477863')
-------10 LOS NUEVOS-------------
INSERT INTO ALUMNO (nAlum, nombre, apellido, direccion, telefono) VALUES
(1111, 'Sofía', 'Fernández', 'C2 #67-32', '92345678'),
(0789, 'Mario', 'Díaz', 'Calle 10 #5-21', '92234567'),
(0912, 'Laura', 'Sánchez', 'Av. Libertad #76', '92567890'),
(0123, 'Pedro', 'Ramírez', 'C3 #12-45', '92876543'),
(0345, 'Elena', 'Hernández', 'T.15 #30-18', '92765432'),
(0567, 'Gabriel', 'Torres', 'C6 #87-43', '92654321'),
(0890, 'Isabel', 'Gutiérrez', 'Av. Central #54', '92098765'),
(1011, 'Alejandro', 'Martínez', 'C4 #21-67', '92123456'),
(1213, 'María', 'Rodríguez', 'T.25 #8-45', '92456789'),
(1415, 'Daniel', 'Gómez', 'Av. Principal #90', '92349876')

SELECT * from ALUMNO;


INSERT INTO NOTAS (nAlum, CodA, fecha, nota) VALUES
(0338 , '1' , '02-02-2013' , 3.6),
(0254 , '2' , '02-02-2013' , 2.8),
(0168 , '2' , '02-02-2013' , 4.9),
(0338 , '2' , '02-02-2013' , 2.5),
(0338 , '3' , '02-06-2013' , 5.0),
(0254 , '1' , '02-06-2013' , 4.1),
(0168 , '1' , '02-06-2013' , 3.3),
(0168 , '3' , '02-06-2013' , 1.9)
----------10 NUEVOS----------
INSERT INTO NOTAS (nAlum, CodA, fecha, nota) VALUES
(1111, '2', '02-10-2013', 3.8),
(0789, '1', '02-10-2013', 4.5),
(0912, '1', '02-10-2013', 4.2),
(0123, '3', '02-10-2013', 2.1),
(0345, '2', '02-02-2014', 3.9),
(0567, '3', '02-02-2014', 4.7),
(0890, '1', '02-02-2014', 3.5),
(1011, '2', '02-02-2014', 2.3),
(1213, '1', '02-06-2014', 4.0),
(1415, '3', '02-06-2014', 3.2)


SELECT * from NOTAS;
------Creación tabla ASIGNATURA--------
DROP TABLE if exists ASIGNATURA cascade;
CREATE TABLE ASIGNATURA (
	codA VARCHAR(50) NOT NULL,
	nombreA VARCHAR (50) NOT NULL,
	precio FLOAT NOT NULL,
	depto VARCHAR(12),
	PRIMARY KEY (codA)
);

------Creación tabla ALUMNO--------
DROP TABLE if exists ALUMNO cascade;
CREATE TABLE ALUMNO (
	nAlum NUMERIC NOT NULL,
	nombre VARCHAR (20) NOT NULL,
	apellido VARCHAR (20) NOT NULL,
	direccion VARCHAR (30),
	telefono VARCHAR (12),
	PRIMARY KEY (nAlum)
);

------Creación tabla NOTAS--------
DROP TABLE if exists NOTAS cascade;
CREATE TABLE NOTAS (
	nAlum NUMERIC NOT NULL,	
	codA VARCHAR(50) NOT NULL,
	fecha DATE,
	nota DECIMAL(4,1),
	FOREIGN KEY (nAlum) REFERENCES ALUMNO(nAlum),
	FOREIGN KEY (codA) REFERENCES ASIGNATURA(codA)
);

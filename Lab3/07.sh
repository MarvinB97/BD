--7--
-- Crear la vista ViewAsignaturasSmas
CREATE VIEW ViewAsignaturasSmas AS
SELECT nombreA, depto
FROM ASIGNATURA
WHERE depto = 'Sistemas';

SELECT * FROM ViewAsignaturasSmas;


-- Crear la vista VistaAlumno
CREATE VIEW VistaAlumno AS
SELECT nAlum, nombre, apellido, telefono
FROM ALUMNO;

SELECT * FROM VistaAlumno;







--BANCA UV---

-- Tabla Empleado
CREATE TABLE Empleado (
    dniEmp VARCHAR(20) PRIMARY KEY,
    nomEmp VARCHAR(50),
    sexEmp CHAR(1),
    fecNac DATE,
    fecAlt DATE,
    salEmp DECIMAL(10, 2),
    codSuc VARCHAR(10),
    dirEmp VARCHAR(100),
    FOREIGN KEY (codSuc) REFERENCES Sucursal(codSuc)
);

-- Tabla Sucursal
CREATE TABLE Sucursal (
    codSuc VARCHAR(10) PRIMARY KEY,
    dirSuc VARCHAR(100),
    telSuc VARCHAR(15)
);

-- Tabla Cuenta
CREATE TABLE Cuenta (
    nroCta VARCHAR(20) PRIMARY KEY,
    fecAbre DATE,
    codSuc VARCHAR(10),
    FOREIGN KEY (codSuc) REFERENCES Sucursal(codSuc)
);

-- Tabla Cliente
CREATE TABLE Cliente (
    nDICli VARCHAR(20) PRIMARY KEY,
    nomCli VARCHAR(50),
    dirCli VARCHAR(100),
    telCli VARCHAR(15)
);

-- Tabla Titular
CREATE TABLE Titular (
    nroCta VARCHAR(20),
    nDICli VARCHAR(20),
    numOrdTit INT,
    PRIMARY KEY (nroCta, nDICli),
    FOREIGN KEY (nroCta) REFERENCES Cuenta(nroCta),
    FOREIGN KEY (nDICli) REFERENCES Cliente(nDICli)
);

-- Tabla Cajero
CREATE TABLE Cajero (
    codCaj VARCHAR(10) PRIMARY KEY,
    tipCaj VARCHAR(20),
    codSuc VARCHAR(10),
    FOREIGN KEY (codSuc) REFERENCES Sucursal(codSuc)
);

-- Tabla Operacion
CREATE TABLE Operacion (
    codCaj VARCHAR(10),
    fechaOpe DATE,
    horaOpe TIME,
    tipOpe VARCHAR(20),
    DescripcOpe VARCHAR(100),
    vlrOpe DECIMAL(10, 2),
    nroCta VARCHAR(20),
    PRIMARY KEY (codCaj, fechaOpe, horaOpe),
    FOREIGN KEY (codCaj) REFERENCES Cajero(codCaj),
    FOREIGN KEY (nroCta) REFERENCES Cuenta(nroCta)
);

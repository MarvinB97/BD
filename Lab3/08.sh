--8--
--BANCA UV---

-- Tabla Empleado
CREATE TABLE Empleado (
    dniEmp VARCHAR(20) PRIMARY KEY,
    nomEmp VARCHAR(50),
    sexEmp CHAR(1),
    fecNac DATE,
    fecAlt DATE,
    salEmp INT,
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
    vlrOpe INT,
    nroCta VARCHAR(20),
    PRIMARY KEY (codCaj, fechaOpe, horaOpe),
    FOREIGN KEY (codCaj) REFERENCES Cajero(codCaj),
    FOREIGN KEY (nroCta) REFERENCES Cuenta(nroCta)
);





-- Insertar datos en la tabla Sucursal
INSERT INTO Sucursal (codSuc, dirSuc, telSuc) VALUES
('S1', 'Dirección Sucursal 1', '123456789'),
('S2', 'Dirección Sucursal 2', '987654321');


SELECT * FROM SUCURSAL;

-- Insertar datos en la tabla Empleado
INSERT INTO Empleado (dniEmp, nomEmp, sexEmp, fecNac, fecAlt, salEmp, codSuc, dirEmp) VALUES
('123456789', 'Empleado 1', 'M', '1990-01-01', '2020-01-01', 50000, 'S1', 'Dirección Empleado 1'),
('987654321', 'Empleado 2', 'F', '1995-05-05', '2019-02-01', 60000, 'S2', 'Dirección Empleado 2');

SELECT * FROM EMPLEADO;

-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (nDICli, nomCli, dirCli, telCli) VALUES
('C1', 'Cliente 1', 'Dirección Cliente 1', '111111111'),
('C2', 'Cliente 2', 'Dirección Cliente 2', '222222222');

SELECT * FROM CLIENTE;

-- Insertar datos en la tabla Cuenta
INSERT INTO Cuenta (nroCta, fecAbre, codSuc) VALUES
('Cta1', '2020-01-01', 'S1'),
('Cta2', '2019-02-01', 'S2');

SELECT * FROM CUENTA;

-- Insertar datos en la tabla Titular
INSERT INTO Titular (nroCta, nDICli, numOrdTit) VALUES
('Cta1', 'C1', 1),
('Cta2', 'C2', 2);

SELECT * FROM TITULAR;

-- Insertar datos en la tabla Cajero
INSERT INTO Cajero (codCaj, tipCaj, codSuc) VALUES
('CJ1', 'Tipo Cajero 1', 'S1'),
('CJ2', 'Tipo Cajero 2', 'S2');

SELECT * FROM CAJERO;

-- Insertar datos en la tabla Operacion
INSERT INTO Operacion (codCaj, fechaOpe, horaOpe, tipOpe, DescripcOpe, vlrOpe, nroCta) VALUES
('CJ1', '2020-01-01', '12:00:00', 'Depósito', 'Descripción Operación 1', 1000, 'Cta1'),
('CJ2', '2019-02-01', '15:30:00', 'Retiro', 'Descripción Operación 2', 500, 'Cta2');

SELECT * FROM OPERACION;
DROP DATABASE IF EXISTS Vehiculos;
CREATE DATABASE Vehiculos;
USE Vehiculos;

-- Tabla MARCA
CREATE TABLE Marca
(
    id_marca INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre_marca VARCHAR(50) UNIQUE NOT NULL,
    PRIMARY KEY(id_marca)
);

-- Tabla COMBUSTIBLE
CREATE TABLE Combustible
(
    id_combustible INTEGER(1) NOT NULL AUTO_INCREMENT,
    tipo_combustible VARCHAR(15) UNIQUE NOT NULL,
    PRIMARY KEY(id_combustible)
);

-- Tabla CHASIS
CREATE TABLE Chasis
(
    id_chasis INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre_chasis VARCHAR(50) UNIQUE NOT NULL,
    ejes INTEGER(1) NOT NULL,
    PRIMARY KEY (id_chasis)
);

-- Tabla CARROCERIA
CREATE TABLE Carroceria
(
    id_carroceria INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre_carroceria VARCHAR(50) UNIQUE NOT NULL,
    id_marca_carroceria INTEGER(10) NOT NULL,
    asientos INTEGER(1) NOT NULL,
    PRIMARY KEY(id_carroceria),
    FOREIGN KEY(id_marca_carroceria) REFERENCES Marca(id_marca)
);

-- Tabla MOTOR
CREATE TABLE Motor
(
    id_motor INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre_motor VARCHAR(50) UNIQUE NOT NULL,
    cilindrada INTEGER(4) NOT NULL,
    potencia INTEGER(3) NOT NULL,
    id_combustible INTEGER(1) NOT NULL,
    id_marca_motor INTEGER(10) NOT NULL,
    PRIMARY KEY(id_motor),
    FOREIGN KEY(id_combustible) REFERENCES Combustible(id_combustible),
    FOREIGN KEY(id_marca_motor) REFERENCES Marca(id_marca)
);

-- Tabla VEHICULO
CREATE TABLE Vehiculo
(
    id_modelo_vehiculo INTEGER(10) NOT NULL AUTO_INCREMENT,
    nombre_modelo VARCHAR(50) NOT NULL,
    anio YEAR NOT NULL,
    id_marca_vehiculo INTEGER(10) NOT NULL,
    id_carroceria INTEGER(10) NOT NULL,
    id_chasis INTEGER(10) NOT NULL,
    id_motor INTEGER(10) NOT NULL,
    PRIMARY KEY(id_modelo_vehiculo),
    FOREIGN KEY(id_marca_vehiculo) REFERENCES Marca(id_marca),
    FOREIGN KEY(id_carroceria) REFERENCES Carroceria(id_carroceria),
    FOREIGN KEY(id_chasis) REFERENCES Chasis(id_chasis),
    FOREIGN KEY(id_motor) REFERENCES Motor(id_motor)
);

-- Se insertan los valores de la tabla Marca:
INSERT INTO Marca (nombre_marca) VALUES ('CUMMINS');        -- id_marca == 1
INSERT INTO Marca (nombre_marca) VALUES ('CHEVROLET');      -- id_marca == 2
INSERT INTO Marca (nombre_marca) VALUES ('TOYOTA');         -- id_marca == 3
INSERT INTO Marca (nombre_marca) VALUES ('FORD');           -- id_marca == 4
INSERT INTO Marca (nombre_marca) VALUES ('IVECO');          -- id_marca == 5
INSERT INTO Marca (nombre_marca) VALUES ('MERCEDES');       -- id_marca == 6
INSERT INTO Marca (nombre_marca) VALUES ('PEUGEOT');        -- id_marca == 7
INSERT INTO Marca (nombre_marca) VALUES ('RENAULT');        -- id_marca == 8
INSERT INTO Marca (nombre_marca) VALUES ('PENTAPOL');       -- id_marca == 9
INSERT INTO Marca (nombre_marca) VALUES ('MWM');            -- id_marca == 10

-- Se insertan los valores de la tabla Combustible:
INSERT INTO Combustible (tipo_combustible) VALUES ('NAFTA');         -- id_combustible == 1
INSERT INTO Combustible (tipo_combustible) VALUES ('GASOIL');        -- id_combustible == 2

-- Se insertan los valores de la tabla Chasis:
INSERT INTO Chasis (nombre_chasis, ejes) VALUES ('BARANDA BAJA', 3);        -- id_chasis == 1
INSERT INTO Chasis (nombre_chasis, ejes) VALUES ('LARG. PARALELOS', 3);     -- id_chasis == 2
INSERT INTO Chasis (nombre_chasis, ejes) VALUES ('ORIGINAL', 2);            -- id_chasis == 3
INSERT INTO Chasis (nombre_chasis, ejes) VALUES ('UTILITARIO', 3);          -- id_chasis == 4

-- Se insertan los valores de la tabla Carroceria:
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('CHASIS CON CABINA', 6, 1);        -- id_carroceria == 1
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('FURGON', 6, 5);                   -- id_carroceria == 2
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('HACHBACK 5 PUERTAS', 2, 3);       -- id_carroceria == 3
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('PICK-UP CABINA DOBLE', 3, 3);     -- id_carroceria == 4
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('PICK-UP CABINA SIMPLE', 3, 2);    -- id_carroceria == 5
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('SEDAN 5 PUERTAS', 3, 3);          -- id_carroceria == 6
INSERT INTO Carroceria (nombre_carroceria, id_marca_carroceria, asientos) VALUES ('UTILITARIO', 7, 3);               -- id_carroceria == 7

-- Se insertan los valores de la tabla Motor:
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('1.4 8V', 1398, 95, 1, 2);     -- id_motor == 1
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('1.8 VVTI', 1799, 125, 1, 3);  -- id_motor == 2
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('1.9 DCI', 1899, 115, 2, 7);   -- id_motor == 3
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('3.0 TD', 2992, 145, 2, 3);    -- id_motor == 4
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('2.8 TDI', 2799, 170, 2, 3);   -- id_motor == 5
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('OM 352', 5675, 140, 2, 1);    -- id_motor == 6
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('ISBE P5', 5800, 220, 2, 1);   -- id_motor == 7
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('2.8 TDCI', 2801, 160, 2, 10); -- id_motor == 8
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('2.2 CDI', 2193, 132, 2, 6);   -- id_motor == 9
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('1.6 16V', 1599, 115, 1, 8);   -- id_motor == 10
INSERT INTO Motor (nombre_motor, cilindrada, potencia, id_combustible, id_marca_motor) VALUES ('2.5 TD', 2489, 150, 2, 5);    -- id_motor == 11

-- Se insertan los valores de la tabla Vehiculo:
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('ONIX LTZ', 2012, 2, 3, 3, 1);            -- id_modelo_vehiculo == 1
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('COROLLA XLI', 1999, 3, 6, 3, 2);         -- id_modelo_vehiculo == 2
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('PARTNER FURGON', 1999, 7, 7, 3, 3);      -- id_modelo_vehiculo == 3
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('HILUX SRV 4X4', 1995, 3, 4, 3, 4);       -- id_modelo_vehiculo == 4
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('HILUX SRX 4X4', 2008, 3, 4, 3, 5);       -- id_modelo_vehiculo == 5
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('HILUX SR 4X2', 2008, 3, 5, 3, 5);        -- id_modelo_vehiculo == 6
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('LS1114/36', 1971, 2, 1, 2, 6);           -- id_modelo_vehiculo == 7
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('CARGO 1730', 1992, 2, 1, 1, 7);          -- id_modelo_vehiculo == 8
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('S10 CD', 1995, 2, 5, 3, 8);              -- id_modelo_vehiculo == 9
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('SPRINTER 515 CDI-CH', 2000, 2, 2, 3, 9); -- id_modelo_vehiculo == 10
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('SANDERO EXPRESSION', 2016, 2, 3, 3, 10); -- id_modelo_vehiculo == 11
INSERT INTO Vehiculo (nombre_modelo, anio, id_marca_vehiculo, id_carroceria, id_chasis, id_motor) VALUES ('TURBO DAILY', 1998, 2, 2, 4, 11);        -- id_modelo_vehiculo == 12

-- Obtener el nombre del modelo junto al nombre del motor y el combustible de aquellos vehículos lanzados después del año 2000.
SELECT V.nombre_modelo, V.anio, M.nombre_motor, Com.tipo_combustible
FROM Vehiculo AS V
INNER JOIN Motor AS M
    ON V.id_motor = M.id_motor
INNER JOIN Combustible AS Com
    ON M.id_combustible = Com.id_combustible
WHERE V.anio > 2000;

-- Obtener una lista con los nombres de los modelos y su potencia de aquellos vehículos que tengan chasis original, ordenados de manera ascendente según dicha potencia.
SELECT V.nombre_modelo, M.potencia
FROM Vehiculo AS V
INNER JOIN Motor AS M
    ON V.id_motor = M.id_motor
INNER JOIN Chasis AS Ch
    ON V.id_chasis = Ch.id_chasis
WHERE Ch.nombre_chasis LIKE 'ORIGINAL'
ORDER BY M.potencia ASC;

-- Obtener el promedio de cilindradas de los motores agrupados por su tipo de combustible.
SELECT Com.tipo_combustible, AVG(M.cilindrada) AS Promedio_Cilindradas
FROM Motor AS M
INNER JOIN Combustible As Com
    ON M.id_combustible = Com.id_combustible
GROUP BY Com.tipo_combustible;

-- Actualizar el nombre del combustible GASOIL por DIESEL.
UPDATE Combustible SET tipo_combustible = 'DIESEL' WHERE tipo_combustible LIKE 'GASOIL';

-- Eliminar los modelos de vehículo con mayor y con menor potencia registrados
DELETE FROM Vehiculo WHERE id_modelo_vehiculo = (SELECT id_modelo_vehiculo FROM Vehiculo V JOIN motor M ON V.id_motor = M.id_motor ORDER BY potencia DESC LIMIT 1);
DELETE FROM Vehiculo WHERE id_modelo_vehiculo = (SELECT id_modelo_vehiculo FROM Vehiculo V JOIN motor M ON V.id_motor = M.id_motor ORDER BY potencia ASC LIMIT 1);

-- Otra opcion
DELETE FROM Vehiculo WHERE id_modelo_vehiculo IN(SELECT V.id_modelo_vehiculo FROM Vehiculo AS V INNER JOIN Motor AS M ON V.id_motor = M.id_motor WHERE M.potencia = (SELECT MAX(potencia) FROM Motor));
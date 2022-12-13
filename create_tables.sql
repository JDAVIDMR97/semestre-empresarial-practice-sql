CREATE DATABASE create_tables;
-- 1.1.Crea una tabla �Company� con las siguientes columnas y restricciones:
--�Id (entero, �nico, identificador)
--�Name (�nico, texto de longitud no mayor a 150).
--�Address (texto, con l�mite de longitud m�xima).
CREATE TABLE Company (
Id int NOT NULL PRIMARY KEY,
Name VARCHAR(150) UNIQUE,
Address VARCHAR (255),
);

SELECT * FROM Company;

--1.2.Crea una tabla �Status� con las siguientes columnas y restricciones:
--�Id (entero, identificador �nico)
--�Name (texto �nico con longitud no mayor a 50).

CREATE TABLE Status (
Id int PRIMARY KEY,
NAME VARCHAR (50) UNIQUE,
);

SELECT * FROM Status;

exec SP_RENAME 'Status.NAME','Name','COLUMN';

--1.3.Crea una tabla �Projects� con las siguientes columnas y restricciones:
--�Id (entero, identificador �nico).
--�Name (�nico, texto de longitudno mayor a 150).
--�StartDate (fecha de inicio).
--�Deadline (fecha l�mitede entrega). 
--�FinishedOn (fecha en que se entrega el proyecto)
--�StatusId(entero, identificador del Status).

CREATE TABLE Projects (
Id int PRIMARY KEY,
Name VARCHAR(150) UNIQUE,
StartDate DATETIME,
Deadline DATETIME,
FinishedOn DATETIME,
StatusId int,
FOREIGN KEY (StatusId)
REFERENCES Status(Id),
);

SELECT * FROM Projects

--1.4.Crea una tabla �Employees� con las siguientes columnas y restricciones:
--�Id (entero, �nico, identificador)
--�FirstName (texto de longitud no mayor a 50
--�LastName (texto de longitud no mayor a 50
--�Email (�nico, texto de longitud no mayor a 100).
--�Phone (�nico, texto de longitud no mayor a 12).
--�.Salary (decimal).

CREATE TABLE Employees (
Id int PRIMARY KEY,
FristName VARCHAR (50),
LasteName Varchar (50),
Email VARCHAR (100) UNIQUE ,
Phone VARCHAR (12) UNIQUE,
Salary DECIMAL, 
);

SELECT * FROM Employees

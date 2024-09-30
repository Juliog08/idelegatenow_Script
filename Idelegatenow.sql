--CREATE DATABASE IDELEGATENOW
--GO
--USE IDELEGATENOW

CREATE TABLE Mensajes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FechaHoraCreacion DATETIME NOT NULL,
    Al NVARCHAR(50) NOT NULL,
    Mensaje NVARCHAR(MAX) NOT NULL
);

CREATE TABLE Envios (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    MensajeId INT FOREIGN KEY REFERENCES Mensajes(Id),
    FechaHoraEnvio DATETIME NOT NULL,
    CodigoConfirmacionTwilio NVARCHAR(100) NOT NULL
);


CREATE TABLE TwilioCredentials (
    Id INT PRIMARY KEY IDENTITY,
    AccountSid NVARCHAR(255),
    AuthToken NVARCHAR(255),
	fromPhoneNumber NVARCHAR(25)
);

INSERT INTO TwilioCredentials (AccountSid, AuthToken,fromPhoneNumber)
VALUES ('', '','+');


SELECT * FROM MENSAJES 
SELECT * FROM ENVIOS 
SELECT * FROM TwilioCredentials
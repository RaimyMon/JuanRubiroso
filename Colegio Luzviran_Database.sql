CREATE DATABASE	Colegio_DB
GO

USE Colegio_DB
GO


CREATE TABLE [Alumno](
  [Alumno_ID] INT PRIMARY KEY IDENTITY(1,1),
  [Nombre] NVARCHAR(50) NOT NULL,
  [Apellido] NVARCHAR(50) NOT NULL,
  [Direccion] NVARCHAR(250) NOT NULL,
  [FechaNacimiento] DATE,
  [Cedula] NVARCHAR(15) NOT NULL UNIQUE,
  [Edad] INT NOT NULL,
  [Telefono] NVARCHAR(15) NOT NULL,
);

CREATE TABLE [Profesor](
  [Profesor_ID] INT PRIMARY KEY IDENTITY(1,1),
  [Nombre] NVARCHAR(50) NOT NULL,
  [Apellido] NVARCHAR(50) NOT NULL,
  [Asignatura] NVARCHAR(50) NOT NULL,
  [Seccion] NVARCHAR(10) NOT NULL,
);

CREATE TABLE [Asignatura](
  [Asignatura_ID] INT PRIMARY KEY IDENTITY(1,1),
  [Nombre] NVARCHAR(50) NOT NULL,
  [Profesor_ID] INT NOT NULL,
  CONSTRAINT FK_Profesor_Asignatura FOREIGN KEY ([Profesor_ID]) REFERENCES Profesor ([Profesor_ID])
);

CREATE TABLE [Pago](
  [Factura_ID] INT PRIMARY KEY IDENTITY(1,1),
  [Alumno_ID] INT NOT NULL,
  [Asignatura_ID] INT NOT NULL,
  [Profesor_ID] INT NOT NULL,
);

CREATE TABLE [Seccion](
  [Seccion_ID] INT PRIMARY KEY IDENTITY(1,1),
  [Seccion] NVARCHAR(50),
  [Profesor_ID] INT NOT NULL,
  [Asignatura_ID] INT NOT NULL,
);

CREATE TABLE [Calificaciones](
  [Calificacion_ID] INT PRIMARY KEY IDENTITY(1,1),
  [Alumno_ID] INT NOT NULL,
  [Profesor_ID] INT NOT NULL,
  [Asignatura_ID] INT NOT NULL,
  [Seccion_ID] INT NOT NULL,
);


INSERT INTO [dbo].[Alumno] VALUES
	('Pablo', 'Rodríguez', 'Villa Altagracia, San Cristobal Barrio Invi', '1993-04-25', '000-1234567-1', 29, '809-111-1111'),
	('Claudia', 'Reyes', 'Villa Altagracia, San Cristobal Barrio Duarte', '1995-05-13', '000-1234567-2', 27, '809-111-2222'),
	('Eduardo', 'Hernandez', 'Villa Altagracia, San Cristobal Barrio Duarte', '1993-06-21', '000-1234567-3', 29, '809-111-3333'),
	('Javier', 'Martinez', 'Villa Altagracia, San Cristobal Barrio Duarte', '1991-05-02', '000-1234567-4', 31, '809-111-4444'),
	('Raquel', 'Garcia', 'Villa Altagracia, San Cristobal Las 10 casitas', '1994-09-25', '000-1234567-5', 28, '809-111-5555'),
	('Marta', 'Gonzales', 'Villa Altagracia, San Cristobal Colina II', '1995-01-04', '000-1234567-6', 27, '809-111-6666'),
	('Katherine', 'De La Cruz', 'Villa Altagracia, San Cristobal Barrio Invi', '1996-10-14', '000-1234567-7', 26, '809-111-7777'),
	('Rosa', 'Lopez', 'Villa Altagracia, San Cristobal Barrio San Francisco', '2002-11-16', '000-1234567-8', 20, '809-111-8888'),
	('Daniel', 'De Los Santos', 'Villa Altagracia, San Cristobal Barrio Duarte', '1996-06-24', '000-1234567-9', 26, '809-111-9999'),
	('Franklin', 'Matos', 'Villa Altagracia, San Cristobal Barrio Quinto Centenario', '1992-10-23', '000-2234567-1', 30, '809-222-1111');
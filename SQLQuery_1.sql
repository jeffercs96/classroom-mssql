CREATE DATABASE classroomdb;

CREATE TABLE Archivos (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion NVARCHAR(255),
    Ruta NVARCHAR(1024) -- Ajusta la longitud según tus necesidades
);

-- Create a new database called 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE classroomdb
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'DatabaseName'
)
CREATE DATABASE DatabaseName
GO

select * from classroomdb.dbo.Archivos

-- Path: SQLQuery_2.sql
USE classroomdb
GO
-- Crea una tabla persona en la base de datos classroomdb que use uuid como llave primaria y tenga los campos nombre, apellido, edad, fecha de nacimiento y correo electrónico
CREATE TABLE Persona (
    uuid UNIQUEIDENTIFIER PRIMARY KEY,
    nombre NVARCHAR(255),
    apellido NVARCHAR(255),
    edad INT,
    fecha_nacimiento DATE,
    correo NVARCHAR(255)
);

CREATE PROC sp_guardar_documento(
    @descripcion NVARCHAR(255),
    @ruta NVARCHAR(1024)
)
AS
BEGIN
    INSERT INTO Archivos (Descripcion, Ruta)
    VALUES (@descripcion, @ruta)
END


SELECT * FROM Archivos

-- Create a new stored procedure called 'sddasdsadsadadasd' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'sddasdsadsadadasd'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.sddasdsadsadadasd
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.sddasdsadsadadasd
    @param1 /*parameter name*/ int /*datatype_for_param1*/ = 0, /*default_value_for_param1*/
    @param2 /*parameter name*/ int /*datatype_for_param1*/ = 0 /*default_value_for_param2*/
-- add more stored procedure parameters here
AS
BEGIN
    -- body of the stored procedure
    SELECT @param1, @param2
END
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.sddasdsadsadadasd 1 /*value_for_param1*/, 2 /*value_for_param2*/
GO
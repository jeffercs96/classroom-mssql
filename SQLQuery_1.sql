CREATE DATABASE classroomdb;

CREATE TABLE Archivos (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion NVARCHAR(255),
    Ruta NVARCHAR(1024) -- Ajusta la longitud según tus necesidades
);
-- Clase 2026-04-17: Recreación de BD academia con procedimiento almacenado
-- Profesor: Hector Jairo Ortiz Pabon
-- Tema: Stored Procedures + DROP/CREATE DATABASE

USE master;
GO

-- Eliminar la base de datos si existe
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'academia')
BEGIN
    ALTER DATABASE academia SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE academia;
END
GO

-- Crear la base de datos
CREATE DATABASE academia;
GO
USE academia;
GO

-- Procedimiento que crea todas las tablas
CREATE PROCEDURE sp_crear_academia
AS
BEGIN
    CREATE TABLE programa (
        id_programa int PRIMARY KEY,
        nom_programa char(30)
    );

    CREATE TABLE estudiante (
        id_estudiante int PRIMARY KEY,
        nom_estudiante char(30),
        id_programa int,
        FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
    );

    CREATE TABLE curso (
        id_curso int PRIMARY KEY,
        nom_curso char(30),
        id_programa int,
        FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
    );

    CREATE TABLE profesor (
        id_profesor int PRIMARY KEY,
        nom_profesor char(30),
        id_curso int,
        FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
    );

    CREATE TABLE inscripcion (
        id_matricula int PRIMARY KEY,
        id_estudiante int,
        id_curso int,
        FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
        FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
    );

    PRINT 'Tablas creadas exitosamente.';
END
GO

-- Ejecutar el procedimiento
EXEC sp_crear_academia;
GO

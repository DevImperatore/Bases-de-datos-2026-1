USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'academia')
BEGIN
    ALTER DATABASE academia SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE academia;
END
GO

CREATE DATABASE academia;
GO
USE academia;
GO

IF OBJECT_ID('sp_crear_tablas', 'P') IS NOT NULL
    DROP PROCEDURE sp_crear_tablas;
GO

CREATE PROCEDURE sp_crear_tablas
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
        nota DECIMAL(2,1),
        semestre int,
        FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
        FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
        CONSTRAINT CK_inscripcion_nota CHECK (nota >= 0 AND nota <= 5)
    );

    PRINT 'Tablas creadas exitosamente.';
END
GO

EXEC sp_crear_tablas;
GO

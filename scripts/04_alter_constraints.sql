-- ============================================================
-- EDICIÓN DE RESTRICCIONES — Base de datos: academia
-- Agrega NOT NULL a columnas de nombre en todas las tablas
-- ============================================================

USE academia;
GO

ALTER TABLE programa   ALTER COLUMN nom_programa   CHAR(30) NOT NULL;
ALTER TABLE estudiante ALTER COLUMN nom_estudiante CHAR(30) NOT NULL;
ALTER TABLE curso      ALTER COLUMN nom_curso      CHAR(30) NOT NULL;
ALTER TABLE profesor   ALTER COLUMN nom_profesor   CHAR(30) NOT NULL;
GO

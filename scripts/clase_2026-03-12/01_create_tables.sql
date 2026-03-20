-- ============================================================
-- CLASE 2026-03-12 — Creación de tablas
-- Base de datos: academia
-- ============================================================

USE academia;
GO

-- 1. programa (sin dependencias)
CREATE TABLE programa (
    id_programa  INT          NOT NULL,
    nom_programa CHAR(30)     NOT NULL,
    CONSTRAINT PK_programa PRIMARY KEY (id_programa)
);
GO

-- 2. curso (depende de programa)
CREATE TABLE curso (
    id_curso    INT       NOT NULL,
    nom_curso   CHAR(30)  NOT NULL,
    id_programa INT       NULL,
    CONSTRAINT PK_curso PRIMARY KEY (id_curso),
    CONSTRAINT FK_curso_programa FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
);
GO

-- 3. estudiante (depende de programa)
CREATE TABLE estudiante (
    id_estudiante  INT       NOT NULL,
    nom_estudiante CHAR(30)  NOT NULL,
    id_programa    INT       NULL,
    CONSTRAINT PK_estudiante PRIMARY KEY (id_estudiante),
    CONSTRAINT FK_estudiante_programa FOREIGN KEY (id_programa) REFERENCES programa(id_programa)
);
GO

-- 4. profesor (depende de curso)
CREATE TABLE profesor (
    id_profesor  INT       NOT NULL,
    nom_profesor CHAR(30)  NOT NULL,
    id_curso     INT       NULL,
    CONSTRAINT PK_profesor PRIMARY KEY (id_profesor),
    CONSTRAINT FK_profesor_curso FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);
GO

-- 5. inscripcion (depende de estudiante y curso)
CREATE TABLE inscripcion (
    id_matricula  INT  NOT NULL,
    id_estudiante INT  NULL,
    id_curso      INT  NULL,
    CONSTRAINT PK_inscripcion PRIMARY KEY (id_matricula),
    CONSTRAINT FK_inscripcion_estudiante FOREIGN KEY (id_estudiante) REFERENCES estudiante(id_estudiante),
    CONSTRAINT FK_inscripcion_curso      FOREIGN KEY (id_curso)      REFERENCES curso(id_curso)
);
GO

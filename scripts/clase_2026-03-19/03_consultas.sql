-- ============================================================
-- CLASE 2026-03-19 — Consultas
-- Base de datos: academia
-- ============================================================

USE academia;
GO

-- Prueba COUNT - número total de estudiantes
SELECT COUNT(*) "NUMERO DE ESTUDIANTES" FROM estudiante;


-- 1A - Mostrar nombre de estudiantes matriculados en Ingeniería de Sistemas
--      (conociendo el código del programa)
SELECT nom_estudiante
FROM estudiante
WHERE id_programa = 417;


-- 1B - Mismo resultado desconociendo el código (producto cartesiano)
SELECT e.nom_estudiante
FROM estudiante e, programa p
WHERE e.id_programa = p.id_programa
  AND p.nom_programa = 'INGENIERIA DE SISTEMAS';


-- 1C - Mismo resultado desconociendo el código (subconsulta)
SELECT nom_estudiante
FROM estudiante
WHERE id_programa = (
    SELECT id_programa
    FROM programa
    WHERE nom_programa = 'INGENIERIA DE SISTEMAS'
);


-- 1D - Mostrar nombre de estudiantes que han matriculado cursos con Jairo Ortiz Pabón
-- Versión producto cartesiano
SELECT nom_estudiante
FROM estudiante E, inscripcion I, profesor P
WHERE E.id_estudiante = I.id_estudiante
  AND I.id_curso = P.id_curso
  AND P.nom_profesor = 'JAIRO ORTIZ PABON';

-- Versión JOIN
SELECT E.nom_estudiante
FROM estudiante E
JOIN inscripcion I ON E.id_estudiante = I.id_estudiante
JOIN profesor P    ON I.id_curso = P.id_curso
WHERE P.nom_profesor = 'JAIRO ORTIZ PABON';


-- 1E - Número de estudiantes de Ingeniería de Sistemas usando JOIN
SELECT COUNT(*) "NUMERO DE ESTUDIANTES INGENIERIA DE SISTEMAS"
FROM estudiante e JOIN programa p ON e.id_programa = p.id_programa
WHERE p.nom_programa = 'INGENIERIA DE SISTEMAS';


-- 1F - Mayor ID de la tabla profesor (función MAX)
SELECT MAX(id_profesor) "MAYOR ID PROFESOR" FROM profesor;


-- 1G - Menor ID de la tabla profesor (función MIN)
SELECT MIN(id_profesor) "MENOR ID PROFESOR" FROM profesor;


-- 1H - Número de estudiantes por programa (GROUP BY + COUNT)
SELECT id_programa, COUNT(*) "CANTIDAD ESTUDIANTES"
FROM estudiante
GROUP BY id_programa;

-- Variante: mostrar solo programas distintos a 415, 416, 417 (NOT IN)
SELECT id_programa, COUNT(*)
FROM estudiante
WHERE id_programa NOT IN (415, 416, 417)
GROUP BY id_programa;


-- 1I - Número de estudiantes por programa mostrando el nombre (no el id)
-- Versión producto cartesiano
SELECT p.nom_programa, COUNT(*) "CANTIDAD ESTUDIANTES"
FROM estudiante e, programa p
WHERE e.id_programa = p.id_programa
GROUP BY p.nom_programa;

-- Versión JOIN
SELECT p.nom_programa, COUNT(*) "CANTIDAD ESTUDIANTES"
FROM estudiante e JOIN programa p ON e.id_programa = p.id_programa
GROUP BY p.nom_programa;

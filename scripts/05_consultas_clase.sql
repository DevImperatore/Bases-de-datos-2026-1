USE academia;
GO

-- ============================================
-- EJERCICIOS DE CLASE
-- ============================================

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


-- 1D - Mostrar nombre de estudiantes que han matriculado cursos con el profesor
--      Jairo Ortiz Pabón (desconociendo el id_profesor)

-- Versión producto cartesiano
SELECT nom_estudiante
FROM estudiante E, inscripcion I, profesor P
WHERE E.id_estudiante = I.id_estudiante
  AND I.id_curso = P.id_curso
  AND P.nom_profesor = 'JAIRO ORTIZ PABON';

-- Versión JOIN (más legible)
SELECT E.nom_estudiante
FROM estudiante E
JOIN inscripcion I ON E.id_estudiante = I.id_estudiante
JOIN profesor P    ON I.id_curso = P.id_curso
WHERE P.nom_profesor = 'JAIRO ORTIZ PABON';

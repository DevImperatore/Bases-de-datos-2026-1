use academia;
GO
-- 1. Nombre, asignaturas cursadas y promedio de cada estudiante

SELECT e.nom_estudiante "ESTUDIANTE", COUNT(*) "ASIGNATURAS CURSADAS", CAST(AVG(i.nota) AS DECIMAL(3,2)) "PROMEDIO"
FROM estudiante e JOIN inscripcion i ON e.id_estudiante = i.id_estudiante
GROUP BY e.nom_estudiante;
-- 2. Mismo resultado solo para Ingeniería de Sistemas
SELECT e.nom_estudiante "ESTUDIANTE", COUNT(*) "ASIGNATURAS CURSADAS", CAST(AVG(i.nota) AS DECIMAL (3,2)) "PROMEDIO"
FROM estudiante e
JOIN inscripcion i ON e.id_estudiante = i.id_estudiante
JOIN programa p ON e.id_programa = p.id_programa
WHERE p.nom_programa = 'INGENIERIA DE SISTEMAS'
GROUP BY e.nom_estudiante;
-- 3. Nombre del programa y su promedio general
SELECT p.nom_programa "PROGRAMA", CAST(AVG(i.nota) AS DECIMAL(3,2)) "PROMEDIO"
FROM programa p
JOIN estudiante e ON p.id_programa   = e.id_programa
JOIN inscripcion i ON e.id_estudiante = i.id_estudiante
GROUP BY p.nom_programa;
-- 4. Mejor y peor promedio de Ingeniería Civil
SELECT MAX(promedio) "MEJOR PROMEDIO",
       MIN(promedio) "PEOR PROMEDIO"
FROM (
    SELECT CAST(AVG(i.nota) AS DECIMAL(3,2)) promedio
    FROM estudiante e
    JOIN inscripcion i ON e.id_estudiante = i.id_estudiante
    JOIN programa p    ON e.id_programa   = p.id_programa
    WHERE p.nom_programa = 'INGENIERIA CIVIL'
    GROUP BY e.id_estudiante
) sub;

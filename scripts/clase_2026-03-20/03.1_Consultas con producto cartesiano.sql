-- 1. Nombre, asignaturas cursadas y promedio de cada estudiante
SELECT e.nom_estudiante          "ESTUDIANTE",
       COUNT(*)                  "ASIGNATURAS CURSADAS",
       CAST(AVG(i.nota) AS DECIMAL(3,1)) "PROMEDIO"
FROM estudiante e, inscripcion i
WHERE e.id_estudiante = i.id_estudiante
GROUP BY e.nom_estudiante;


-- 2. Solo Ingeniería de Sistemas
SELECT e.nom_estudiante          "ESTUDIANTE",
       COUNT(*)                  "ASIGNATURAS CURSADAS",
       CAST(AVG(i.nota) AS DECIMAL(3,1)) "PROMEDIO"
FROM estudiante e, inscripcion i, programa p
WHERE e.id_estudiante = i.id_estudiante
  AND e.id_programa   = p.id_programa
  AND p.nom_programa  = 'INGENIERIA DE SISTEMAS'
GROUP BY e.nom_estudiante;


-- 3. Promedio por programa
SELECT p.nom_programa            "PROGRAMA",
       CAST(AVG(i.nota) AS DECIMAL(3,1)) "PROMEDIO"
FROM programa p, estudiante e, inscripcion i
WHERE p.id_programa   = e.id_programa
  AND e.id_estudiante = i.id_estudiante
GROUP BY p.nom_programa;


-- 4. Mejor y peor promedio de Ingeniería Civil
SELECT MAX(promedio)             "MEJOR PROMEDIO",
       MIN(promedio)             "PEOR PROMEDIO"
FROM (
    SELECT CAST(AVG(i.nota) AS DECIMAL(3,1)) promedio
    FROM estudiante e, inscripcion i, programa p
    WHERE e.id_estudiante = i.id_estudiante
      AND e.id_programa   = p.id_programa
      AND p.nom_programa  = 'INGENIERIA CIVIL'
    GROUP BY e.id_estudiante
) sub;

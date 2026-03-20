USE academia;
GO

-- ============================================================
-- CLASE 2026-03-20 — ALTER TABLE + UPDATE
-- Agregar columnas nota y semestre a la tabla inscripcion
-- ============================================================

-- 1. Agregar columna nota (decimal 3 digitos, 2 decimales)
ALTER TABLE inscripcion ADD nota DECIMAL(3,2);
GO

-- 2. Agregar columna semestre (entero)
ALTER TABLE inscripcion ADD semestre INT;
GO

-- 3. Constraint CHECK: nota debe estar entre 0 y 5
ALTER TABLE inscripcion
ADD CONSTRAINT CK_inscripcion_nota CHECK (nota >= 0 AND nota <= 5);
GO

-- 4. Asignar semestre 2026-1 a todas las filas
UPDATE inscripcion SET semestre = 20261;
GO

-- 5. Actualizar notas por inscripcion
UPDATE inscripcion SET nota = 3.2  WHERE id_matricula = 1;
UPDATE inscripcion SET nota = 3.0  WHERE id_matricula = 2;
UPDATE inscripcion SET nota = 3.7  WHERE id_matricula = 3;
UPDATE inscripcion SET nota = 3.2  WHERE id_matricula = 4;
UPDATE inscripcion SET nota = 4.3  WHERE id_matricula = 5;
UPDATE inscripcion SET nota = 2.3  WHERE id_matricula = 6;
UPDATE inscripcion SET nota = 3.0  WHERE id_matricula = 7;
UPDATE inscripcion SET nota = 3.9  WHERE id_matricula = 8;
UPDATE inscripcion SET nota = 3.4  WHERE id_matricula = 9;
UPDATE inscripcion SET nota = 2.3  WHERE id_matricula = 10;
UPDATE inscripcion SET nota = 3.8  WHERE id_matricula = 11;
UPDATE inscripcion SET nota = 3.0  WHERE id_matricula = 12;
UPDATE inscripcion SET nota = 3.0  WHERE id_matricula = 13;
UPDATE inscripcion SET nota = 3.9  WHERE id_matricula = 14;
UPDATE inscripcion SET nota = 2.3  WHERE id_matricula = 15;
UPDATE inscripcion SET nota = 2.3  WHERE id_matricula = 16;
UPDATE inscripcion SET nota = 2.3  WHERE id_matricula = 17;
UPDATE inscripcion SET nota = 3.2  WHERE id_matricula = 18;
UPDATE inscripcion SET nota = 4.3  WHERE id_matricula = 19;
UPDATE inscripcion SET nota = 3.0  WHERE id_matricula = 20;
UPDATE inscripcion SET nota = 3.0  WHERE id_matricula = 21;
UPDATE inscripcion SET nota = 3.6  WHERE id_matricula = 22;
UPDATE inscripcion SET nota = 1.8  WHERE id_matricula = 23;
UPDATE inscripcion SET nota = 1.9  WHERE id_matricula = 24;
UPDATE inscripcion SET nota = 2.0  WHERE id_matricula = 25;
UPDATE inscripcion SET nota = 2.4  WHERE id_matricula = 26;
UPDATE inscripcion SET nota = 2.3  WHERE id_matricula = 27;
UPDATE inscripcion SET nota = 3.3  WHERE id_matricula = 28;
UPDATE inscripcion SET nota = 2.6  WHERE id_matricula = 29;
UPDATE inscripcion SET nota = 1.3  WHERE id_matricula = 30;
UPDATE inscripcion SET nota = 3.6  WHERE id_matricula = 31;
UPDATE inscripcion SET nota = 3.4  WHERE id_matricula = 32;
UPDATE inscripcion SET nota = 3.2  WHERE id_matricula = 33;
GO

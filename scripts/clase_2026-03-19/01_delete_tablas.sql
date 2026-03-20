-- ============================================================
-- CLASE 2026-03-19 — Borrar filas de todas las tablas
-- Por instrucción del profesor
-- Orden: respetar foreign keys (hijas primero)
-- ============================================================

USE academia;
GO

DELETE FROM inscripcion;
DELETE FROM profesor;
DELETE FROM estudiante;
DELETE FROM curso;
DELETE FROM programa;
GO

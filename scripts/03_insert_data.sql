-- ============================================================
-- INSERCIÓN DE DATOS — Base de datos: academia
-- ============================================================

USE academia;
GO

-- programa
INSERT INTO programa VALUES (415, 'INGENIERIA CIVIL');
INSERT INTO programa VALUES (416, 'INGENIERIA AMBIENTAL');
INSERT INTO programa VALUES (417, 'INGENIERIA DE SISTEMAS');
GO

-- curso
INSERT INTO curso VALUES (501, 'MODELO DE DATOS',           417);
INSERT INTO curso VALUES (502, 'PROGRAMACION EN PYTHON',    417);
INSERT INTO curso VALUES (503, 'RESISTENCIA DE MATERIALES', 415);
INSERT INTO curso VALUES (504, 'PAVIMENTOS',                415);
INSERT INTO curso VALUES (505, 'CALIDAD DEL AIRE',          416);
GO

-- estudiante
INSERT INTO estudiante VALUES (1001, 'JERONIMO',       415);
INSERT INTO estudiante VALUES (1002, 'LORENA',         415);
INSERT INTO estudiante VALUES (1003, 'JUAN JOSE',      415);
INSERT INTO estudiante VALUES (1004, 'ALEJANDRO',      415);
INSERT INTO estudiante VALUES (1005, 'LUIS FELIPE',    415);
INSERT INTO estudiante VALUES (1006, 'SEBASTIAN',      415);
INSERT INTO estudiante VALUES (1007, 'JUAN PABLO',     416);
INSERT INTO estudiante VALUES (1008, 'EMANUEL',        416);
INSERT INTO estudiante VALUES (1009, 'JUAN DAVID',     416);
INSERT INTO estudiante VALUES (1010, 'MANUELA',        416);
INSERT INTO estudiante VALUES (1011, 'PAULINA',        416);
INSERT INTO estudiante VALUES (1012, 'JHON LEYSON',    416);
INSERT INTO estudiante VALUES (1013, 'DANIEL',         417);
INSERT INTO estudiante VALUES (1014, 'ADRIAN DAVID',   417);
INSERT INTO estudiante VALUES (1015, 'ANDRES FELIPE',  417);
INSERT INTO estudiante VALUES (1016, 'LEANDRO',        417);
INSERT INTO estudiante VALUES (1017, 'SARA',           417);
INSERT INTO estudiante VALUES (1018, 'EMMANUEL',       417);
GO

-- profesor
INSERT INTO profesor VALUES (11, 'JAIRO ORTIZ PABON',  501);
INSERT INTO profesor VALUES (22, 'ELKIN LUBIN ARIAS',  502);
INSERT INTO profesor VALUES (33, 'MAURICIO RAMIREZ',   503);
INSERT INTO profesor VALUES (44, 'EMILCY HERNANDEZ',   504);
INSERT INTO profesor VALUES (55, 'JORGE BEDOYA',       504);
GO

-- inscripcion
INSERT INTO inscripcion VALUES  (1, 1001, 501);
INSERT INTO inscripcion VALUES  (2, 1002, 501);
INSERT INTO inscripcion VALUES  (3, 1003, 501);
INSERT INTO inscripcion VALUES  (4, 1004, 501);
INSERT INTO inscripcion VALUES  (5, 1005, 502);
INSERT INTO inscripcion VALUES  (6, 1006, 502);
INSERT INTO inscripcion VALUES  (7, 1007, 502);
INSERT INTO inscripcion VALUES  (8, 1008, 502);
INSERT INTO inscripcion VALUES  (9, 1009, 503);
INSERT INTO inscripcion VALUES (10, 1010, 503);
INSERT INTO inscripcion VALUES (11, 1011, 503);
INSERT INTO inscripcion VALUES (12, 1012, 503);
INSERT INTO inscripcion VALUES (13, 1013, 504);
INSERT INTO inscripcion VALUES (14, 1014, 504);
INSERT INTO inscripcion VALUES (15, 1015, 504);
INSERT INTO inscripcion VALUES (16, 1016, 504);
INSERT INTO inscripcion VALUES (17, 1017, 504);
INSERT INTO inscripcion VALUES (18, 1018, 504);
INSERT INTO inscripcion VALUES (19, 1001, 504);
INSERT INTO inscripcion VALUES (20, 1002, 504);
GO

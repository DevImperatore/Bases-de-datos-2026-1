# Bases de Datos — ITM 2026-1

**Materia:** Desarrollo de Bases de Datos
**Profesor:** Hector Jairo Ortiz Pabon
**Motor:** SQL Server 2022 (SSMS)
**Base de datos:** `academia`

Sistema académico con programas, cursos, estudiantes, profesores e inscripciones.

## Estructura

```
scripts/
├── clase_2026-03-12/                — DDL: Creación de BD y tablas
│   ├── 00_create_database.sql       — CREATE DATABASE academia
│   ├── 01_create_tables.sql         — CREATE TABLE (5 tablas con PK y FK)
│   ├── 02_alter_constraints.sql     — ALTER: NOT NULL en columnas de nombre
│   └── 03_insert_datos.sql          — INSERT datos iniciales
│
├── clase_2026-03-19/                — DML: DELETE, INSERT, consultas
│   ├── 01_delete_tablas.sql         — DELETE respetando orden FK
│   ├── 02_insert_datos.sql          — Reinserción completa (datos actualizados)
│   └── 03_consultas.sql             — SELECT, COUNT, MAX, MIN, GROUP BY, subconsultas
│
├── clase_2026-03-20/                — ALTER TABLE, JOINs, producto cartesiano
│   ├── 01_alter_inscripcion.sql     — ALTER: nota DECIMAL + semestre INT + CHECK + UPDATE notas
│   ├── 02_consultas_join.sql        — Consultas con INNER JOIN (2-3 tablas)
│   ├── 03_consultas_producto_cartesiano.sql  — Mismas consultas con producto cartesiano
│   └── taller_reyes_0320.sql        — Taller entregado (ALTER + UPDATE)
│
├── clase_2026-04-17/                — Stored Procedures
│   └── 01_recrear_bd_con_procedimiento.sql  — DROP DB + CREATE PROCEDURE sp_crear_academia
│
docs/
└── notas_clase_historico.md         — Notas de clase con INSERT completos
```

## Esquema de tablas

```
programa ──1:N──> estudiante
programa ──1:N──> curso
curso    ──1:N──> profesor
curso    ──1:N──> inscripcion <──N:1── estudiante
```

## Cómo restaurar desde cero

Opción 1 — Manual:
```
1. scripts/clase_2026-03-12/00_create_database.sql
2. scripts/clase_2026-03-12/01_create_tables.sql
3. scripts/clase_2026-03-12/02_alter_constraints.sql
4. scripts/clase_2026-03-19/02_insert_datos.sql        (datos más recientes)
5. scripts/clase_2026-03-20/01_alter_inscripcion.sql   (agrega nota + semestre)
```

Opción 2 — Con procedimiento almacenado:
```
1. scripts/clase_2026-04-17/01_recrear_bd_con_procedimiento.sql
2. scripts/clase_2026-03-19/02_insert_datos.sql
3. scripts/clase_2026-03-20/01_alter_inscripcion.sql
```

## Convención de commits

| Prefijo | Cuándo usarlo |
|---------|--------------|
| `clase YYYY-MM-DD:` | Scripts o consultas de una clase |
| `feat:` | Nueva tabla, vista, stored procedure |
| `fix:` | Corrección de un script |
| `refactor:` | Reorganización de archivos |
| `taller:` | Entrega de taller específico |

## Temas cubiertos

- [x] DDL: CREATE, ALTER, DROP
- [x] DML: INSERT, UPDATE, DELETE
- [x] DQL: SELECT, WHERE, GROUP BY, HAVING, ORDER BY
- [x] JOINs: INNER, LEFT, RIGHT, FULL OUTER
- [x] Subconsultas
- [x] Funciones de agregación: COUNT, MAX, MIN, AVG, SUM
- [x] Constraints: PK, FK, CHECK, NOT NULL, UNIQUE, DEFAULT, IDENTITY
- [x] Stored Procedures: CREATE PROCEDURE, EXEC
- [x] Álgebra Relacional: σ, π, ⋈, ∪, −, ∩, ×, ÷, ρ
- [ ] Cursores
- [ ] T-SQL avanzado: variables, IF/ELSE, WHILE

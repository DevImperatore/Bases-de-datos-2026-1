# Bases de Datos — ITM

Materia de Bases de Datos. SQL Server 2022.

## Base de datos: `academia`

Sistema académico con programas, cursos, estudiantes, profesores e inscripciones.

## Estructura

```
scripts/
├── 01_create_database.sql        — Crea la base de datos (general)
├── clase_2026-03-12/
│   ├── 01_create_tables.sql      — Creación de tablas con PK y FK
│   ├── 02_alter_constraints.sql  — Restricciones NOT NULL
│   └── 03_insert_datos.sql       — Inserción inicial de datos
└── clase_2026-03-19/
    ├── 01_delete_tablas.sql      — Borrar filas de todas las tablas
    ├── 02_insert_datos.sql       — Reinserción de datos nuevos
    └── 03_consultas.sql          — Consultas COUNT, MAX, MIN, GROUP BY, JOIN
```

## Cómo restaurar desde cero

Ejecutar los scripts en orden en SSMS:

```
1. scripts/01_create_database.sql
2. scripts/clase_2026-03-12/01_create_tables.sql
3. scripts/clase_2026-03-12/02_alter_constraints.sql
4. scripts/clase_2026-03-12/03_insert_datos.sql
```

## Convención de commits

| Prefijo | Cuándo usarlo |
|---------|--------------|
| `clase YYYY-MM-DD` | Scripts o consultas de una clase |
| `feat:` | Nueva tabla, vista, stored procedure |
| `fix:`  | Corrección de un script |
| `refactor:` | Reorganización de archivos |
| `taller:` | Entrega de taller específico |

Ejemplo: `clase 2026-03-19 — consultas GROUP BY y JOIN`

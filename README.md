# Bases de Datos — ITM

Materia de Bases de Datos. SQL Server 2025.

## Base de datos: `academia`

Sistema académico con programas, cursos, estudiantes, profesores e inscripciones.

## Estructura

```
scripts/
├── 01_create_database.sql   — Crea la base de datos
├── 02_create_tables.sql     — Crea todas las tablas con sus PK y FK
└── 03_insert_data.sql       — Inserta los datos del ejercicio inicial
```

## Cómo restaurar desde cero

Ejecutar los scripts en orden en SSMS o con sqlcmd:

```bash
sqlcmd -S . -No -i scripts/01_create_database.sql
sqlcmd -S . -No -i scripts/02_create_tables.sql
sqlcmd -S . -No -i scripts/03_insert_data.sql
```

## Convención de commits

| Prefijo | Cuándo usarlo |
|---------|--------------|
| `feat:` | Nueva tabla, vista, stored procedure |
| `data:` | Nuevos inserts o modificación de datos |
| `fix:`  | Corrección de un script |
| `taller:` | Entrega de taller específico |

Ejemplo: `taller: taller 03 — consultas con JOIN`

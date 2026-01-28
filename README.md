# hello-sql-practice 🧠🗃️

![SQL](https://img.shields.io/badge/SQL-Practice-blue)
![MySQL](https://img.shields.io/badge/MySQL-Workbench-orange)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Compatible-336791)
![Status](https://img.shields.io/badge/Status-Completed-success)
![License](https://img.shields.io/badge/License-MIT-informational)

Repositorio de práctica personal para reforzar **SQL y bases de datos relacionales**.  
He trabajado consultas reales y ejercicios organizados por temática: lectura de datos, CRUD, diseño de tablas, relaciones, joins y conceptos avanzados.

✅ Basado en el curso: **hello-sql** (mouredev)  
🎯 Objetivo: aplicar estos conocimientos directamente a proyectos backend con **Python + FastAPI**.

---

## 📌 Contenido del repositorio

- **DQL (Consultas)**
  - SELECT, WHERE, DISTINCT, LIKE
  - ORDER BY, LIMIT
  - Operadores lógicos: AND / OR / NOT
  - Funciones agregadas: MIN, MAX, COUNT, SUM, AVG
  - GROUP BY y HAVING
  - CASE, IFNULL, NULL handling

- **DML (Escritura)**
  - INSERT
  - UPDATE
  - DELETE

- **DDL (Diseño / estructura)**
  - CREATE DATABASE / DROP DATABASE
  - CREATE TABLE
  - Constraints: PRIMARY KEY, UNIQUE, NOT NULL, CHECK, DEFAULT
  - AUTO_INCREMENT
  - ALTER TABLE (ADD / MODIFY / DROP / RENAME)

- **Relaciones entre tablas**
  - 1:1, 1:N, N:M (con tabla intermedia)
  - Foreign keys

- **JOINs**
  - INNER JOIN
  - LEFT JOIN
  - RIGHT JOIN
  - UNION

- **Avanzado**
  - INDEX
  - TRIGGERS
  - VIEWS
  - STORED PROCEDURES
  - TRANSACTIONS
  - Concurrencia (conceptos)

---

## 🗂️ Estructura

```bash
hello-sql-practice/
├── 01_Reading/
├── 02_Writing/
├── 03_Database/
├── 04_Tables/
├── 05_Join/
├── 06_Advanced/
└── resources.md

---

▶️ Cómo usarlo
✅ Requisitos

MySQL Server

MySQL Workbench
(También es compatible con PostgreSQL adaptando pequeñas diferencias de sintaxis.)

Ejecutar scripts

Abre MySQL Workbench

Crea una base de datos (opcional)

Abre un .sql

Ejecuta las consultas paso a paso

---

🎯 Aplicación práctica (Backend)

Este repo me sirve para reforzar SQL orientado a desarrollo backend, especialmente para:

Diseñar esquemas con integridad (constraints y relaciones)

Consultas eficientes con JOINs y agregaciones

Preparar integración con APIs (Python / FastAPI)

---

🔗 Referencias

Curso base: hello-sql (mouredev)

Vídeo: https://www.youtube.com/watch?v=OuJerKzV5T0

Repo original: https://github.com/mouredev/hello-sql


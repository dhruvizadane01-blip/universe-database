# Universe Database 🌌

PostgreSQL schema and sample data for a Universe database (galaxies, stars, planets, moons, comets).  
This project was built as part of the **freeCodeCamp Relational Databases Certification** to demonstrate relational design, constraints, and SQL queries.

## 🚀 Technologies
- PostgreSQL
- psql (PostgreSQL CLI)

## 📂 Setup Instructions
Clone the repo and run:

```bash
createdb universe
psql -d universe -f schema.sql
psql -d universe -f data.sql


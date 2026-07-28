# Trading Card Game Database System (Progetto n° 29)

This repository contains the complete conceptual, logical, and physical database design for a digital Trading Card Game (TCG) marketplace. Developed for the Basi di Dati course (Bachelor's in Computer Science, A.A. 2021/2022).

## Domain and Scope

Online card games require a relational database to track card inventories, manage digital booster pack purchases, enforce deck construction rules, run a peer-to-peer card marketplace, and compute player Elo rankings across competitive matchmaking queues.

Our project covers five functional areas:
1. Card Taxonomy: Cataloging card types (creatures, spells, artifacts, rarities, editions) with attribute constraints.
2. Booster Pack Economy: Handling randomized pack purchasing with in-game virtual currency.
3. Collection and Deck Management: Tracking player inventories and verifying deck legality (minimum card count, rarity limits).
4. Peer-to-Peer Marketplace: Managing an auction and trading market where players exchange cards for virtual currency.
5. Matchmaking System: Recording friendly and ranked game outcomes, player rankings, and historical battle logs.

## Database Engineering Process

### Conceptual Modeling (E/R Schema)
We developed a detailed Entity-Relationship diagram (`schema er completo.jpg`) modeling over 15 entities, relationships, cardinalities, and ISA generalization hierarchies for user roles and card types. We also defined an operational glossary to guarantee referential integrity.

### Logical Normalization
We transformed the conceptual schema into a Boyce-Codd Normal Form (BCNF) / 3NF relational schema. ISA hierarchies were resolved using flattened table structures, primary keys were selected for optimal indexing, and multi-valued attributes were normalized into separate relational tables.

### SQL Implementation
- DDL Scripts (`codice per esecuzione e test/`): Created tables, primary/foreign keys, and check constraints.
- DML and Queries: Wrote test datasets and complex SQL queries to verify deck legality, process marketplace purchases, and compute player rankings.
- Triggers: Implemented database triggers to enforce business logic that cannot be covered by declarative check constraints.

### Technical Stack
- Relational DBMS: MySQL / PostgreSQL
- Query Language: SQL (DDL, DML, Triggers, Views)
- Documentation: LaTeX project report (`Documento consegna.pdf`) and E/R Diagram (`schema er completo.jpg`)

## Database Schema Setup and Testing

### Running the SQL Scripts
Navigate to the SQL script directory inside the project folder:
```bash
cd "codice per esecuzione e test"
```

Connect to your MySQL or PostgreSQL database instance and create a fresh database:
```bash
mysql -u root -p
CREATE DATABASE progetto_tcg;
USE progetto_tcg;
```

Execute the schema creation, data insertion, and test query scripts in sequence:
```bash
mysql -u root -p progetto_tcg < 01_schema_create.sql
mysql -u root -p progetto_tcg < 02_insert_data.sql
mysql -u root -p progetto_tcg < 03_queries_and_tests.sql
```

## Project Team

- Alessandro Giacconi
- Gabriele Cusato
- Federico Pierantoni

We thank the Basi di Dati course faculty for their guidance on relational database theory and normalization.

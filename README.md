# London Bus Database

A relational database modelling the operations of a London bus network. Built using SQL, the database tracks buses, drivers, contracts, timetables, and passenger payments.

## 

## Files



|File|Description|
|-|-|
|`SQL\_Bus\_Database.sql`|Full database schema, sample data, and SQL queries|
|`Database\_Design.docx`|Design document including scenario, ER diagram, and relational model tables|
|`Entity\_Relationship\_diagram.jpg`|Entity Relationship Diagram exported from Visual Paradigm|

## 



## Database Structure

The database consists of the following tables:

* **Bus** — stores each bus route with its start and end positions
* **Bus\_model** — stores physical details of each bus model (height, width, levels, seats)
* **Bus\_Bus\_model** — junction table linking buses to their models (many-to-many)
* **Driver** — stores driver personal details, linked to a contract, timetable and bus
* **Contract** — stores salary, holiday allowance, and contract start/end years
* **Timetable** — stores shift times, contracted hours, breaks, and days of work per week
* **Payment** — stores fare records and pass types for passengers boarding a bus

## 

## How to Run

1. Open your SQL client (e.g. MySQL Workbench, DBeaver)
2. Run `SQL\_Bus\_Database.sql` to create the tables and load the sample data
3. The file is structured in sections:

   * Section 1 — Create tables
   * Section 2 — Insert sample data
   * Section 3 — Update statements
   * Section 4 — Single table queries
   * Section 5 — Multi-table queries
   * Section 6 — Delete rows (commented out)
   * Section 7 — Drop tables (commented out)

## 

## Requirements

* MySQL or any standard SQL-compatible database


# DBMS LAB – EXPERIMENTS 1 TO 10

## Database Management System Laboratory

This repository contains the practical work and SQL implementations performed for the **Database Management System (DBMS) Laboratory**. It includes database design, SQL queries, joins, views, stored procedures, triggers, normalization, transactions, indexing, and query optimization.

## Technologies Used

- MySQL
- SQL
- ByteXL / Nimbus
- GitHub

---

# Experiments

## Experiment 1 – ER Diagram for E-Commerce Platform

### Objective
To design an ER diagram for an Indian e-commerce platform and represent entities, attributes, relationships, keys, cardinality, and participation constraints.

### Concepts Covered
- Entity Relationship Model
- Entities and Attributes
- Primary Key
- Composite Key
- Multi-valued Attributes
- Weak Entities
- Specialization
- Cardinality
- Participation Constraints
- Relationships

---

## Experiment 2 – ER to Relational Schema Conversion

### Objective
To convert the designed ER model into a relational database schema and implement the tables using SQL.

### Concepts Covered
- Relational Schema
- Primary Key
- Foreign Key
- `NOT NULL`
- `UNIQUE`
- `CHECK`
- Referential Integrity
- `ON DELETE CASCADE`
- `ON DELETE SET NULL`
- Constraint Violations
- Data Insertion

### Main Tasks
- Create relational tables.
- Define primary and foreign keys.
- Apply integrity constraints.
- Insert sample records.
- Demonstrate constraint violations.

---

## Experiment 3 – Employee-Department-Project Schema

### Objective
To create an Employee-Department-Project database schema and perform different SQL operations on the data.

### Main Tasks
- Create Employee table.
- Create Department table.
- Create Project table.
- Insert employee and project records.
- Perform queries on employee, department, and project data.

### SQL Concepts Covered
- Selection
- Projection
- Aggregate Functions
- `GROUP BY`
- `HAVING`
- `CASE`
- `ORDER BY`

---

## Experiment 4 – Joins, Subqueries and Query Execution

### Objective
To perform advanced SQL queries using joins, subqueries, set operations, and query execution analysis.

### Concepts Covered
- `INNER JOIN`
- `LEFT JOIN`
- Self Join
- Three-Way Join
- Correlated Subqueries
- `EXISTS`
- Simulated `INTERSECT`
- Simulated `EXCEPT`
- `EXPLAIN`

### Main Tasks
- Retrieve data from multiple tables.
- Perform different types of joins.
- Use subqueries for filtering.
- Use `EXISTS`.
- Compare query execution plans using `EXPLAIN`.

---

## Experiment 5 – Views and Recursive CTE

### Objective
To create SQL views for department salary summaries and employee hierarchy and implement recursive queries.

### Concepts Covered
- SQL Views
- Department Salary Summary
- Employee Hierarchy
- View Updatability
- Recursive CTE
- Hierarchical Data

### Main Tasks
- Create department salary summary view.
- Create employee hierarchy view.
- Check view updatability.
- Implement recursive CTE.
- Display reporting relationships.

---

## Experiment 6 – Stored Procedure and Triggers

### Objective
To create a stored procedure for employee transfer and implement triggers for salary validation and salary auditing.

### Stored Procedure
```text
transfer_employee(emp_id, new_dept_id)
```

### Concepts Covered
- Stored Procedures
- Parameters
- Validation
- Error Handling
- Triggers
- Salary Validation
- Audit Logging
- Exception Handling

### Main Tasks
- Create the `transfer_employee` procedure.
- Validate employee and department details.
- Create salary validation trigger.
- Create salary audit trigger.
- Test different cases.

---

## Experiment 7 – Normalization from UNF to BCNF

### Objective
To identify functional dependencies and normalize a denormalized Sales relation from UNF to BCNF.

### Concepts Covered
- Unnormalized Form (UNF)
- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)
- Boyce-Codd Normal Form (BCNF)
- Functional Dependencies
- Candidate Keys
- Lossless Join
- Dependency Preservation

### Main Tasks
- Identify functional dependencies.
- Convert UNF to 1NF.
- Convert 1NF to 2NF.
- Convert 2NF to 3NF.
- Convert 3NF to BCNF.
- Check lossless decomposition.
- Check dependency preservation.

---

## Experiment 8 – Banking Transactions and Concurrency

### Objective
To implement banking-style transactions and demonstrate transaction control, isolation levels, and concurrency anomalies.

### SQL Commands Covered
- `BEGIN`
- `COMMIT`
- `ROLLBACK`
- `SAVEPOINT`

### Concepts Covered
- Transactions
- Transaction Control
- Partial Failure
- Savepoints
- Isolation Levels
- Concurrency
- Concurrency Anomalies

### Main Tasks
- Perform banking transactions.
- Commit successful transactions.
- Roll back failed transactions.
- Use savepoints.
- Demonstrate isolation levels.
- Simulate concurrency using multiple sessions.

---

## Experiment 9 – Railway Booking Indexing and Query Performance

### Objective
To create a Railway Booking table with at least 5,000 records and compare query performance before and after indexing.

### Concepts Covered
- Database Indexing
- Single-Column Index
- Composite Index
- Query Performance
- `EXPLAIN`
- Execution Plan

### Main Tasks
- Create Railway Booking table.
- Insert at least 5,000 records.
- Execute queries before indexing.
- Create a single-column index.
- Create a composite index.
- Execute queries after indexing.
- Compare execution plans using `EXPLAIN`.

---

## Experiment 10 – Query Optimization

### Objective
To generate a dataset containing at least 10,000 rows, identify slow queries, analyze them using `EXPLAIN`, apply indexing and query rewriting, and compare query performance before and after optimization.

### Concepts Covered
- Query Optimization
- Slow Queries
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- Indexing
- Composite Indexing
- Query Rewriting
- Execution Plans
- Query Performance

### Main Tasks
- Generate at least 10,000 records.
- Identify slow SQL queries.
- Analyze queries using `EXPLAIN`.
- Create appropriate indexes.
- Rewrite inefficient queries.
- Compare query execution before and after optimization.
- Analyze execution plans.

---

# SQL Basic Certification

## SQL Basic Certification

I have also completed a **SQL Basic Certification** to strengthen my knowledge of SQL fundamentals and database concepts.

### Skills Covered

- SQL Basics
- `SELECT` Queries
- Filtering and Sorting
- Aggregate Functions
- `GROUP BY`
- `HAVING`
- Joins
- Subqueries
- Data Manipulation
- Basic Database Operations

### Certificate

**SQL Basic Certification**

The certification demonstrates practical understanding of SQL fundamentals and supports the concepts implemented throughout the DBMS laboratory experiments.

### Certificate File

The certificate is available in the `Certificate` folder of this repository.

```text
Certificate/
└── SQL-Basic-Certificate.pdf
```

You can view it here:

[View SQL Basic Certificate] 

---

# DBMS Concepts Covered

The complete set of experiments covers the following major DBMS concepts:

- ER Modeling
- Entity and Relationship Design
- Cardinality
- Participation Constraints
- Relational Schema
- Primary Keys
- Foreign Keys
- Integrity Constraints
- SQL Queries
- Selection and Projection
- Aggregate Functions
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- Joins
- Subqueries
- Correlated Queries
- `EXISTS`
- Views
- Recursive CTE
- Stored Procedures
- Triggers
- Error Handling
- Functional Dependencies
- Normalization
- 1NF
- 2NF
- 3NF
- BCNF
- Lossless Join
- Dependency Preservation
- Transactions
- `COMMIT`
- `ROLLBACK`
- `SAVEPOINT`
- Isolation Levels
- Concurrency
- Indexing
- Composite Indexing
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- Query Optimization
- Query Rewriting

---

# Repository Structure

```text
DBMS-LAB/
│
├── Experiment-1/
│   └── Experiment-1.sql
│
├── Experiment-2/
│   └── Experiment-2.sql
│
├── Experiment-3/
│   └── Experiment-3.sql
│
├── Experiment-4/
│   └── Experiment-4.sql
│
├── Experiment-5/
│   └── Experiment-5.sql
│
├── Experiment-6/
│   └── Experiment-6.sql
│
├── Experiment-7/
│   └── Experiment-7.sql
│
├── Experiment-8/
│   └── Experiment-8.sql
│
├── Experiment-9/
│   └── Experiment-9.sql
│
├── Experiment-10/
│   └── Experiment-10.sql
│
├── Certificate/
│   └── SQL-Basic-Certificate.pdf
│
└── README.md
```

---

# How to Run the Experiments

1. Open MySQL or the ByteXL/Nimbus SQL environment.
2. Select the required database.
3. Open the SQL file of the required experiment.
4. Execute the SQL commands in the given order.
5. Check the query results and execution outputs.
6. Capture screenshots wherever required for the lab record.
7. Save the SQL file in the corresponding experiment folder.
8. Upload the files to GitHub.

---

# Learning Outcomes

After completing these experiments, I developed practical understanding of:

- Database design using ER diagrams.
- Conversion of ER models into relational schemas.
- Writing and executing SQL queries.
- Using primary and foreign keys.
- Applying integrity constraints.
- Working with joins and subqueries.
- Creating and using SQL views.
- Implementing recursive CTEs.
- Creating stored procedures and triggers.
- Understanding functional dependencies.
- Performing normalization up to BCNF.
- Managing database transactions.
- Understanding concurrency and isolation levels.
- Creating and using indexes.
- Analyzing execution plans.
- Optimizing SQL queries.
- Rewriting inefficient queries for better performance.

---

# Conclusion

This DBMS laboratory repository contains ten practical experiments covering important concepts of database management and SQL. The experiments provide hands-on experience with database design, relational schemas, SQL queries, joins, views, stored procedures, triggers, normalization, transactions, concurrency, indexing, and query optimization.

Along with the laboratory experiments, the repository also includes a **SQL Basic Certification**, demonstrating additional knowledge of SQL fundamentals and database operations.

The complete practical work helps build a strong foundation in **Database Management Systems and SQL**.

---

# Author

**Purvi Nigam**

**B.Tech – Computer Science and Engineering (AI/ML)**

**DBMS Laboratory Practical Work**

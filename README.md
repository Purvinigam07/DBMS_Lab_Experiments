# DBMS LAB – EXPERIMENTS 1 TO 10

## Database Management System Laboratory

This repository contains the SQL implementations and practical work performed for the **Database Management System (DBMS) Laboratory**. The experiments cover ER modeling, relational schema design, SQL queries, joins, views, stored procedures, triggers, normalization, transactions, indexing, and query optimization.

## Technologies Used

- MySQL
- SQL
- ByteXL / Nimbus
- GitHub

## Experiments Included

### Experiment 1 – ER Diagram for E-Commerce Platform

**Objective:**  
Design an ER diagram for an Indian e-commerce platform.

**Entities Covered:**
- Customer
- Product
- Order
- OrderDetail
- Seller
- Category
- Payment
- Delivery
- Address

**Concepts Covered:**
- Primary Key
- Composite Key
- Multi-valued Attributes
- Weak Entities
- Specialization
- Participation Constraints
- Cardinality
- Entity Relationships

---

### Experiment 2 – ER to Relational Schema Conversion

**Objective:**  
Convert the ER diagram into a relational database schema and implement the tables using MySQL.

**Concepts Covered:**
- Relational Schema
- Primary Keys
- Foreign Keys
- `NOT NULL`
- `UNIQUE`
- `CHECK`
- `ON DELETE CASCADE`
- `ON DELETE SET NULL`
- Referential Integrity
- Constraint Violations
- Sample Data Insertion

**Main Tasks:**
- Create relational tables from the ER model.
- Define primary and foreign keys.
- Apply required constraints.
- Insert sample records.
- Demonstrate integrity constraint violations.

---

### Experiment 3 – Employee-Department-Project Schema

**Objective:**  
Create an Employee-Department-Project database schema and perform SQL queries on the data.

**Main Tasks:**
- Create Employee, Department and Project tables.
- Insert at least 30 employees.
- Distribute employees across 5 departments.
- Create 8 projects.
- Perform SQL queries.

**SQL Concepts Covered:**
- Selection
- Projection
- Aggregate Functions
- `GROUP BY`
- `HAVING`
- `CASE`
- `ORDER BY`

---

### Experiment 4 – Joins, Subqueries and Query Execution

**Objective:**  
Perform advanced SQL queries using the Employee schema.

**Concepts Covered:**
- `INNER JOIN`
- `LEFT JOIN`
- Self Join
- Three-Way Join
- Correlated Subqueries
- `EXISTS`
- Simulated `INTERSECT`
- Simulated `EXCEPT`
- `EXPLAIN`

**Main Tasks:**
- Retrieve data from multiple tables.
- Compare records using different joins.
- Use subqueries for advanced filtering.
- Analyze query execution using `EXPLAIN`.

---

### Experiment 5 – Views and Recursive CTE

**Objective:**  
Create SQL views for department salary summaries and employee hierarchy.

**Concepts Covered:**
- SQL Views
- Department Salary Summary
- Employee Hierarchy
- View Updatability
- Recursive CTE
- Recursive Query
- Hierarchical Data

**Main Tasks:**
- Create a department salary summary view.
- Create an employee hierarchy view.
- Test whether views are updatable.
- Implement a recursive CTE to display reporting relationships.

---

### Experiment 6 – Stored Procedure and Triggers

**Objective:**  
Create a stored procedure for employee transfer and implement triggers for salary validation and auditing.

**Stored Procedure:**
```text
transfer_employee(emp_id, new_dept_id)
```

**Concepts Covered:**
- Stored Procedures
- Input Parameters
- Validation
- Error Handling
- Triggers
- Salary Validation
- Audit Logging
- Exception Handling
- Edge Case Testing

**Main Tasks:**
- Create the `transfer_employee` procedure.
- Validate employee and department information.
- Implement a salary validation trigger.
- Implement a salary audit trigger.
- Test different edge cases.

---

### Experiment 7 – Normalization from UNF to BCNF

**Objective:**  
Identify functional dependencies in a denormalized Sales table and normalize it step-by-step from UNF to 3NF and BCNF.

**Concepts Covered:**
- Unnormalized Form (UNF)
- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)
- Boyce-Codd Normal Form (BCNF)
- Functional Dependencies
- Candidate Keys
- Lossless Join
- Dependency Preservation

**Main Tasks:**
- Identify functional dependencies.
- Convert the given Sales table from UNF to 1NF.
- Convert the relation to 2NF.
- Convert the relation to 3NF.
- Convert the relation to BCNF.
- Verify lossless decomposition.
- Verify dependency preservation using SQL queries.

---

### Experiment 8 – Banking Transactions and Concurrency

**Objective:**  
Implement banking-style transactions using SQL transaction commands and demonstrate transaction control and concurrency concepts.

**SQL Commands Covered:**
- `BEGIN`
- `COMMIT`
- `ROLLBACK`
- `SAVEPOINT`

**Concepts Covered:**
- Database Transactions
- Transaction Control
- Partial Failure
- Savepoints
- Isolation Levels
- Concurrency
- Concurrency Anomalies

**Main Tasks:**
- Perform banking transactions.
- Commit successful transactions.
- Roll back failed transactions.
- Use savepoints for partial rollback.
- Demonstrate isolation levels.
- Simulate concurrency anomalies using two sessions.

---

### Experiment 9 – Railway Booking Indexing and Query Performance

**Objective:**  
Create a Railway Booking table containing at least 5,000 records and analyze query performance using indexes and `EXPLAIN`.

**Concepts Covered:**
- Database Indexing
- Single-Column Index
- Composite Index
- Query Performance
- `EXPLAIN`
- Execution Plan
- Query Optimization

**Main Tasks:**
- Create Railway Booking table.
- Insert at least 5,000 records.
- Execute queries before indexing.
- Create a single-column index.
- Create a composite index.
- Execute queries after indexing.
- Compare execution plans using `EXPLAIN`.

---

### Experiment 10 – Query Optimization

**Objective:**  
Generate a dataset containing at least 10,000 rows, identify slow queries, analyze them using `EXPLAIN`, apply indexing and query rewriting, and compare query performance before and after optimization.

**Concepts Covered:**
- Query Optimization
- Slow Queries
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- Indexing
- Composite Indexing
- Query Rewriting
- Execution Plan
- Query Performance

**Main Tasks:**
- Generate a dataset of at least 10,000 rows.
- Identify slow SQL queries.
- Analyze queries using `EXPLAIN`.
- Create appropriate indexes.
- Rewrite inefficient queries.
- Compare query execution before and after optimization.
- Analyze execution plans.

---

## DBMS Concepts Covered

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
- Grouping
- Joins
- Subqueries
- Correlated Queries
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

## Repository Structure

```text
DBMS-LAB/
│
├── Experiment-1/
│   └── ER-Diagram-and-E-Commerce.sql
│
├── Experiment-2/
│   └── Relational-Schema-and-Constraints.sql
│
├── Experiment-3/
│   └── Employee-Department-Project.sql
│
├── Experiment-4/
│   └── Joins-Subqueries-and-Explain.sql
│
├── Experiment-5/
│   └── Views-and-Recursive-CTE.sql
│
├── Experiment-6/
│   └── Stored-Procedure-and-Triggers.sql
│
├── Experiment-7/
│   └── Normalization-UNF-to-BCNF.sql
│
├── Experiment-8/
│   └── Transactions-and-Concurrency.sql
│
├── Experiment-9/
│   └── Railway-Booking-Indexing.sql
│
├── Experiment-10/
│   └── Query-Optimization.sql
│
└── README.md
```

## How to Run

1. Open MySQL or the ByteXL/Nimbus SQL environment.
2. Select the required database.
3. Open the SQL file for the required experiment.
4. Execute the SQL statements in the given order.
5. Check the query results and execution outputs.
6. Capture required screenshots for the lab record.
7. Save the SQL file in the corresponding experiment folder.
8. Upload the files to GitHub.

## Learning Outcomes

After completing these experiments, the following skills are developed:

- Designing database models using ER diagrams.
- Converting ER models into relational schemas.
- Writing and executing SQL queries.
- Working with keys and integrity constraints.
- Using joins and subqueries.
- Creating and working with views.
- Implementing stored procedures and triggers.
- Understanding normalization and functional dependencies.
- Managing database transactions.
- Understanding concurrency and isolation.
- Creating and using indexes.
- Analyzing execution plans.
- Optimizing SQL queries for better performance.

## Conclusion

These ten DBMS experiments provide practical knowledge of database design, SQL programming, normalization, transaction management, indexing, and query optimization. The experiments demonstrate how database concepts can be implemented using MySQL and how SQL queries can be analyzed and optimized for better performance.

## References

- Elmasri, R., & Navathe, S. B. – *Fundamentals of Database Systems*
- Ramakrishnan, R., & Gehrke, J. – *Database Management Systems*
- Date, C. J. – *An Introduction to Database Systems*
- Garcia-Molina, H., Ullman, J. D., & Widom, J. – *Database Systems: The Complete Book*

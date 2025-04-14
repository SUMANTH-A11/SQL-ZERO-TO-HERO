# Online Retail Store Database Project

## Overview
This project provides SQL scripts for managing and querying an online retail store database. It includes schema setup, beginner, intermediate, and advanced SQL tasks to help users practice and improve their SQL skills. The database represents a typical e-commerce system with customers, products, orders, and order details.

## Files in this Repository

### 1. `setup_database.sql`
This file contains the schema setup for the database. It creates the necessary tables (`Customers`, `Products`, `Orders`, and `OrderDetails`) and establishes relationships between them using foreign keys.

- **Purpose**: Initialize the database structure.
- **Usage**: Run this script first to set up the database schema before inserting data or running queries.

### 2. `beginner_tasks.sql`
This file includes beginner-level SQL tasks, focusing on basic data insertion and simple SELECT queries.

#### Features:
- Insert sample data into the tables.
- Retrieve all rows from a table.
- Filter data using simple conditions.

- **Purpose**: Help beginners understand the basics of SQL, such as inserting data and retrieving it using SELECT statements.
- **Usage**: Execute this script after setting up the database to practice basic SQL operations.

### 3. `intermediate_tasks.sql`
This file contains intermediate-level SQL tasks for practicing JOINs, aggregations, and data manipulation.

#### Features:
- JOIN operations to retrieve data from multiple tables.
- Aggregation queries to calculate totals and counts.
- Data modification tasks (e.g., updating and deleting records).

- **Purpose**: Enhance understanding of relational data and perform more complex queries.
- **Usage**: Use this file to practice and explore intermediate SQL concepts.

### 4. `advanced_tasks.sql`
This file includes advanced-level SQL tasks for complex querying, optimization, and database management.

#### Features:
- Advanced JOINs and subqueries.
- Window functions and recursive CTEs.
- Transactions and triggers for data integrity.
- Index optimization and JSON data querying.

- **Purpose**: Challenge users with advanced SQL concepts and techniques.
- **Usage**: Use this file to practice advanced SQL skills and prepare for real-world scenarios.

## How to Use
1. **Setup the Database**:
   - Start by running `setup_database.sql` to create the schema.

2. **Insert Data and Practice Beginner Tasks**:
   - Use `beginner_tasks.sql` to insert sample data and execute simple queries.

3. **Move to Intermediate-Level Tasks**:
   - Run and modify the queries in `intermediate_tasks.sql` to practice JOINs, GROUP BY statements, and data manipulation.

4. **Challenge Yourself with Advanced Tasks**:
   - Explore `advanced_tasks.sql` to learn and implement advanced SQL concepts.

## Prerequisites
- A database management system (DBMS) such as MySQL, PostgreSQL, or any SQL-supported platform.
- A basic understanding of SQL syntax and relational database concepts.

## Notes
- Always back up your database before running UPDATE or DELETE statements.
- Modify the scripts as needed to align with your specific DBMS or project requirements.
- Experiment with the queries to deepen your understanding of SQL.

## Contributing
Contributions to this repository are welcome! If you have additional SQL tasks or improvements, feel free to submit a pull request.

## License
This project is open-source and available under the [MIT License](LICENSE).

---

Happy querying!

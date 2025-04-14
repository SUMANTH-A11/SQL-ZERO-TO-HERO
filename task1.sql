-- Project Title: Online Retail Store Database
-- File: Beginner Level Tasks
-- Description: This file contains beginner-level SQL tasks for getting started with basic queries and data manipulation.

-- Beginner Level Tasks
-- Insert Data
INSERT INTO Customers VALUES (1, 'Alice', 'alice@email.com', '2023-01-10');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@email.com', '2023-02-15');

INSERT INTO Products VALUES (101, 'Laptop', 75000, 10);
INSERT INTO Products VALUES (102, 'Mouse', 500, 100);

INSERT INTO Orders VALUES (1001, 1, '2023-03-01', 75500);

INSERT INTO OrderDetails VALUES (5001, 1001, 101, 1, 75000);
INSERT INTO OrderDetails VALUES (5002, 1001, 102, 1, 500);

-- Simple SELECT Queries
-- Retrieve all data from the Customers table.
SELECT * FROM Customers;

-- Retrieve products with a price greater than 1000.
SELECT * FROM Products WHERE Price > 1000;

-- Additional Notes:
-- 1. These tasks are designed for beginners to practice basic SQL commands.
-- 2. Ensure the database setup script has been executed before running these queries.
-- 3. Experiment by modifying these queries to improve your understanding.

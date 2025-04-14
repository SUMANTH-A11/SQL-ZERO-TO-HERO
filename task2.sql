-- Project Title: Online Retail Store Database
-- File: Intermediate Level Tasks
-- Description: This file contains intermediate-level SQL tasks focusing on JOINs, aggregations, and data manipulation.

-- Intermediate Level Tasks

-- Task 1: Retrieve all orders placed by a specific customer
SELECT * 
FROM Orders
WHERE CustomerID = 1;

-- Task 2: Get the total amount spent by each customer
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY CustomerID;

-- Task 3: Update the stock of a product
UPDATE Products
SET Stock = Stock - 2
WHERE ProductID = 101;

-- Task 4: Find products that are low in stock
SELECT * 
FROM Products
WHERE Stock < 10;

-- Task 5: Add a new column to track product categories
ALTER TABLE Products
ADD Category VARCHAR(50);

-- Task 6: Get the details of the most recent orders
SELECT * 
FROM Orders
ORDER BY OrderDate DESC
LIMIT 5;

-- Task 7: Delete orders older than a specific date
DELETE FROM Orders
WHERE OrderDate < '2023-01-01';

-- Task 8: Find the most purchased product
SELECT P.ProductID, P.ProductName, SUM(OD.Quantity) AS TotalQuantity
FROM Products P
JOIN OrderDetails OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductID, P.ProductName
ORDER BY TotalQuantity DESC
LIMIT 1;

-- JOINs
SELECT o.OrderID, c.Name, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT od.OrderID, p.ProductName, od.Quantity, od.Price
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID;

-- Aggregations
SELECT ProductID, SUM(Quantity * Price) AS TotalSales
FROM OrderDetails
GROUP BY ProductID;

SELECT CustomerID, COUNT(*) AS OrderCount
FROM Orders
GROUP BY CustomerID;

-- Additional Notes:
-- 1. These tasks involve intermediate SQL concepts such as JOINs, GROUP BY, and data manipulation.
-- 2. Ensure you have a backup of your database before running UPDATE or DELETE statements.
-- 3. Experiment with these queries and modify them to suit specific use cases.

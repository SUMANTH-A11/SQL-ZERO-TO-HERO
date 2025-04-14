-- Project Title: Online Retail Store Database
-- File: Advanced Level Tasks
-- Description: This file contains advanced SQL tasks for complex querying, optimization, and database management.

-- Advanced Level Tasks

-- Task 1: Complex Query with Multiple JOINs
SELECT o.OrderID, c.Name AS CustomerName, p.ProductName, od.Quantity, od.Price AS UnitPrice, (od.Quantity * od.Price) AS TotalPrice
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;

-- Task 2: Subqueries
SELECT c.CustomerID, c.Name
FROM Customers c
WHERE c.CustomerID IN (
    SELECT o.CustomerID
    FROM Orders o
    GROUP BY o.CustomerID
    HAVING SUM(o.TotalAmount) > (SELECT AVG(TotalAmount) FROM Orders)
);

-- Task 3: Window Functions
SELECT p.ProductID, p.ProductName, od.Quantity, od.Price, 
       SUM(od.Quantity * od.Price) OVER (PARTITION BY p.ProductID ORDER BY od.OrderID) AS RunningTotal
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID;

-- Task 4: Recursive Common Table Expressions (CTEs)
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT EmployeeID, ManagerID, 1 AS Level
    FROM Employees
    WHERE ManagerID IS NULL
    UNION ALL
    SELECT e.EmployeeID, e.ManagerID, eh.Level + 1
    FROM Employees e
    INNER JOIN EmployeeHierarchy eh ON e.ManagerID = eh.EmployeeID
)
SELECT * FROM EmployeeHierarchy;

-- Task 5: Transactions
START TRANSACTION;
UPDATE Products SET Stock = Stock - 5 WHERE ProductID = 101;
UPDATE Products SET Stock = Stock + 5 WHERE ProductID = 102;
COMMIT;

-- Task 6: Data Validation with Triggers
DELIMITER $$
CREATE TRIGGER prevent_negative_stock
BEFORE UPDATE ON Products
FOR EACH ROW
BEGIN
    IF NEW.Stock < 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Stock cannot be negative!';
    END IF;
END$$
DELIMITER ;

-- Additional Notes:
-- 1. These tasks involve advanced SQL concepts such as recursive queries, window functions, indexing, transactions, and triggers.
-- 2. Ensure you have the necessary permissions and backups before running schema-altering commands.
-- 3. Experiment with and adapt these tasks to suit your specific use cases.

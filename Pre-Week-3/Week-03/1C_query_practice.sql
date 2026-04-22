USE northwind;

-- 1. List products ordered by price ascending
SELECT ProductID, ProductName, UnitPrice FROM Products ORDER BY UnitPrice ASC;

-- 2. At least 100 units on hand, descending price
SELECT * FROM Products WHERE UnitsInStock >= 100 ORDER BY UnitPrice DESC;

-- 3. At least 100 units, descending price, ascending name
SELECT * FROM Products WHERE UnitsInStock >= 100 ORDER BY UnitPrice DESC, ProductName ASC;

-- 4. Total number of distinct customers
SELECT COUNT(DISTINCT CustomerID) AS CustomerCount FROM Orders;

-- 5. Distinct customers by country, largest to smallest
SELECT ShipCountry, COUNT(DISTINCT CustomerID) AS CustomerCount 
FROM Orders 
GROUP BY ShipCountry 
ORDER BY CustomerCount DESC;

-- 6. Less than 25 in stock, 1+ on order, sorted
SELECT * FROM Products 
WHERE UnitsInStock < 25 AND UnitsOnOrder >= 1 
ORDER BY UnitsOnOrder DESC, ProductName ASC;

-- 7. Count of employees per job title
SELECT Title, COUNT(*) AS EmployeeCount FROM Employees GROUP BY Title;

-- 8. Salary between $2000 and $2500 sorted by title
SELECT * FROM Employees WHERE Salary BETWEEN 2000 AND 2500 ORDER BY Title;

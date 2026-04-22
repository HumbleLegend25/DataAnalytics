USE northwind;

-- 1. List product id, product name, and unit price
SELECT ProductID, ProductName, UnitPrice FROM Products;

-- 2. Products where unit price is $7.50 or less
SELECT * FROM Products WHERE UnitPrice <= 7.50;

-- 3. No units on hand, but 1 or more on backorder
SELECT * FROM Products WHERE UnitsInStock = 0 AND UnitsOnOrder > 0;

-- 4. Category identification and Seafood list
-- Part 1: Check category table
SELECT * FROM Categories; 
-- Part 2: List Seafood (Assuming Seafood ID is 8)
SELECT * FROM Products WHERE CategoryID = 8;

-- 5. Find "Tokyo Traders" and their products
-- Part 1: Find the ID
SELECT SupplierID FROM Suppliers WHERE CompanyName = 'Tokyo Traders';
-- Part 2: List products (Assuming ID is 4)
SELECT * FROM Products WHERE SupplierID = 4;

-- 6. Employee counts and Managers
SELECT COUNT(*) FROM Employees;
SELECT * FROM Employees WHERE Title LIKE '%Manager%';

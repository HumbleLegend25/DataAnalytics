USE northwind;

-- 1. Cheapest item price and name
SELECT MIN(UnitPrice) FROM Products;
SELECT ProductName FROM Products WHERE UnitPrice = (SELECT MIN(UnitPrice) FROM Products);

-- 2. Average price (rounded to nearest cent)
SELECT ROUND(AVG(UnitPrice), 2) AS AveragePrice FROM Products;

-- 3. Most expensive item info
SELECT MAX(UnitPrice) FROM Products;
SELECT p.ProductName, s.CompanyName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- 4. Total monthly payroll
SELECT SUM(Salary) AS TotalMonthlyPayroll FROM Employees;

-- 5. High and low salary amounts
SELECT MAX(Salary) AS HighestSalary, MIN(Salary) AS LowestSalary FROM Employees;

-- 6. Supplier item counts
SELECT s.CompanyName, s.SupplierID, COUNT(p.ProductID) AS ItemsSupplied
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName, s.SupplierID;

-- 7. Average price by category
SELECT c.CategoryName, AVG(p.UnitPrice) AS AveragePrice
FROM Categories c
JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 8. Suppliers with at least 5 items
SELECT s.CompanyName, COUNT(p.ProductID) AS ItemsSupplied
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
GROUP BY s.CompanyName
HAVING COUNT(p.ProductID) >= 5;

-- 9. Inventory Value (exclude out of stock)
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM Products
WHERE UnitsInStock > 0
ORDER BY InventoryValue DESC, ProductName ASC;

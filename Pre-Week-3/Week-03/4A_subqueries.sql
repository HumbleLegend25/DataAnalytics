USE northwind;

-- 1. Most expensive product name(s)
SELECT ProductName FROM Products 
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- 2. Least expensive product name and category
SELECT p.ProductName, c.CategoryName FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (SELECT MIN(UnitPrice) FROM Products);

-- 3. Orders via Federal Shipping
SELECT OrderID, ShipName, ShipAddress FROM Orders
WHERE ShipVia = (SELECT ShipperID FROM Shippers WHERE CompanyName = 'Federal Shipping');

-- 4. Order IDs including Sasquatch Ale
SELECT OrderID FROM `Order Details`
WHERE ProductID = (SELECT ProductID FROM Products WHERE ProductName = 'Sasquatch Ale');

-- 5. Name of employee for order 10266
SELECT FirstName, LastName FROM Employees
WHERE EmployeeID = (SELECT EmployeeID FROM Orders WHERE OrderID = 10266);

-- 6. Name of customer for order 10266
SELECT ContactName FROM Customers
WHERE CustomerID = (SELECT CustomerID FROM Orders WHERE OrderID = 10266);

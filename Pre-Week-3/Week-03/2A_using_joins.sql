USE northwind;

-- 1. Product info with Category Name
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName, p.ProductName;

-- 2. Products > $75 with Supplier Name
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName;

-- 3. Products with both Category and Supplier names
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;

-- 4. Germany orders with Shipper name alias
SELECT o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName AS Shipper
FROM Orders o
JOIN Shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany'
ORDER BY Shipper, o.ShipName;

-- 5. Count of orders per Ship Name (Germany only)
SELECT o.ShipName, COUNT(*) AS OrderCount
FROM Orders o
WHERE o.ShipCountry = 'Germany'
GROUP BY o.ShipName;

-- 6. Orders containing 'Sasquatch Ale'
SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM Orders o
JOIN `Order Details` od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale';

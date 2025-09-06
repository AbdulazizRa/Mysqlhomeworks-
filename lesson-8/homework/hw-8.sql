1.Select category,
Sum(stockquantity) as totalquantity 
from products 
group by category
2.SELECT 
AVG(Price) AS AveragePrice
FROM Products
WHERE Category = 'Electronics';
3.SELECT *
FROM Customers
WHERE City LIKE 'L%';
4.SELECT ProductName
FROM Products
WHERE ProductName LIKE '%er';
5.SELECT *
FROM Customers
WHERE Country LIKE '%A';
6.SELECT MAX(Price) AS HighestPrice
FROM Products;
7.SELECT ProductName,StockQuantity,
CASE 
WHEN StockQuantity < 30 THEN 'Low Stock'
ELSE 'Sufficient'
END AS StockStatus
FROM Products;
8.SELECT Country, COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country;
9.Select 
max(OrderID) as max_order,
min(OrderID) as min_order
from orders
10.SELECT DISTINCT o.CustomerID
FROM Orders o
LEFT JOIN Invoices i ON o.CustomerID = i.CustomerID
AND i.InvoiceDate IS NOT NULL
WHERE o.OrderDate >= '2023-01-01' 
AND o.OrderDate < '2023-02-01'
AND i.InvoiceID IS NULL;
11. SELECT productname FROM Products
UNION ALL
SELECT productname FROM Products_Discounted;
12.SELECT productname FROM Products
UNION
SELECT productname FROM Products_Discounted;
13.SELECT 
YEAR(orderdate) AS order_year,
AVG(TotalAmount) AS average_order_amount
FROM Orders
GROUP BY YEAR(orderdate)
ORDER BY order_year;
14.SELECT productname,
CASE 
WHEN price < 100 THEN 'Low'
WHEN price BETWEEN 100 AND 500 THEN 'Mid'
ELSE 'High'
END AS pricegroup
FROM Products;
15.SELECT district_name,[2012],[2013]
INTO population_each_year
FROM (
SELECT district_name, 
year, populationFROM city_population
) AS source
PIVOT (SUM(population) 
FOR year IN ([2012], [2013])
) AS pivot_table;
16.SELECT productid,
SUM(saleamount) AS total_sales
FROM Sales
GROUP BY productid;
17.SELECT productname
FROM Products
WHERE productname LIKE '%oo%';
18.SELECT *
INTO Population_Each_City
FROM (SELECT 
year, district_name, population
FROM city_population
) AS SourceTable
PIVOT (SUM(population)
FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])) AS PivotTable;
19.SELECT TOP 3CustomerID,
SUM(TotalAmount) AS Totalspent
FROM Invoices
GROUP BY CustomerID
ORDER BY Totalspent DESC;
20.SELECT district_name,year,population
FROM Population_Each_Year
UNPIVOT
(population FOR year IN ([2012], [2013])
) AS UnpivotedData;
21.SELECT p.productname,
COUNT(s.saleid) AS times_sold
FROM Products p
JOIN 
Sales s ON p.productid = s.productid
GROUP BY p.productname;
22.SELECT year, 'Bektemir' AS district_name, Bektemir AS population FROM Population_Each_City
UNION ALL
SELECT year, 'Chilonzor' AS district_name, Chilonzor AS population FROM Population_Each_City
UNION ALL
SELECT year, 'Yakkasaroy' AS district_name, Yakkasaroy AS population FROM Population_Each_City;

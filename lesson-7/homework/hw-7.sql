1.Select min(price) as minimum_price from Products
2.Select max(price) as max_price from Products
3.SELECT COUNT(*) AS total_customers FROM Customers;
4.SELECT COUNT(DISTINCT category) AS unique_categories FROM Products;
5.SELECT SUM(SaleAmount) AS total_sales
FROM Sales
WHERE productid = 7;
6.SELECT AVG(age) AS average_age FROM Employees;
7.SELECT departmentname, COUNT(*) AS employee_count
FROM Employees
GROUP BY departmentname;
8.SELECT category, 
MIN(price) AS min_price, 
MAX(price) AS max_price
FROM Products
GROUP BY category;
9.SELECT customer_id, 
SUM(total_amount) AS total_sales
FROM Sales
GROUP BY customer_id;
10.SELECT DepartmentName AS Department, COUNT(EmployeeID) AS EmployeeCount
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(EmployeeID) > 5;
11.SELECT ProductID,
SUM(SaleAmount) AS TotalSales,
AVG(SaleAmount) AS AverageSales
FROM Sales
GROUP BY ProductID;
12.SELECT COUNT(*) AS EmployeeCount
FROM Employees
WHERE DepartmentName = 'HR';
13.SELECT DepartmentName,
MAX(Salary) AS HighestSalary,
MIN(Salary) AS LowestSalary
FROM Employees
GROUP BY DepartmentName;
14.Select Departmentname,
avg(salary) as AvgSalary 
from Employees 
group by DepartmentName
15.SELECT DepartmentName,
AVG(Salary) AS AvgSalary,
COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY 
DepartmentName;
16.SELECT Category,
AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING 
AVG(Price) > 400;
17.SELECT 
YEAR(SaleDate) AS SaleYear,
SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate)
ORDER BYSaleYear;
18.SELECT CustomerID,
COUNT(SaleID) AS NumberOfOrders
FROM Sales
GROUP BY CustomerID
HAVING COUNT(SaleID) >= 3;
19.SELECT DepartmentName,
AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 60000;
20.SELECT Category,
AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category
HAVING AVG(Price) > 150;
21.SELECT CustomerID,
SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
HAVING SUM(SaleAmount) > 1500;
22.SELECT DepartmentName,
SUM(Salary) AS TotalSalary,
AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 65000;
23.WITH OrderSummary AS (SELECT o.CustomerID,
SUM(o.Freight) AS TotalAmount,
MIN(o.Freight) AS LeastPurchase
FROM Sales.Orders o
GROUP BY o.CustomerID)
SELECT 
os.CustomerID,
os.TotalAmount,
os.LeastPurchase
FROM OrderSummary os
WHERE os.TotalAmount > 50;
24.SELECT
YEAR(OrderDate) AS OrderYear,
MONTH(OrderDate) AS OrderMonth,
SUM(TotalAmount) AS TotalSales,
COUNT(DISTINCT ProductID) AS UniqueProductsSold
FROM Orders
GROUP BY
YEAR(OrderDate),
MONTH(OrderDate)
HAVING
COUNT(DISTINCT ProductID) >= 2
ORDER BY
OrderYear,
OrderMonth;
25.SELECT
YEAR(OrderDate) AS OrderYear,
MIN(Quantity) AS MinQuantity,
MAX(Quantity) AS MaxQuantity
FROMOrders
GROUP BY
YEAR(OrderDate)
ORDER BY
OrderYear;








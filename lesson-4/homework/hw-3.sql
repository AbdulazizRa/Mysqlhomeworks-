1.SELECT TOP 5 *
FROM Employees;
2.SELECT DISTINCT Category
FROM Products;
3.SELECT *
FROM Products
WHERE Price > 100;
4.SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';
5.SELECT *
FROM Products
ORDER BY Price ASC;
6.SELECT *
FROM Employees
WHERE Salary >= 60000 AND Department = 'HR';
7.SELECT EmpID,FirstName,LastName,ISNULL(Email, 'noemail@example.com') AS Email
FROM Employees;
8.SELECT *FROM ProductsWHERE Price BETWEEN 50 AND 100;
9.SELECT DISTINCT Category, ProductNameFROM Products;
10.SELECT DISTINCT Category, ProductNameFROM ProductsORDER BY ProductName DESC;
11.SELECT TOP 10 *FROM ProductsORDER BY Price DESC;
12.SELECT EmpID,
COALESCE(FirstName, LastName) AS NameFROM Employees;
13.SELECT DISTINCT Category, PriceFROM Products;
14.SELECT *FROM EmployeesWHERE (Age BETWEEN 30 AND 40) OR Department = 'Marketing';
15.SELECT *
FROM Employees
ORDER BY Salary DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;
16.SELECT *
FROM Products
WHERE Price <= 1000 AND Stock > 50
ORDER BY Stock ASC;
17.SELECT *
FROM Products
WHERE ProductName LIKE '%e%';
18.SELECT *FROM Employees
WHERE Department IN ('HR', 'IT', 'Finance');
19.SELECT *FROM Customers
ORDER BY City ASC, PostalCode DESC;
20.SELECT TOP(5) ProductName, SalesAmount
FROM Products
ORDER BY SalesAmount DESC;
21.SELECT FirstName + ' ' + LastName AS FullName
FROM Employees;
22.SELECT DISTINCT Category, ProductName, Price
FROM Products
WHERE Price > 50;
23.SELECT ProductName, Price
FROM Products
WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);
24.SELECT *
FROM Employees
WHERE Age < 30
  AND Department IN ('HR', 'IT');
 25.SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com%';
26.SELECT *
FROM Employees
WHERE Salary > ALL (SELECT SalaryFROM Employees
WHERE Department = 'Sales');
27.SELECT *
FROM Orders
WHERE OrderDate BETWEEN DATEADD(DAY, -180, LATEST_DATE) AND LATEST_DATE;

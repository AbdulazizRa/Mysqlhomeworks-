.--1.In SQL Server, the BULK INSERT statement is a powerful tool designed to efficiently load large volumes of data from external files into database tables. 
--This operation is significantly faster than inserting data row by row using standard INSERT statements, making it ideal for importing large datasets.
--Purpose of BULK INSERT
--High-Performance Data Loading: Optimized for importing large datasets quickly, reducing the time and resources required compared 
--to individual insert operations.
--Efficient Resource Utilization: Minimizes transaction log usage and reduces locking overhead, which is beneficial for maintaining 
--database performance during large imports.
--Versatility: Supports various file formats, including CSV, TSV, and custom-delimited files, allowing flexibility in data import processes.
---2.CSV (Comma-Separated Values)
--CSV files are plain text files where each line represents a record, and each field within a record is separated by commas. 
--They are widely used for data exchange due to their simplicity and compatibility with various applications.
3.CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Price DECIMAL(10, 2));
4.INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 999.99),
(2, 'Smartphone', 499.99),
(3, 'Tablet', 299.99);
5.SELECT * FROM Employees WHERE Department IS NULL;
6.ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
--7.In SQL Server, comments are used to explain the purpose of a query, making the code more readable and maintainable. 
--There are two primary ways to write comments: single-line comments and multi-line comments.
--Single-Line Comment
--This query retrieves all products with a price greater than $100
SELECT ProductID, ProductName, Price
FROM Products
WHERE Price > 100;
--Multi-Line Comment
--This query retrieves all products with a price greater than $100.
--It includes the ProductID, ProductName, and Price columns.
*/
SELECT ProductID, ProductName, Price
FROM Products
WHERE Price > 100;
8.ALTER TABLE Products
ADD CategoryID INT;
9.CREATE TABLE Categories (
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(100) UNIQUE
--10.An IDENTITY column is a special type of column in a SQL Server table that automatically generates a unique number for each new row inserted. 
--This is particularly useful when you need a unique identifier for each record, such as an ID number.
--When you define a column as IDENTITY, SQL Server takes care of assigning a unique number to that column every time a new row is added. 
--You don't need to manually specify a value for this column during insertion.
11.BULK INSERT Products
FROM 'C:\path\to\your\file.txt'
WITH (
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n',
FIRSTROW = 2 -- Skip header row if present);
12.ALTER TABLE Products
ADD CategoryID INT;
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
--13.Primary Key:
--A primary key uniquely identifies each record in a table.
--It cannot contain NULL values — every row must have a valid, non-null value in the primary key column.
--You can have only one primary key in a table.
--It's often used for the main identifier of a record, like a user ID or product ID.
--Unique Key:
--A unique key also ensures that all values in a column (or group of columns) are different from each other.
--However, unlike a primary key, a unique key can contain NULL values (most databases allow one or more NULLs).
--A table can have multiple unique keys.
--It's typically used when you want to prevent duplicates in a column that isn’t the main identifier, like an email address or phone number.
14.ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive
CHECK (Price > 0);
15.ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
16.SELECT ProductID,ProductName,ISNULL(Price, 0) AS Price,StockFROM Products;
--17.A FOREIGN KEY constraint is used in SQL Server to maintain referential integrity between two related tables. 
--It ensures that a value in one table (the child table) must match a value in another table (the parent table), or be NULL (if allowed).
--Purpose of FOREIGN KEY:
--Enforce relationships between tables (e.g., orders must reference existing customers).
--Prevent invalid data from being inserted — for example, you can't insert a product that belongs to a non-existent category.
--Maintain consistency across related tables by ensuring data integrity.
18.CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,CustomerName VARCHAR(100),Age INT,
CONSTRAINT CHK_Age_Adult CHECK (Age >= 18));.
19.CREATE TABLE ExampleTable (
ID INT IDENTITY(100, 10) PRIMARY KEY,
SomeData VARCHAR(50));
20.CREATE TABLE OrderDetails (OrderID INT,ProductID INT,Quantity INT,
Price DECIMAL(10, 2),PRIMARY KEY (OrderID, ProductID));
--21.ISNULL:
--Takes exactly two arguments.
--Returns the first argument if it’s not NULL; otherwise, returns the second argument.
--Mainly used in SQL Server. 
--For example:
SELECT ISNULL(Price, 0) AS Price FROM Products;
--COALESCE:
--Takes two or more arguments.
--Returns the first non-NULL value from the list of arguments.
--It’s ANSI standard SQL and supported by most database systems.
--For example:
SELECT COALESCE(DiscountPrice, SalePrice, Price, 0) AS EffectivePrice FROM Products;
22.CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100) UNIQUE);
23.ALTER TABLE ChildTable
ADD CONSTRAINT FK_Child_Parent
FOREIGN KEY (ParentID)
REFERENCES ParentTable(ParentID)
ON DELETE CASCADE
ON UPDATE CASCADE;

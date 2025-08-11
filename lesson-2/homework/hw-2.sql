1.CREATE TABLE Employees (EmpID INT,Name VARCHAR(50),Salary DECIMAL(10, 2));
2.Insert into Employees values (1, 'Bob Johnson', 100.000), (2, 'Alice Johanson', 105.000), (3, 'Tom Bradley', 110.000);
3.UPDATE Employees
SET Salary = 7000
WHERE EmpID = 1;
4.Delete from Employees where EmpID = 2;
--5.DELETE
--Removes specific rows from a table based on a WHERE condition.
--Can be used to delete all rows if no WHERE clause is specified.
--Deletes rows one by one, logging each deletion (can be slower).
--Triggers and constraints are fired.
--The table structure and its schema remain intact.
--You can roll back a DELETE if within a transaction.
--TRUNCATE
--Removes all rows from a table quickly and efficiently.
--Does not log individual row deletions; logs the deallocation of data pages.
--Resets identity counters (in some DBMS).
--Cannot use a WHERE clause — it deletes everything.
--The table structure remains, but the data is gone.
--Usually cannot be rolled back depending on the database system.
--DROP
--Completely removes the entire table (or database object) from the database.
--Deletes the table structure, data, indexes, triggers, and permissions.
--Irreversible action — once dropped, the table no longer exists.
--Use with caution!
6.Alter table employees
Alter column Name varchar(100);
7.Alter table Employees 
Add department varchar(50);
8.ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;
9.Create table Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50)
10.TRUNCATE TABLE Employees
11.INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'Engineering'
UNION ALL
SELECT 2, 'Sales'
UNION ALL
SELECT 3, 'Customer Support'
UNION ALL
SELECT 4, 'Legal'
UNION ALL
SELECT 5, 'Research and Development';
12.UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;.
13.DELETE FROM Employees;
14.ALTER TABLE Employees
DROP COLUMN Department;
15.ALTER TABLE Employees
RENAME TO StaffMembers;
16.DROP TABLE Departments;
17.CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(255),
Category VARCHAR(100),
Price DECIMAL(10, 2),
StockQuantity INT
18.CONSTRAINT chk_price_positive CHECK (Price > 0));
19.ALTER TABLE Products
ADD COLUMN StockQuantity INT DEFAULT 50;
20.ALTER TABLE Products
RENAME COLUMN Category TO ProductCategory;
21.INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Desk Chair', 'Furniture', 149.99, 50),
(3, 'Coffee Maker', 'Appliances', 79.99, 50),
(4, 'Bluetooth Speaker', 'Electronics', 59.99, 50),
(5, 'Office Lamp', 'Furniture', 39.99, 50);
22.SELECT *INTO Products_BackupFROM Products;
23.ALTER TABLE Products RENAME TO Inventory;
24.ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
25.ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);

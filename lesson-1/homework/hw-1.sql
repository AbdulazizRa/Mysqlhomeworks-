--1.	Data means pieces of information or facts. On their own, they don’t mean much until we organize or understand them.
--A database is like a digital storage box where we keep a lot of related information in one place so we can find and use it easily. 
--A relational database is a type of database that stores data in tables (also called relations), with each table consisting of rows and columns. The data in different tables can be related to each other through keys. 
--A table is like a grid made of rows and columns used to organize data in a relational database. Each row is one record (like one person’s info), and each column is one type of detail (like name, age, or email).
--2.	Data Storage and Management
--Security
--Backup and Recovery
--Performance Tuning
--Support for Stored Procedures and Triggers
--3.	When connecting to SQL Server, there are two main types of authentication modes you can use:
--Windows Authentication - In this mode, SQL Server uses your Windows login credentials (like your username and password) to allow access. If you're logged into a Windows computer, you don’t need to provide separate credentials to connect to SQL Server.
--Key Point: It's secure because it relies on Windows security, and you don't have to remember a separate password for SQL Server.
--SQL Server Authentication - This mode requires you to enter a username and password specific to SQL Server, not linked to your Windows login. It's useful when you're connecting from outside a Windows environment or need separate accounts for SQL Server.
--Key Point: You must create a SQL Server-specific login and password for each user.
4. Create database schoolDB 
5. Create table Students (StudnetID int Primary Key, Name varchar(50), Age int)
--6. SQL Server is the database system where your data is stored and managed.
--SSMS is the tool that you use to interact with SQL Server visually, making tasks like writing and executing SQL queries easier.
--SQL is the language used to communicate with SQL Server and perform operations on the data (like creating, updating, and querying tables).
--7.DQL – Data Query Language 
SELECT first_name, last_name, hire_date
FROM employees
WHERE department = 'Sales'
ORDER BY hire_date DESC;
--DML – Data Manipulation Language
--Purpose: Manipulate actual data stored in tables (insert, modify, delete), but not the schema.
INSERT INTO Students (student_id, name, age) VALUES (1, 'Alice', 20);
UPDATE Students
SET age = 21
WHERE student_id = 1
DELETE FROM Students
WHERE student_id = 1
--DDL – Data Definition Language
--Purpose: Define or alter the structure of database objects—tables, views, indexes, schemas.
CREATE TABLE Students (student_id INT PRIMARY KEY,  name VARCHAR(100),age INT);
ALTER TABLE Students
ADD COLUMN email VARCHAR(100);
DROP TABLE Students;
TRUNCATE TABLE Students;
--DCL – Data Control Language
--Purpose: Control access and permissions on database objects—grant or revoke user/role privileges.
GRANT SELECT, INSERT ON Students TO teacher_role
REVOKE UPDATE ON Students FROM teacher_role
--TCL – Transaction Control Language
--Purpose: Manage database transactions to ensure atomicity, consistency, isolation, durability (ACID properties).
BEGIN TRANSACTION
INSERT INTO Employees VALUES (5, 'Bob', 'IT', 6000)
UPDATE Employees SET salary = salary + 500 WHERE emp_id = 5
8.Insert into Students Values (1, 'Alice', 20),(2, 'Bob', 22),(3, 'Cara', 19)
--9.download AdventureWorksDW2022.bak
--Copy into SQL Server backup folder
--Open SSMS and connect to SQL Server
--Use Restore Database wizard or T?SQL
--In SSMS: select Device ? Add .bak ? OK ? (Files tab: relocate if needed) ? OK
--In T?SQL: run RESTORE DATABASE …WITH REPLACE, STATS=5
--Verify the database and query data
--Grant permissions if access-denied errors occur

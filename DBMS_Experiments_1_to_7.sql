CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    Budget DECIMAL(12,2) NOT NULL
);
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    DeptID INT,
    ProjectID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);
INSERT INTO Department (DeptID, DeptName) VALUES
(101, 'Computer Science'),
(102, 'Human Resources'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Research and Development');

INSERT INTO Project (ProjectID, ProjectName, Budget) VALUES
(201, 'AI Chatbot', 800000),
(202, 'E-Commerce Platform', 1200000),
(203, 'Payroll Automation', 500000),
(204, 'Cyber Security System', 950000),
(205, 'Mobile Application', 700000),
(206, 'Data Analytics', 900000),
(207, 'Cloud Migration', 1100000),
(208, 'Research Portal', 650000);

INSERT INTO Employee (EmpID, EmpName, Salary, DeptID, ProjectID) VALUES
(1,'Aarav Sharma',72000,101,201),
(2,'Priya Singh',65000,101,202),
(3,'Rohan Verma',58000,101,204),
(4,'Ananya Gupta',61000,101,206),
(5,'Kunal Mehta',55000,101,207),
(6,'Neha Kapoor',48000,102,203),
(7,'Rahul Yadav',52000,102,203),
(8,'Sneha Jain',60000,102,205),
(9,'Amit Kumar',45000,102,208),
(10,'Ishita Roy',57000,102,201),
(11,'Vikas Gupta',68000,103,206),
(12,'Simran Kaur',62000,103,202),
(13,'Aditya Mishra',59000,103,207),
(14,'Pooja Agarwal',51000,103,203),
(15,'Mohit Tiwari',73000,103,204),
(16,'Nisha Sharma',56000,104,205),
(17,'Arjun Singh',49000,104,201),
(18,'Riya Malhotra',63000,104,202),
(19,'Varun Saxena',54000,104,208),
(20,'Tanya Bansal',67000,104,206),
(21,'Dev Patel',75000,105,204),
(22,'Meera Joshi',66000,105,206),
(23,'Sahil Khan',58000,105,207),
(24,'Kavya Nair',70000,105,208),
(25,'Manish Jain',53000,105,201),
(26,'Isha Verma',46000,101,205),
(27,'Yash Thakur',50000,102,207),
(28,'Aditi Sinha',64000,103,208),
(29,'Harsh Vardhan',57000,104,204),
(30,'Diya Agarwal',69000,105,202);

SELECT *
FROM Employee
WHERE Salary > 60000;

SELECT EmpName, Salary
FROM Employee;

SELECT COUNT(*) AS TotalEmployees,
SUM(Salary) AS TotalSalary,
AVG(Salary) AS AverageSalary,
MIN(Salary) AS MinimumSalary,
MAX(Salary) AS MaximumSalary
FROM Employee;

SELECT DeptID, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY DeptID;

SELECT DeptID, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY DeptID;

SELECT DeptID, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY DeptID
HAVING AVG(Salary) > 60000;

SELECT EmpName, Salary,
CASE
WHEN Salary >= 65000 THEN 'High'
WHEN Salary >= 55000 THEN 'Medium'
ELSE 'Low'
END AS SalaryCategory
FROM Employee;

SELECT EmpName, Salary
FROM Employee
ORDER BY Salary DESC;


SELECT E.EmpName, D.DeptName
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID;

SELECT E.EmpName, D.DeptName
FROM Employee E
LEFT JOIN Department D
ON E.DeptID = D.DeptID;

SELECT E1.EmpName AS Employee1,
       E1.Salary AS Salary1,
       E2.EmpName AS Employee2,
       E2.Salary AS Salary2
FROM Employee E1
JOIN Employee E2
ON E1.Salary > E2.Salary;

SELECT E.EmpName,
       E.Salary,
       E.DeptID
FROM Employee E
WHERE E.Salary > (
    SELECT AVG(E2.Salary)
    FROM Employee E2
    WHERE E2.DeptID = E.DeptID
);

SELECT D.DeptID,
       D.DeptName
FROM Department D
WHERE EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.DeptID = D.DeptID
);

SELECT D.DeptID,
       D.DeptName
FROM Department D
WHERE EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.DeptID = D.DeptID
);

SELECT D.DeptID,
       D.DeptName
FROM Department D
WHERE EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.DeptID = D.DeptID
)
AND EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.DeptID = D.DeptID
    AND E.Salary > 70000
);

SELECT D.DeptID,
       D.DeptName
FROM Department D
WHERE EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.DeptID = D.DeptID
)
AND NOT EXISTS (
    SELECT 1
    FROM Employee E
    WHERE E.DeptID = D.DeptID
    AND E.Salary > 70000
);

EXPLAIN
SELECT E.EmpName, D.DeptName
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID;

EXPLAIN
SELECT E.EmpName, D.DeptName
FROM Employee E
LEFT JOIN Department D
ON E.DeptID = D.DeptID;

EXPLAIN
SELECT E.EmpName,
       D.DeptName,
       P.ProjectName
FROM Employee E
INNER JOIN Department D
ON E.DeptID = D.DeptID
INNER JOIN Project P
ON E.ProjectID = P.ProjectID;



ALTER TABLE Employee
ADD ManagerID INT NULL;

ALTER TABLE Employee
ADD CONSTRAINT fk_manager
FOREIGN KEY (ManagerID) REFERENCES Employee(EmpID);

UPDATE Employee
SET ManagerID = CASE
    WHEN EmpID IN (1, 6, 11, 16, 21) THEN NULL
    WHEN EmpID BETWEEN 2 AND 5 THEN 1
    WHEN EmpID BETWEEN 7 AND 10 THEN 6
    WHEN EmpID BETWEEN 12 AND 15 THEN 11
    WHEN EmpID BETWEEN 17 AND 20 THEN 16
    WHEN EmpID BETWEEN 22 AND 25 THEN 21
    WHEN EmpID = 26 THEN 1
    WHEN EmpID = 27 THEN 6
    WHEN EmpID = 28 THEN 11
    WHEN EmpID = 29 THEN 16
    WHEN EmpID = 30 THEN 21
END;

SELECT EmpID, EmpName, ManagerID
FROM Employee
ORDER BY EmpID;

CREATE VIEW DepartmentSalarySummary AS
SELECT DeptID,
       COUNT(*) AS TotalEmployees,
       SUM(Salary) AS TotalSalary,
       AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY DeptID;

SELECT * FROM DepartmentSalarySummary;

CREATE VIEW EmployeeHierarchy AS
SELECT E.EmpID,
       E.EmpName,
       E.ManagerID,
       M.EmpName AS ManagerName
FROM Employee E
LEFT JOIN Employee M
ON E.ManagerID = M.EmpID;

SELECT *
FROM EmployeeHierarchy
ORDER BY EmpID;

CREATE VIEW EmployeeSalaryView AS
SELECT EmpID, EmpName, Salary
FROM Employee;

UPDATE EmployeeSalaryView
SET Salary = Salary + 1000
WHERE EmpID = 2;

UPDATE DepartmentSalarySummary
SET AverageSalary = AverageSalary + 1000
WHERE DeptID = 101;

WITH RECURSIVE EmployeeChain AS (
    SELECT
        EmpID, EmpName, ManagerID,0 AS Level
    FROM Employee
    WHERE ManagerID IS NULL
 UNION ALL
 SELECT  E.EmpID,  E.EmpName, E.ManagerID, EC.Level + 1
    FROM Employee E
    INNER JOIN EmployeeChain EC ON E.ManagerID = EC.EmpID
)
SELECT
    EmpID, EmpName, ManagerID, Level
FROM EmployeeChain
ORDER BY Level, EmpID;

WITH RECURSIVE EmployeeChain AS (
    SELECT EmpID, EmpName, ManagerID,
        CAST(EmpName AS CHAR(500)) AS ReportingChain
    FROM Employee WHERE ManagerID IS NULL
UNION ALL
SELECT E.EmpID, E.EmpName, E.ManagerID,
        CONCAT(EC.ReportingChain, ' -> ', E.EmpName)
    FROM Employee E
    INNER JOIN EmployeeChain EC
    ON E.ManagerID = EC.EmpID
)
SELECT EmpID, EmpName, ManagerID, ReportingChain
FROM EmployeeChain
ORDER BY EmpID;

CREATE TABLE SalaryAudit (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    EmpID INT NOT NULL,
    OldSalary DECIMAL(10,2),
    NewSalary DECIMAL(10,2),
    ChangedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER ValidateEmployeeSalary
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
    IF NEW.Salary <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary must be greater than zero';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER ValidateSalaryUpdate
BEFORE UPDATE ON Employee
FOR EACH ROW
BEGIN
    IF NEW.Salary <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary must be greater than zero';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER SalaryAuditTrigger
AFTER UPDATE ON Employee
FOR EACH ROW
BEGIN
    IF OLD.Salary <> NEW.Salary THEN
        INSERT INTO SalaryAudit
        (EmpID, OldSalary, NewSalary)
        VALUES
        (NEW.EmpID, OLD.Salary, NEW.Salary);
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE transfer_employee(
    IN emp_id INT,
    IN new_dept_id INT
)
BEGIN
    DECLARE emp_count INT DEFAULT 0;
    DECLARE dept_count INT DEFAULT 0;

    SELECT COUNT(*)
    INTO emp_count
    FROM Employee
    WHERE EmpID = emp_id;

    SELECT COUNT(*)
    INTO dept_count
    FROM Department
    WHERE DeptID = new_dept_id;

    IF emp_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Employee does not exist';

    ELSEIF dept_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Department does not exist';

    ELSE
        UPDATE Employee
        SET DeptID = new_dept_id
        WHERE EmpID = emp_id;
    END IF;
END //

DELIMITER ; 

SELECT EmpID, EmpName, DeptID
FROM Employee
WHERE EmpID = 2;

CALL transfer_employee(2, 103);

SELECT EmpID, EmpName, DeptID
FROM Employee
WHERE EmpID = 2;

CALL transfer_employee(999, 103);

CALL transfer_employee(2, 999);

INSERT INTO Employee
(EmpID, EmpName, Salary, DeptID, ProjectID)
VALUES
(101, 'Test Employee', -5000, 101, 201);

UPDATE Employee
SET Salary = -1000
WHERE EmpID = 2;

UPDATE Employee
SET Salary = Salary + 2000
WHERE EmpID = 2;

SELECT *
FROM SalaryAudit;



CREATE TABLE Sales_UNF (
    OrderID INT,
    OrderDate DATE,
    CustomerID INT,
    CustomerName VARCHAR(50),
    ProductID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    SalespersonID INT,
    SalespersonName VARCHAR(50)
);


INSERT INTO Sales_UNF VALUES
(1,'2026-01-10',101,'Aman',201,'Laptop',1,50000,301,'Rahul'),
(1,'2026-01-10',101,'Aman',202,'Mouse',2,500,301,'Rahul'),
(2,'2026-01-11',102,'Priya',203,'Keyboard',1,1500,302,'Neha'),
(3,'2026-01-12',103,'Rohan',201,'Laptop',1,50000,301,'Rahul'),
(4,'2026-01-13',101,'Aman',203,'Keyboard',2,1500,303,'Amit'),
(5,'2026-01-14',104,'Sneha',202,'Mouse',1,500,302,'Neha');

SELECT * FROM Sales_UNF;


CREATE TABLE Sales_1NF (
    OrderID INT,
    OrderDate DATE,
    CustomerID INT,
    CustomerName VARCHAR(50),
    ProductID INT,
    ProductName VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    SalespersonID INT,
    SalespersonName VARCHAR(50),
    PRIMARY KEY (OrderID, ProductID)
);

INSERT INTO Sales_1NF
SELECT * FROM Sales_UNF;

SELECT * FROM Sales_1NF;

CREATE TABLE Orders_2NF (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    CustomerName VARCHAR(50),
    SalespersonID INT,
    SalespersonName VARCHAR(50)
);

CREATE TABLE Products_2NF (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    UnitPrice DECIMAL(10,2)
);

CREATE TABLE OrderDetails_2NF (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);

INSERT INTO Orders_2NF
SELECT DISTINCT OrderID, OrderDate, CustomerID,
CustomerName, SalespersonID, SalespersonName
FROM Sales_1NF;

INSERT INTO Products_2NF
SELECT DISTINCT ProductID, ProductName, UnitPrice
FROM Sales_1NF;

INSERT INTO OrderDetails_2NF
SELECT OrderID, ProductID, Quantity
FROM Sales_1NF;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Salespersons (
    SalespersonID INT PRIMARY KEY,
    SalespersonName VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    SalespersonID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES Salespersons(SalespersonID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    UnitPrice DECIMAL(10,2)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers
SELECT DISTINCT CustomerID, CustomerName
FROM Sales_1NF;

INSERT INTO Salespersons
SELECT DISTINCT SalespersonID, SalespersonName
FROM Sales_1NF;

INSERT INTO Orders
SELECT DISTINCT OrderID, OrderDate, CustomerID, SalespersonID
FROM Sales_1NF;

INSERT INTO Products
SELECT DISTINCT ProductID, ProductName, UnitPrice
FROM Sales_1NF;

INSERT INTO OrderDetails
SELECT OrderID, ProductID, Quantity
FROM Sales_1NF;

SELECT * FROM Customers;
SELECT * FROM Salespersons;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM OrderDetails;

SELECT O.OrderID, O.OrderDate,
C.CustomerName, P.ProductName,
OD.Quantity, P.UnitPrice,
S.SalespersonName
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN Salespersons S ON O.SalespersonID = S.SalespersonID
JOIN OrderDetails OD ON O.OrderID = OD.OrderID
JOIN Products P ON OD.ProductID = P.ProductID;

SELECT CustomerID, COUNT(DISTINCT CustomerName)
FROM Customers
GROUP BY CustomerID
HAVING COUNT(DISTINCT CustomerName) > 1;

SELECT ProductID, COUNT(DISTINCT ProductName)
FROM Products
GROUP BY ProductID
HAVING COUNT(DISTINCT ProductName) > 1;

SELECT SalespersonID, COUNT(DISTINCT SalespersonName)
FROM Salespersons
GROUP BY SalespersonID
HAVING COUNT(DISTINCT SalespersonName) > 1;

SHOW KEYS FROM Customers;
SHOW KEYS FROM Salespersons;
SHOW KEYS FROM Orders;
SHOW KEYS FROM Products;
SHOW KEYS FROM OrderDetails;

SELECT * FROM Customers;

SELECT CustomerID
FROM Customers
GROUP BY CustomerID
HAVING COUNT(*) > 1;
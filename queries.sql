-- 4. queries

--4.1
SELECT * FROM Company
--4.2
SELECT IdEmployee,FirstName,LastName,Email,Phone,Salary FROM Employees
-- 4.3
SELECT * FROM Projects WHERE FinishedOn < DeadLine
--4.4
SELECT * FROM Projects WHERE GETDATE() > StartDate
-- 4.5
SELECT IdEmployee,FirstName,LastName,Email,Phone,Salary FROM Employees WHERE Salary > 10000
-- 4.6
SELECT Employees.FirstName,Employees.LastName,Company.Name FROM Employees INNER JOIN Company ON Employees.IdCompany=Company.IdCompany AND Company.Name='ATOZ'
-- 4.7
SELECT Employees.FirstName,Employees.LastName,Company.Name FROM Employees INNER JOIN Company ON Employees.IdCompany=Company.IdCompany AND Company.Name!='Disnei'
-- 4.8
SELECT Employees.FirstName,Employees.LastName,Company.Name FROM Employees INNER JOIN Company ON Employees.IdCompany=Company.IdCompany ORDER BY Company.Name,Employees.LastName
-- 4.9
SELECT Employees.FirstName,Employees.LastName,Projects.Name FROM Employees INNER JOIN Pivote ON Employees.IdEmployee=Pivote.IdEmployee INNER JOIN Projects 
ON Projects.IdProject=Pivote.IdProject AND GETDATE()< Projects.FinishedOn
-- 4.10
SELECT Employees.FirstName,Employees.LastName,Projects.Name,Status.Name
FROM Employees INNER JOIN Pivote ON Employees.IdEmployee=Pivote.IdEmployee INNER JOIN Projects 
ON Projects.IdProject=Pivote.IdProject INNER JOIN Status ON Projects.StatusId=Status.IdStatus
WHERE Status.Name !='Pendiente' AND Status.Name!='En proceso'



-- 2. relate_tables

-- 2.1
ALTER TABLE Employees
ADD IdCompany INT NOT NULL

ALTER TABLE Employees
ADD CONSTRAINT FK_CompanyID FOREIGN KEY (IdCompany)
REFERENCES Company (IdCompany)
ON DELETE CASCADE
ON UPDATE CASCADE

-- 2.2
CREATE TABLE Pivote
(IdEmployee int NOT NULL,
IdProject int NOT NULL)

ALTER TABLE Pivote
ADD CONSTRAINT FK_Employee FOREIGN KEY (IdEmployee)
REFERENCES Employees(IdEmployee)

ALTER TABLE Pivote
ADD CONSTRAINT FK_Project FOREIGN KEY (IdProject)
REFERENCES Projects(IdProject)

ALTER TABLE PROJECTS 
ADD CONSTRAINT FK_PROJEC FOREIGN KEY (StatusId)
REFERENCES Status(IdStatus)

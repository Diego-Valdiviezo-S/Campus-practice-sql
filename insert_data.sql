 USE [practica-sql]

 -- 3.1
 INSERT INTO Status VALUES ('Pendiente')
 INSERT INTO Status VALUES ('En proceso')
 INSERT INTO Status VALUES ('Finalizado')
 INSERT INTO Status VALUES ('Cancelado')
 INSERT INTO Status VALUES ('En pausa')

 -- 3.2
 INSERT INTO Company VALUES('IMC', 'Greeley, Colorado(CO), 80634
2007 Ardmore Hwy')
INSERT INTO Company VALUES('ATOZ','Ardmore, Tennessee(TN), 38449
4226 Highgate Dr')
INSERT INTO Company VALUES('Disnei', 'Horn Lake, Mississippi(MS), 38637')

-- 3.3
INSERT INTO Projects VALUES('Dainler Learning','2/7/1995','2/22/2050','-',2)
INSERT INTO Projects VALUES('Provident Software','9/15/2022','2/28/2023','-',1)
INSERT INTO Projects VALUES('Data Analysis','1/31/2023','10/5/2023','-',1)
INSERT INTO Projects VALUES('SoftCentral Migration','5/2/2021','7/25/2022','1/1/2022',3)
INSERT INTO Projects VALUES('Atoz Insight','12/30/2022','10/1/2024','-',4)

-- 3.4
INSERT INTO Employees VALUES('Juan','Perez','juan@jmail.com','9991808182',9500,1) 
INSERT INTO Employees VALUES('Paco','Ochoa','paco@jmail.com','9991808183',8000,2) 
INSERT INTO Employees VALUES('Pedro','Fernandez','pedro@jmail.com','9991808184',12500,3) 
INSERT INTO Employees VALUES('Sofi','Hernandez','sofi@jmail.com','9991808185',11000,3) 
INSERT INTO Employees VALUES('Isabella','Smith','isabella@jmail.com','9991808186',9000,2) 
INSERT INTO Employees VALUES('Eduardo','Jimenez','eduardo@jmail.com','9991808187',11000,1) 
INSERT INTO Employees VALUES('Jose','Pavon','jose@jmail.com','9991808188',12000,2) 
INSERT INTO Employees VALUES('Pancho','Fernandez','pancho@jmail.com','9991808189',12500,1) 
INSERT INTO Employees VALUES('Francisco','Fernandez','francisco@jmail.com','9991808190',25000,3) 
INSERT INTO Employees VALUES('Diego','Olivarez','diego@jmail.com','9991808191',9000,1) 

INSERT INTO Pivote VALUES (1,4)
INSERT INTO Pivote VALUES (2,1)
INSERT INTO Pivote VALUES (3,3)
INSERT INTO Pivote VALUES (4,2)
INSERT INTO Pivote VALUES (5,1)
INSERT INTO Pivote VALUES (6,2)
INSERT INTO Pivote VALUES (7,3)
INSERT INTO Pivote VALUES (8,4)
INSERT INTO Pivote VALUES (9,5)
INSERT INTO Pivote VALUES (10,5)

SELECT * FROM Employees
SELECT * FROM Projects
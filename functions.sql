-- 6. Functions

-- 6.1
CREATE FUNCTION GetLastProjetIdByEmployeeName
(@NameEmployee VARCHAR(50))
RETURNS INT
AS
BEGIN
DECLARE @ProjectID VARCHAR(50)
SELECT @ProjectID = Projects.IdProject FROM Employees INNER JOIN Pivote ON Employees.IdEmployee=Pivote.IdEmployee INNER JOIN Projects 
ON Projects.IdProject=Pivote.IdProject
WHERE FirstName = @NameEmployee
Return @ProjectID
END

-- Ejecucion
DECLARE @RESULTS AS INT
SELECT @RESULTS = dbo.GetLastProjetIdByEmployeeName('Juan')
print @RESULTS

-- 6.2
CREATE FUNCTION HasAnyProject(@FirstName VARCHAR(50))
RETURNS BIT
AS
BEGIN
DECLARE
@ProjectBit AS BIT,
@ProjectNum AS INT
SELECT @ProjectNum = COUNT(Projects.IdProject)
FROM Projects
INNER JOIN Pivote ON Projects.IdProject=Pivote.IdEmployee INNER JOIN Employees
ON Pivote.IdEmployee=Employees.IdEmployee
WHERE @FirstName = Employees.FirstName
GROUP BY Employees.FirstName
IF (@ProjectNum>1)
BEGIN
SET @ProjectBit = 1
END
ELSE
BEGIN
SET @ProjectBit = 0
END
RETURN @ProjectBit
END

-- Ejecucion
DECLARE @Result INT
SELECT @Result = dbo.HasAnyProject('Jose')
PRINT @Result


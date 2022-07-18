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

DECLARE @RESULTS AS INT
SELECT @RESULTS = dbo.GetLastProjetIdByEmployeeName('Juan')
print @RESULTS

-- 6.2

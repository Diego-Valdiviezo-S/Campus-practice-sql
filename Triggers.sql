-- 5. Triggers

-- 5.1
CREATE TRIGGER DeadLines
ON Projects AFTER INSERT
AS
BEGIN
DECLARE @DeadLine DATE, @StartDate DATE
SELECT
@DeadLine=inserted.DeadLine,
@StartDate=inserted.StartDate
FROM inserted
IF (@StartDate<@DeadLine) BEGIN
PRINT 'INSERT ERRONEO, DEADLINE ANTERIOR A LA FECHA DE INICIO'
ROLLBACK TRANSACTION
END
END
--5.2
CREATE TRIGGER Date
ON Projects AFTER INSERT
AS
BEGIN
DECLARE @DeadLine DATE, @StartDate DATE
SELECT
@DeadLine=inserted.DeadLine,
@StartDate=inserted.StartDate
FROM inserted
IF (GETDATE() <@DeadLine AND GETDATE()>@StartDate) BEGIN
UPDATE Projects SET StatusId=1
END
END 
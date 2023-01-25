-- The following examples are an example of
-- creating a custom error message for error handling.

--Example 1.

BEGIN TRY
DECLARE @x INT
SELECT @x = 1/0
PRINT 'The following statement will not be executed'
END TRY
BEGIN CATCH
PRINT 'The error message is: Dividing by zero error occured ' 
END CATCH

--Example 2.
RAISERROR (N'%s %d %s',
16,
1,
N'Error number:',
454,
N'- No further action needed.')
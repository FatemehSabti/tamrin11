CREATE TRIGGER errorlogs
ON logs
AFTER DELETE , UPDATE
AS
	PRINT 'not found!';


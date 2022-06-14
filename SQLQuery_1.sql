CREATE TRIGGER insertrowlogs
ON logs
AFTER DELETE , UPDATE , INSERT
AS
DECLARE @id int
SELECT @id=id FROM logs
	INSERT INTO users(id , time , operation) VALUES (@id,CURRENT_TIMESTAMP, 'update');
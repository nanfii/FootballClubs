USE FootballClubManagement;
GO
CREATE PROCEDURE LoginProcedure
    @email VARCHAR(50),
    @password VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @userId INT;
    
    -- Check if the username and password match
    SELECT @userId = person_id
    FROM Person
    WHERE email = @email AND password = @password;
    
    -- If a matching user is found, return the user ID
    IF @userId IS NOT NULL
    BEGIN
        SELECT @userId AS 'LoginSuccessful';
    END
    ELSE
    BEGIN
        SELECT NULL AS 'LoginFailed';
    END
END

GO

EXEC LoginProcedure @email = 'username', @password = 'password';
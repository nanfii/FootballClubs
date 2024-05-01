CREATE TRIGGER trg_Player_CheckAgeLimit
ON Player
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted AS i
        INNER JOIN Person AS p ON i.person_id = p.person_id
        WHERE DATEDIFF(YEAR, p.date_of_birth, GETDATE()) < 18 OR DATEDIFF(YEAR, p.date_of_birth, GETDATE()) > 40
    )
    BEGIN
        RAISERROR ('Player age should be between 18 and 40.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
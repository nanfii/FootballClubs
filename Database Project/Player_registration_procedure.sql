CREATE PROCEDURE RegisterPlayerProcedure
    @first_name VARCHAR(255),
    @last_name VARCHAR(255),
    @email VARCHAR(255),
    @password VARCHAR(255),
    @gender VARCHAR(255),
    @date_of_birth DATE,
    @player_name VARCHAR(255),
    @player_position VARCHAR(255),
    @club_id INT,
    @height INT,
    @weight_kg INT,
    @jersey_number INT,
    @market_value REAL,
    @preferred_foot VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the email already exists
    IF EXISTS (SELECT 1 FROM Person WHERE email = @email)
    BEGIN
        SELECT 'EmailExists' AS 'RegistrationStatus';
        RETURN;
    END

    -- Insert the new person into the Person table
    INSERT INTO Person (first_name, last_name, email, password, gender, date_of_birth)
    VALUES (@first_name, @last_name, @email, @password, @gender, @date_of_birth);

    DECLARE @person_id INT;
    SET @person_id = SCOPE_IDENTITY();

    -- Insert the new player into the Player table
    INSERT INTO Player (person_id, player_name, player_position, club_id, height, weight_kg, jersey_number, market_value, preferred_foot)
    VALUES (@person_id, @player_name, @player_position, @club_id, @height, @weight_kg, @jersey_number, @market_value, @preferred_foot);

    -- Registration successful
    SELECT 'RegistrationSuccess' AS 'RegistrationStatus';
END
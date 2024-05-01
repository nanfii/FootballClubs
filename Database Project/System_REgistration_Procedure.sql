USE FootballClubManagement;

GO
CREATE PROCEDURE RegisterProcedure
    @first_name VARCHAR(255),
    @middle_name VARCHAR(255),
    @last_name VARCHAR(255),
    @email VARCHAR(255),
    @password VARCHAR(255),
    @gender VARCHAR(255),
    @age INT,
    @salary REAL,
    @date_of_joining DATE,
    @date_of_birth DATE,
    @phone_number VARCHAR(255),
    @city VARCHAR(255),
    @street VARCHAR(255),
    @house_number INT,
    @pobox VARCHAR(255)
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
    INSERT INTO Person (first_name, middle_name, last_name, email, password, gender, age, salary, date_of_joining, date_of_birth, phone_number, city, street, house_number, pobox)
    VALUES (@first_name, @middle_name, @last_name, @email, @password, @gender, @age, @salary, @date_of_joining, @date_of_birth, @phone_number, @city, @street, @house_number, @pobox);

    -- Registration successful
    SELECT 'RegistrationSuccess' AS 'RegistrationStatus';
END
GO

--USAGE

EXEC RegisterProcedure
    @first_name = 'John',
    @middle_name = NULL,
    @last_name = 'Doe',
    @email = 'john@example.com',
    @password = 'password123',
    @gender = 'Male',
    @age = 30,
    @salary = 5000.00,
    @date_of_joining = '2022-01-01',
    @date_of_birth = '1992-01-01',
    @phone_number = '1234567890',
    @city = 'New York',
    @street = 'Main Street',
    @house_number = 123,
    @pobox = '12345';
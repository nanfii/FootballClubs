USE FootballClubManagement;
GO
CREATE VIEW ClubManagerView AS
SELECT
    p.person_id,
    p.first_name,
    p.last_name,
    cm.coaching_license_number,
    cm.experience_years,
    cm.coach_category
FROM
    Person p
    INNER JOIN ClubManager cm ON p.person_id = cm.person_id;
GO
USE FootballClubManagement;

GO
CREATE VIEW ClubManagerInfoView AS 
SELECT  p.first_name, p.last_name, p.age, p.email, p.salary, p.street, p.date_of_birth, cm.club_id AS manager_club_id, cm.person_id AS pid, c.club_id, c.club_name,
cm.coach_category, cm.coaching_license_number, cm.experience_years

FROM ClubManager cm
INNER JOIN Club c ON cm.club_id = c.club_id
INNER JOIN Person p ON cm.person_id = p.person_id

GO